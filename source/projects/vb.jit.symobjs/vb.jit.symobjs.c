/*
 
 Symmetric Objects from "Symmetry in Chaos" by Fields & Golubitsy
 
 vboehm, 2016
 */


#include "jit.common.h"
#include "max.jit.mop.h"
#include "ext_buffer.h"
#include "ext_common.h"
#include "z_dsp.h"

//#define MIN(X, Y) (((X) < (Y)) ? (X) : (Y))
//#define MAX(X, Y) (((X) > (Y)) ? (X) : (Y))


typedef struct _myObj 
{
	t_object		ob;
	void			*obex;
	void 			*bangout;
	t_symbol		*matrix_name;
	
	double			inc, scale;
	double			x, y;
	double			gamma, omega, alpha, lambda, beta;
	long			symmetry, iterations;
	
} t_myObj;



void *myObj_new(t_symbol *s, long argc, t_atom *argv);
void myObj_free(t_myObj *self);
void myObj_assist(t_myObj *self, void *b, long m, long a, char *s);
void myObj_int(t_myObj *self, long val);
void myObj_bang(t_myObj *self);
void myObj_info(t_myObj *self);
void myObj_symmetry(t_myObj *self, long p);
void myObj_inc(t_myObj *self, double f);
void myObj_scale(t_myObj *self, double s);
void myObj_initial_pos(t_myObj *self, double x, double y);
void myObj_set_iterations(t_myObj *self, long val);
void myObj_float(t_myObj *self, double val);
void myObj_list(t_myObj *self, t_symbol *s, long argc, t_atom *argv);
//void myObj_outputmatrix(t_myObj *self);
void myObj_do_it(t_myObj *self);
void myObj_init(t_myObj *self);


static void	*myObj_class = NULL;
		 	


void ext_main(void *r)
{	
	t_class *max_class;
	
	max_class = class_new("vb.jit.symobjs", (method)myObj_new, (method)myObj_free, sizeof(t_myObj),
						  NULL, A_GIMME, 0);
	max_jit_class_obex_setup(max_class, calcoffset(t_myObj, obex));
	
	class_addmethod(max_class, (method)myObj_int, "int", A_LONG, 0);
	class_addmethod(max_class, (method)myObj_bang, "bang", 0);
	class_addmethod(max_class, (method)myObj_set_iterations, "iters", A_LONG, 0);
    class_addmethod(max_class, (method)myObj_symmetry, "symmetry", A_LONG, 0);
    class_addmethod(max_class, (method)myObj_inc, "inc", A_FLOAT, 0);
    class_addmethod(max_class, (method)myObj_scale, "scale", A_FLOAT, 0);
    class_addmethod(max_class, (method)myObj_initial_pos, "pos", A_FLOAT, A_FLOAT, 0);
	class_addmethod(max_class, (method)myObj_list, "list", A_GIMME, 0);
    class_addmethod(max_class, (method)myObj_init, "init", 0);
    class_addmethod(max_class, (method)myObj_info, "info", 0);


	max_jit_class_wrap_standard(max_class, NULL, 0);
	
	class_addmethod(max_class, (method)myObj_assist, "assist", A_CANT, 0);
	//class_addmethod(max_class, (method)myObj_notify, "notify", A_CANT, 0);
    //max_jit_class_addmethod_usurp_low(max_class, (method)myObj_outputmatrix, "outputmatrix");
    
    class_register(CLASS_BOX, max_class);
    
    
    // attr stuff
//    CLASS_ATTR_LONG(max_class, "interations", 0, t_myObj, iterations);
//    CLASS_ATTR_LABEL(max_class, "interations", 0, "number of iterations per bang");
//    CLASS_ATTR_FILTER_CLIP(max_class, "interations", 1, 999999);
////    CLASS_ATTR_ACCESSORS(max_class, "interations", NULL, (method)myObj_set_iterations);
//    CLASS_ATTR_SAVE(max_class, "interations", 0);

	
	myObj_class = max_class;
	
}


//void myObj_outputmatrix(t_myObj *self)
//{
//	long outputmode = max_jit_mop_getoutputmode(self);
//	object_post((t_object*)self, "outputmode: %ld", outputmode);
//}

void myObj_int(t_myObj *self, long val)
{
	t_atom a;
	
	jit_atom_setlong(&a,val);
	typedmess((t_object *) self,_jit_sym_list,1,&a);
}


void myObj_set_iterations(t_myObj *self, long val)
{
    self->iterations = MAX(1, val);
}


void myObj_inc(t_myObj *self, double f)
{
    // set increment
    self->inc = CLAMP(f, 0.001, 0.1);
}


void myObj_initial_pos(t_myObj *self, double x, double y)
{
    self->x = CLAMP(x, -1.0, 1.0);
    self->y = CLAMP(y, -1.0, 1.0);
}


void myObj_info(t_myObj *self) {
    
    object_post((t_object *)self, "x: %f, y: %f", self->x, self->y);

}


void myObj_list(t_myObj *self, t_symbol *s, long argc, t_atom *argv)
{
    //TODO: check number of arguments!!!
    if ((argc >= 5) && argv) {
        if( atom_gettype(argv) != A_FLOAT)
            object_post((t_object *)self, "we need floats values, sorry!");
        else {
            self->lambda = atom_getfloat(argv+0);
            self->alpha = atom_getfloat(argv+1);
            self->beta = atom_getfloat(argv+2);
            self->gamma = atom_getfloat(argv+3);
            self->omega = atom_getfloat(argv+4);
        }
    }
    else
        object_warn((t_object *)self, "we need a list of at 5 floats, sorry!");
}

void myObj_symmetry(t_myObj *self, long p)
{
    // set symmetry
    self->symmetry = MAX(1, p);
}


void myObj_init(t_myObj *self)
{
    self->x = 0.01;
    self->y = 0.003;
    
    self->symmetry = 6;
    self->lambda = -2.7;
    self->alpha = 5.0;
    self->beta = 1.5;
    self->gamma = 1.0;
    self->omega = 0.0;
    
    self->inc = 0.002;
    self->iterations = 40000;
    self->scale = 2.0;
}


void myObj_scale(t_myObj *self, double s)
{
    self->scale = (1.0/s) * 2.0;
}


void myObj_bang(t_myObj *self) {
    
    defer_low(self, (method)myObj_do_it, NULL,0, NULL);

}


#pragma mark symmetric objects ------------------

void myObj_do_it(t_myObj *self)
{
	double	inc = self->inc;
	t_jit_matrix_info minfo;
	char	*bp;
	
	void *matrix = jit_object_findregistered(self->matrix_name);
    if (matrix && jit_object_method(matrix, _jit_sym_class_jit_matrix))
    {
        long savelock = (long) jit_object_method(matrix,_jit_sym_lock,1);
        jit_object_method(matrix,_jit_sym_getinfo,&minfo);
        if (minfo.type != _jit_sym_float64) {
            jit_object_error((t_object *)self, "matrix %s must be of typ float64", self->matrix_name->s_name);
            jit_object_method(matrix,_jit_sym_lock,savelock);
            return;
        }
        // get access to jitter matrix data
        jit_object_method(matrix, _jit_sym_getdata, &bp);
        if (!bp) {
            jit_error_sym(self, _jit_sym_err_calculate);
            post("error finding bp!");
            jit_object_method(matrix, _jit_sym_lock, savelock);
            return;
        }

        double x = self->x;
        double y = self->y;
        
        double lambda = self->lambda;
        double alpha = self->alpha;
        double beta = self->beta;
        double gamma = self->gamma;
        double omega = self->omega;
        
        long symmetry = self->symmetry;
        long count = self->iterations;
        long xdim = minfo.dim[0];
        long ydim = minfo.dim[1];
        
        double scale = self->scale;

		
        // symmetric icons loop ------------------------//
        for (int k=0; k<count; k++)
        {
            double zzbar = x*x + y*y;
            double zreal = x;
            double zimag = y;
            
            for (int i=1; i<symmetry-1; i++)
            {
                double za = zreal*x - zimag*y;
                double zb = zimag*x + zreal*y;
                zreal = za;
                zimag = zb;
            }
            
            double pp = lambda + alpha * zzbar + beta * (x * zreal - y * zimag);
            
            double xnew = pp*x + gamma*zreal - omega*y;
            double ynew = pp*y - gamma*zimag + omega*x;
            
            // make sure everything stays in range -1 <--> 1
//            x = CLAMP(xnew, -1.0, 0.9999);
//            y = CLAMP(ynew, -1.0, 0.9999);
            
            x = CLAMP(xnew, -4.0, 3.999);
            y = CLAMP(ynew, -4.0, 3.999);

            
//            if(xnew >= 1.0)
//                xnew = xnew - (int)xnew;
//            else if(xnew < 0.0)
//                xnew = xnew + (int)(-xnew) + 1;
//            if(ynew >= 1.0)
//                ynew = ynew - (int)ynew;
//            else if(ynew < 0.0)
//                ynew = ynew + (int)(-ynew) + 1;
//            
//            x = xnew;
//            y = ynew;
            
            
//            long xcoord = (long)((x+1.0)*xdim*0.5);
//            long ycoord = (long)((y+1.0)*ydim*0.5);
            
            long xcoord = (long)((x+scale*0.5)*xdim / scale);
            long ycoord = (long)((y+scale*0.5)*ydim / scale);
            
            if(xcoord<xdim && xcoord >=0 && ycoord<ydim && ycoord >=0) {
                
                char *p = bp + ycoord*minfo.dimstride[1] + xcoord*minfo.dimstride[0];
                
                if (*((double *)p) < 1.0)
                    *((double *)p) += inc;
            }
            
        }
                
            
        jit_object_method(matrix, _jit_sym_lock, savelock);
        
        self->x = x;
        self->y = y;
		
    }
        
    
    else {
		post("error finding matrix!");
		jit_error_sym(self,_jit_sym_err_calculate);
	}
	

	outlet_bang(self->bangout);

}




void myObj_assist(t_myObj *self, void *b, long m, long a, char *s)
{
	if (m == 1) {
		sprintf(s, "list");
	}
	else {
		if (a == 1)
			sprintf(s, "dumpout");
		else
			sprintf(s, "bang when done");
	}
}
	
void myObj_free(t_myObj *self)
{
	//only max object, no jit object
	jit_object_free(max_jit_obex_jitob_get(self));
}



void *myObj_new(t_symbol *s, long argc, t_atom *argv)
{
	t_myObj *self;
	long attrstart;

	self = (t_myObj*)max_jit_object_alloc(myObj_class, gensym("vb_jit_symobjs"));
	if(self) {
		max_jit_obex_dumpout_set(self, outlet_new(self,0L)); //general purpose outlet(rightmost)
		self->bangout 	= outlet_new(self,0L); // after done, outputs bang
		
		//x->matrix_name = _jit_sym_nothing;
		
		self->x = 0.01;
		self->y = 0.003;
		self->symmetry = 6;
		self->lambda = -2.7;
		self->alpha = 5.0;
		self->beta = 1.5;
		self->gamma = 1.0;
		self->omega = 0.0;
		
		self->inc = 0.002;
		self->iterations = 40000;
        self->scale = 2.0;
        
		
		attrstart = max_jit_attr_args_offset(argc,argv);
		if (attrstart&&argv) {
			t_atom_long al;
			jit_atom_arg_getsym(&self->matrix_name, 0, attrstart, argv);
			
//			if (!jit_atom_arg_getlong(&al, 1, attrstart, argv)) {
//				C74_ASSERT_FITS_LONG(al);
////				self->plane = (long) al;
//			}
            
//            post("attrstart: %d", attrstart);
//            max_jit_attr_args(self, argc, argv);
		}

	}
	else {
		post("shit, something went wrong...");
	}

	return (self);
}
