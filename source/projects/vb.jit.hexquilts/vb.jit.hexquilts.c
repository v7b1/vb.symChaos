/*
 
 hexagonal Quilts from "Symmetry in Chaos" by Fields & Golubitsy
 
 vb, 2016
 */


#include "jit.common.h"
#include "max.jit.mop.h"
#include "ext_buffer.h"
#include "ext_common.h"
#include "z_dsp.h"


#define SQ3            sqrt(3.0)


typedef struct _myObj 
{
	t_object		ob;
	void			*obex;
	void 			*bangout;
	t_symbol		*matrix_name;
	
	double			inc;
	double			x, y;
	double			gamma, omega, alpha, lambda, beta, ma, shift;
	long			nperiod, iterations;
	
} t_myObj;



void *myObj_new(t_symbol *s, long argc, t_atom *argv);
void myObj_free(t_myObj *self);
void myObj_assist(t_myObj *self, void *b, long m, long a, char *s);
void myObj_int(t_myObj *self, long val);
void myObj_bang(t_myObj *self);
void myObj_info(t_myObj *self);
void myObj_period(t_myObj *self, long p);
void myObj_inc(t_myObj *self, double f);
void myObj_set_iterations(t_myObj *self, long val);
void myObj_float(t_myObj *self, double val);
void myObj_list(t_myObj *self, t_symbol *s, long argc, t_atom *argv);
//void myObj_outputmatrix(t_myObj *self);
void myObj_hexquilt(t_myObj *self);
void myObj_init(t_myObj *self);


static void	*myObj_class = NULL;
		 	


void ext_main(void *r)
{	
	t_class *max_class;
	
	max_class = class_new("vb.jit.hexquilts", (method)myObj_new, (method)myObj_free, sizeof(t_myObj),
						  NULL, A_GIMME, 0);
	max_jit_class_obex_setup(max_class, calcoffset(t_myObj, obex));
	
	class_addmethod(max_class, (method)myObj_int, "int", A_LONG, 0);
	class_addmethod(max_class, (method)myObj_bang, "bang", 0);
	class_addmethod(max_class, (method)myObj_set_iterations, "iters", A_LONG, 0);
    class_addmethod(max_class, (method)myObj_period, "period", A_LONG, 0);
    class_addmethod(max_class, (method)myObj_inc, "inc", A_FLOAT, 0);
	class_addmethod(max_class, (method)myObj_list, "list", A_GIMME, 0);
    class_addmethod(max_class, (method)myObj_init, "init", 0);
    class_addmethod(max_class, (method)myObj_info, "info", 0);


	max_jit_class_wrap_standard(max_class, NULL, 0);
	
	class_addmethod(max_class, (method)myObj_assist, "assist", A_CANT, 0);
	//class_addmethod(max_class, (method)myObj_notify, "notify", A_CANT, 0);
    //max_jit_class_addmethod_usurp_low(max_class, (method)myObj_outputmatrix, "outputmatrix");

	class_register(CLASS_BOX, max_class);
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


void myObj_period(t_myObj *self, long p)
{
    // set number of periods
    self->nperiod = MAX(1, p);
}


void myObj_inc(t_myObj *self, double f)
{
    // set number of periods
    self->inc = CLAMP(f, 0.001, 0.1);
}

void myObj_info(t_myObj *self) {
    
    object_post((t_object *)self, "x: %f, y: %f", self->x, self->y);

}



void myObj_list(t_myObj *self, t_symbol *s, long argc, t_atom *argv)
{
    //TODO: check number of arguments!!!
    if ((argc>=7) && argv) {
        if( atom_gettype(argv) != A_FLOAT)
            object_post((t_object *)self, "we need floats values, sorry!");
        else {
            self->lambda = atom_getfloat(argv+0);
            self->alpha = atom_getfloat(argv+1);
            self->beta = atom_getfloat(argv+2);
            self->gamma = atom_getfloat(argv+3);
            self->omega = atom_getfloat(argv+4);
            self->shift = atom_getfloat(argv+5);
            self->ma = atom_getfloat(argv+6);
            
            self->x = atom_getfloat(argv+7);
            self->y = atom_getfloat(argv+8);
        }
    }
    else
        object_warn((t_object *)self, "we need a list of at least 7 floats, sorry!");
}


void myObj_init(t_myObj *self)
{
    self->x = 0.01;
    self->y = 0.003;
}




void myObj_bang(t_myObj *self) {
    
    defer_low(self, (method)myObj_hexquilt, NULL,0, NULL);

}


#pragma mark hexagonal Quilts ------------

void myObj_hexquilt(t_myObj *self)
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
        double omega = self->omega;
        double beta = self->beta;
        double ma = self->ma;
        double shift = self->shift;
        double gamma = self->gamma;
        long nperiod = self->nperiod;
        long count = self->iterations;
        long xdim = minfo.dim[0];
        long ydim = minfo.dim[1];
        long pc = minfo.planecount;
		
        double xscale = xdim / nperiod;
        double yscale = ydim / nperiod;
		
		
        // setvectors -----------------------------------------------------
        double k11 = 1; double k12 = 0;
        double k21 = 0.5; double k22 = SQ3/2;
        double el11 = 1; double el12 = -1/SQ3;
        double el21 = 0; double el22 = 2/SQ3;
        double el31 = -(el11+el21); double el32 = -(el12 + el22);
        double em11 = 2*el11 + el21; double em12 = 2*el12 + el22;
        double em21 = 2*el21 + el31; double em22 = 2*el22 + el32;
        double em31 = 2*el31 + el11; double em32 = 2*el32 + el12;
        double en11 = 3*el11 + 2*el21; double en12 = 3*el12 + 2*el22;
        double en21 = 3*el21 + 2*el31; double en22 = 3*el22 + 2*el32;
        double en31 = 3*el31 + 2*el11; double en32 = 3*el32 + 2*el12;
        double enh11 = 3*el11 + el21; double enh12 = 3*el12 + el22;
        double enh21 = 3*el21 + el31; double enh22 = 3*el22 + el32;
        double enh31 = 3*el31 + el11; double enh32 = 3*el32 + el12;
        
        // vector 3 ---------------------------------------------
        double a11 = beta; double a12 = gamma;
        double a21 = (-a11 - SQ3*a12)*0.5; double a22 = (SQ3*a11 - a12)*0.5;
        double a31 = -a11 - a21; double a32 = -a12 - a22;
        double ah11 = a11; double ah12 = -a12;
        double ah21 = (-ah11 - SQ3*ah12)*0.5; double ah22 = (SQ3*ah11 - ah12)*0.5;
        double ah31 = -ah11 - ah21; double ah32 = -ah12 - ah22;
		
		
        // hexagonal quilts iterate ---------------------//
        for (int k=0; k<count; k++)
        {
            double s11 = sin(TWOPI * (el11*x + el12*y));
            double s12 = sin(TWOPI * (el21*x + el22*y));
            double s13 = sin(TWOPI * (el31*x + el32*y));
            double s21 = sin(TWOPI * (em11*x + em12*y));
            double s22 = sin(TWOPI * (em21*x + em22*y));
            double s23 = sin(TWOPI * (em31*x + em32*y));
            double s31 = sin(TWOPI * (en11*x + en12*y));
            double s32 = sin(TWOPI * (en21*x + en22*y));
            double s33 = sin(TWOPI * (en31*x + en32*y));
            double s3h1 = sin(TWOPI * (enh11*x + enh12*y));
            double s3h2 = sin(TWOPI * (enh21*x + enh22*y));
            double s3h3 = sin(TWOPI * (enh31*x + enh32*y));
            
            double sx = el11*s11 + el21*s12 + el31*s13;
            double sy = el12*s11 + el22*s12 + el32*s13;
            
            double xnew = ma*x + lambda*sx - omega*sy;
            double ynew = ma*y + lambda*sy + omega*sx;
           
            xnew += alpha * (em11*s21 + em21*s22 + em31*s23);
            ynew += alpha * (em12*s21 + em22*s22 + em32*s23);
           
            xnew += a11*s31 + a21*s32 + a31*s33;
            ynew += a12*s31 + a22*s32 + a32*s33;
           
            xnew += ah11*s3h1 + ah21*s3h2 + ah31*s3h3;
            ynew += ah12*s3h1 + ah22*s3h2 + ah32*s3h3;
           
            double by = 2*ynew / SQ3;
            double bx = xnew - by / 2;
           
           
            if(bx >= 1.0)
                bx = bx - (int)bx;
            else if(bx < 0.0)
                bx = bx + (int)(-bx) + 1;
            if(by >= 1.0)
                by = by - (int)by;
            else if(by < 0.0)
                by = by + (int)(-by) + 1;
           
            xnew = bx*k11 + by*k21;
            ynew = bx*k12 + by*k22;
            
            // ???
            //double mxnew = bx * ( ...

            x = xnew ;
            y = ynew ;
           
           
            for (long i=(-nperiod/2-1); i<=nperiod/2+1; i++)
            {
                for (int j=0; j<=nperiod; j++) {
                   
                    long xcoord = (long)((x+i*k11+j*k21)*xscale);
                    long ycoord = (long)((y+i*k12+j*k22)*yscale);
                   
                   
                    if(xcoord<xdim && xcoord>=0 && ycoord<ydim && ycoord>=0) {
                       
                        char  *p = bp + ycoord*minfo.dimstride[1] + xcoord*minfo.dimstride[0];
                        if (*((double *)p) < 1.0)
                            *((double *)p) += inc;
                    }
//                    else {
//                        object_warn((t_object*)self, "coords out of bounds! %ld, %ld", xcoord, ycoord);
//                    }
                }
            }
            
        }
                
            
        jit_object_method(matrix,_jit_sym_lock,savelock);
        
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

	self = (t_myObj*)max_jit_object_alloc(myObj_class, gensym("vb_jit_hexquilts"));
	if(self) {
		max_jit_obex_dumpout_set(self, outlet_new(self,0L)); //general purpose outlet(rightmost)
		self->bangout 	= outlet_new(self,0L); // after done, outputs bang
		
		//x->matrix_name = _jit_sym_nothing;
		
		self->x = 0.01;
		self->y = 0.003;
		self->nperiod = 4;
		self->lambda = -0.59;
		self->alpha = 0.2;
		self->beta = 0.1;
		self->gamma = -0.33;
		self->omega = 0.0;
		
		self->ma = 0;
		self->shift = 0;
		
		self->inc = 0.002;
		self->iterations = 40000;
        
		
		attrstart = max_jit_attr_args_offset(argc,argv);
		if (attrstart&&argv) {
			t_atom_long al;
			jit_atom_arg_getsym(&self->matrix_name, 0, attrstart, argv);
			
			if (!jit_atom_arg_getlong(&al, 1, attrstart, argv)) {
				C74_ASSERT_FITS_LONG(al);
//				self->plane = (long) al;
			}
		}

	}
	else {
		post("shit, something went wrong...");
	}

	return (self);
}
