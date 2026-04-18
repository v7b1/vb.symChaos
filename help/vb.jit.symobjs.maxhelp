{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 3,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 35.0, 66.0, 1289.0, 762.0 ],
        "default_fontsize": 11.0,
        "gridsize": [ 10.0, 10.0 ],
        "toolbarvisible": 0,
        "boxes": [
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 24.0,
                    "id": "obj-3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 33.0, 177.0, 33.0 ],
                    "text": "vb.jit.symobjs"
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 0.4823529411764706, 0.45098039215686275, 0.23921568627450981, 1.0 ],
                    "id": "obj-19",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 18.0, 19.0, 246.0, 61.0 ],
                    "proportion": 0.5
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "jit_matrix" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 3,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 59.0, 119.0, 312.0, 378.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-62",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 50.0, 111.0, 29.5, 22.0 ],
                                    "text": "+ 1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 11.0,
                                    "id": "obj-9",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 67.0, 165.0, 48.0, 21.0 ],
                                    "text": "gate 2 1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 11.0,
                                    "id": "obj-48",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "jit_matrix", "" ],
                                    "patching_rect": [ 96.0, 208.0, 82.0, 21.0 ],
                                    "text": "jit.op @op sqrt"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-1",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 50.0, 40.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-3",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "jit_matrix" ],
                                    "patching_rect": [ 96.0, 40.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-4",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 67.0, 278.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-62", 0 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 1 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-48", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 0 ],
                                    "source": [ "obj-62", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-9", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-48", 0 ],
                                    "source": [ "obj-9", 1 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 17.0, 400.0, 64.0, 21.0 ],
                    "text": "p sqrt?"
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "live.tab",
                    "num_lines_patching": 2,
                    "num_lines_presentation": 0,
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 17.0, 338.0, 43.0, 45.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "direct", "sqrt" ],
                            "parameter_initial": [ 1.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.tab[1]",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "live.tab",
                            "parameter_type": 2,
                            "parameter_unitstyle": 9
                        }
                    },
                    "varname": "live.tab[1]"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-16",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 366.0, 387.0, 50.0, 21.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 315.0, 387.0, 49.0, 21.0 ],
                    "text": "scale $1"
                }
            },
            {
                "box": {
                    "fontname": "Verdana",
                    "fontsize": 9.0,
                    "id": "obj-46",
                    "maxclass": "newobj",
                    "numinlets": 9,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 276.0, 229.0, 134.0, 19.0 ],
                    "text": "pak 0. 0. 0. 0. 0. 0. 0. 0. 0."
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 518.0, 259.0, 54.0, 21.0 ],
                    "text": "period $1"
                }
            },
            {
                "box": {
                    "id": "obj-54",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 255.0, 29.5, 21.0 ],
                    "text": "init"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 11.0,
                    "id": "obj-21",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 121.5, 221.0, 57.0, 21.0 ],
                    "text": "iters 1000"
                }
            },
            {
                "box": {
                    "fontname": "Verdana",
                    "fontsize": 9.0,
                    "id": "obj-23",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 505.0, 257.0, 19.0, 17.0 ],
                    "text": "y"
                }
            },
            {
                "box": {
                    "fontname": "Verdana",
                    "fontsize": 9.0,
                    "id": "obj-18",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 505.0, 241.0, 19.0, 17.0 ],
                    "text": "x"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.866667, 0.866667, 0.866667, 1.0 ],
                    "fontname": "Verdana",
                    "fontsize": 9.0,
                    "format": 6,
                    "htricolor": [ 0.87, 0.82, 0.24, 1.0 ],
                    "id": "obj-25",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 460.0, 256.0, 43.0, 19.0 ],
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "tricolor": [ 0.75, 0.75, 0.75, 1.0 ],
                    "triscale": 0.9
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.866667, 0.866667, 0.866667, 1.0 ],
                    "fontname": "Verdana",
                    "fontsize": 9.0,
                    "format": 6,
                    "htricolor": [ 0.87, 0.82, 0.24, 1.0 ],
                    "id": "obj-20",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 460.0, 239.0, 43.0, 19.0 ],
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "tricolor": [ 0.75, 0.75, 0.75, 1.0 ],
                    "triscale": 0.9
                }
            },
            {
                "box": {
                    "id": "obj-27",
                    "maxclass": "preset",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "preset", "int", "preset", "int", "" ],
                    "patching_rect": [ 276.0, 85.0, 128.0, 93.25 ],
                    "preset_data": [
                        {
                            "number": 1,
                            "data": [ 5, "obj-38", "number", "int", 6, 5, "obj-25", "number", "float", 0.003000000026077, 5, "obj-20", "number", "float", 0.009999999776483, 5, "obj-39", "number", "float", 0.0, 5, "obj-43", "number", "float", 1.0, 5, "obj-40", "number", "float", 1.5, 5, "obj-41", "number", "float", 5.0, 5, "obj-42", "number", "float", -2.700000047683716 ]
                        },
                        {
                            "number": 2,
                            "data": [ 5, "obj-38", "number", "int", 7, 5, "obj-25", "number", "float", 0.003000000026077, 5, "obj-20", "number", "float", 0.009999999776483, 5, "obj-39", "number", "float", 0.0, 5, "obj-43", "number", "float", 0.166999995708466, 5, "obj-40", "number", "float", -0.100000001490116, 5, "obj-41", "number", "float", 1.0, 5, "obj-42", "number", "float", -2.079999923706055 ]
                        },
                        {
                            "number": 3,
                            "data": [ 5, "obj-38", "number", "int", 3, 5, "obj-25", "number", "float", 0.003000000026077, 5, "obj-20", "number", "float", 0.009999999776483, 5, "obj-39", "number", "float", 0.119999997317791, 5, "obj-43", "number", "float", -0.819999992847443, 5, "obj-40", "number", "float", 0.100000001490116, 5, "obj-41", "number", "float", -1.0, 5, "obj-42", "number", "float", 1.559999942779541 ]
                        },
                        {
                            "number": 4,
                            "data": [ 5, "obj-38", "number", "int", 5, 5, "obj-25", "number", "float", 0.003000000026077, 5, "obj-20", "number", "float", 0.009999999776483, 5, "obj-39", "number", "float", 0.0, 5, "obj-43", "number", "float", 1.0, 5, "obj-40", "number", "float", 0.0, 5, "obj-41", "number", "float", 1.805999994277954, 5, "obj-42", "number", "float", -1.805999994277954 ]
                        },
                        {
                            "number": 5,
                            "data": [ 5, "obj-38", "number", "int", 3, 5, "obj-25", "number", "float", 0.003000000026077, 5, "obj-20", "number", "float", 0.009999999776483, 5, "obj-39", "number", "float", 0.0, 5, "obj-43", "number", "float", -0.819999992847443, 5, "obj-40", "number", "float", 0.100000001490116, 5, "obj-41", "number", "float", -1.0, 5, "obj-42", "number", "float", 1.559999942779541 ]
                        },
                        {
                            "number": 6,
                            "data": [ 5, "obj-38", "number", "int", 3, 5, "obj-25", "number", "float", 0.003000000026077, 5, "obj-20", "number", "float", 0.009999999776483, 5, "obj-39", "number", "float", 0.0, 5, "obj-43", "number", "float", 1.0, 5, "obj-40", "number", "float", -12.0, 5, "obj-41", "number", "float", 10.0, 5, "obj-42", "number", "float", -2.180000066757202 ]
                        },
                        {
                            "number": 7,
                            "data": [ 5, "obj-38", "number", "int", 3, 5, "obj-25", "number", "float", 0.003000000026077, 5, "obj-20", "number", "float", 0.009999999776483, 5, "obj-39", "number", "float", 0.0, 5, "obj-43", "number", "float", 1.0, 5, "obj-40", "number", "float", -12.0, 5, "obj-41", "number", "float", 10.0, 5, "obj-42", "number", "float", -2.194999933242798 ]
                        },
                        {
                            "number": 8,
                            "data": [ 5, "obj-38", "number", "int", 4, 5, "obj-25", "number", "float", 0.003000000026077, 5, "obj-20", "number", "float", 0.009999999776483, 5, "obj-39", "number", "float", 0.100000001490116, 5, "obj-43", "number", "float", 1.0, 5, "obj-40", "number", "float", 0.0, 5, "obj-41", "number", "float", 2.0, 5, "obj-42", "number", "float", -1.860000014305115 ]
                        },
                        {
                            "number": 9,
                            "data": [ 5, "obj-38", "number", "int", 5, 5, "obj-25", "number", "float", 0.003000000026077, 5, "obj-20", "number", "float", 0.009999999776483, 5, "obj-39", "number", "float", 0.0, 5, "obj-43", "number", "float", 0.100000001490116, 5, "obj-40", "number", "float", 0.200000002980232, 5, "obj-41", "number", "float", 2.0, 5, "obj-42", "number", "float", -2.339999914169312 ]
                        },
                        {
                            "number": 10,
                            "data": [ 5, "obj-38", "number", "int", 5, 5, "obj-25", "number", "float", 0.003000000026077, 5, "obj-20", "number", "float", 0.009999999776483, 5, "obj-39", "number", "float", 0.0, 5, "obj-43", "number", "float", -0.5, 5, "obj-40", "number", "float", 0.0, 5, "obj-41", "number", "float", -2.0, 5, "obj-42", "number", "float", 2.599999904632568 ]
                        },
                        {
                            "number": 11,
                            "data": [ 5, "obj-38", "number", "int", 5, 5, "obj-25", "number", "float", 0.003000000026077, 5, "obj-20", "number", "float", 0.009999999776483, 5, "obj-39", "number", "float", 0.187999993562698, 5, "obj-43", "number", "float", 1.0, 5, "obj-40", "number", "float", -1.899999976158142, 5, "obj-41", "number", "float", 5.0, 5, "obj-42", "number", "float", -2.5 ]
                        },
                        {
                            "number": 12,
                            "data": [ 5, "obj-38", "number", "int", 23, 5, "obj-25", "number", "float", 0.003000000026077, 5, "obj-20", "number", "float", 0.009999999776483, 5, "obj-39", "number", "float", 0.0, 5, "obj-43", "number", "float", 0.899999976158142, 5, "obj-40", "number", "float", 0.0, 5, "obj-41", "number", "float", -2.5, 5, "obj-42", "number", "float", 2.408999919891357 ]
                        },
                        {
                            "number": 13,
                            "data": [ 5, "obj-38", "number", "int", 24, 5, "obj-25", "number", "float", 0.003000000026077, 5, "obj-20", "number", "float", 0.009999999776483, 5, "obj-39", "number", "float", 0.0, 5, "obj-43", "number", "float", 0.810000002384186, 5, "obj-40", "number", "float", -0.200000002980232, 5, "obj-41", "number", "float", -2.5, 5, "obj-42", "number", "float", 2.408999919891357 ]
                        },
                        {
                            "number": 14,
                            "data": [ 5, "obj-38", "number", "int", 9, 5, "obj-25", "number", "float", 0.003000000026077, 5, "obj-20", "number", "float", 0.009999999776483, 5, "obj-39", "number", "float", 0.0, 5, "obj-43", "number", "float", 1.0, 5, "obj-40", "number", "float", -16.790000915527344, 5, "obj-41", "number", "float", 3.0, 5, "obj-42", "number", "float", -2.049999952316284 ]
                        },
                        {
                            "number": 15,
                            "data": [ 5, "obj-38", "number", "int", 5, 5, "obj-25", "number", "float", 0.003000000026077, 5, "obj-20", "number", "float", 0.009999999776483, 5, "obj-39", "number", "float", 0.0, 5, "obj-43", "number", "float", 0.75, 5, "obj-40", "number", "float", 0.0, 5, "obj-41", "number", "float", 2.319999933242798, 5, "obj-42", "number", "float", -2.319999933242798 ]
                        },
                        {
                            "number": 16,
                            "data": [ 5, "obj-38", "number", "int", 3, 5, "obj-25", "number", "float", 0.003000000026077, 5, "obj-20", "number", "float", 0.009999999776483, 5, "obj-39", "number", "float", 0.0, 5, "obj-43", "number", "float", 0.899999976158142, 5, "obj-40", "number", "float", 0.0, 5, "obj-41", "number", "float", -2.5, 5, "obj-42", "number", "float", 2.5 ]
                        },
                        {
                            "number": 17,
                            "data": [ 5, "obj-38", "number", "int", 3, 5, "obj-25", "number", "float", 0.003000000026077, 5, "obj-20", "number", "float", 0.009999999776483, 5, "obj-39", "number", "float", 0.0, 5, "obj-43", "number", "float", -0.800000011920929, 5, "obj-40", "number", "float", 0.029999999329448, 5, "obj-41", "number", "float", -1.0, 5, "obj-42", "number", "float", 1.455000042915344 ]
                        },
                        {
                            "number": 18,
                            "data": [ 5, "obj-38", "number", "int", 16, 5, "obj-25", "number", "float", 0.003000000026077, 5, "obj-20", "number", "float", 0.009999999776483, 5, "obj-39", "number", "float", 0.0, 5, "obj-43", "number", "float", 0.899999976158142, 5, "obj-40", "number", "float", -0.100000001490116, 5, "obj-41", "number", "float", -2.5, 5, "obj-42", "number", "float", 2.390000104904175 ]
                        },
                        {
                            "number": 19,
                            "data": [ 5, "obj-38", "number", "int", 16, 5, "obj-25", "number", "float", 0.003000000026077, 5, "obj-20", "number", "float", 0.009999999776483, 5, "obj-39", "number", "float", -0.150000005960464, 5, "obj-43", "number", "float", 0.899999976158142, 5, "obj-40", "number", "float", -0.100000001490116, 5, "obj-41", "number", "float", -2.5, 5, "obj-42", "number", "float", 2.390000104904175 ]
                        },
                        {
                            "number": 21,
                            "data": [ 5, "obj-38", "number", "int", 2, 5, "obj-25", "number", "float", 0.003000000026077, 5, "obj-20", "number", "float", 0.009999999776483, 5, "obj-39", "number", "float", 0.0, 5, "obj-43", "number", "float", -0.800000011920929, 5, "obj-40", "number", "float", 0.100000001490116, 5, "obj-41", "number", "float", -1.0, 5, "obj-42", "number", "float", 1.5 ]
                        },
                        {
                            "number": 22,
                            "data": [ 5, "obj-38", "number", "int", 3, 5, "obj-25", "number", "float", 0.003000000026077, 5, "obj-20", "number", "float", 0.009999999776483, 5, "obj-39", "number", "float", 0.0, 5, "obj-43", "number", "float", -0.805000007152557, 5, "obj-40", "number", "float", 0.100000001490116, 5, "obj-41", "number", "float", -1.0, 5, "obj-42", "number", "float", 1.5 ]
                        },
                        {
                            "number": 61,
                            "data": [ 5, "obj-38", "number", "int", 5, 5, "obj-25", "number", "float", 0.003000000026077, 5, "obj-20", "number", "float", 0.009999999776483, 5, "obj-39", "number", "float", -0.370000004768372, 5, "obj-43", "number", "float", 1.0, 5, "obj-40", "number", "float", -0.119999997317791, 5, "obj-41", "number", "float", 2.0, 5, "obj-42", "number", "float", -1.799999952316284 ]
                        },
                        {
                            "number": 62,
                            "data": [ 5, "obj-38", "number", "int", 3, 5, "obj-25", "number", "float", 0.003000000026077, 5, "obj-20", "number", "float", 0.009999999776483, 5, "obj-39", "number", "float", 0.100000001490116, 5, "obj-43", "number", "float", 1.0, 5, "obj-40", "number", "float", 0.0, 5, "obj-41", "number", "float", 2.0, 5, "obj-42", "number", "float", -1.860000014305115 ]
                        },
                        {
                            "number": 63,
                            "data": [ 5, "obj-38", "number", "int", 6, 5, "obj-25", "number", "float", 0.003000000026077, 5, "obj-20", "number", "float", 0.009999999776483, 5, "obj-39", "number", "float", 0.0, 5, "obj-43", "number", "float", 1.0, 5, "obj-40", "number", "float", 0.0, 5, "obj-41", "number", "float", 1.805999994277954, 5, "obj-42", "number", "float", -1.805999994277954 ]
                        },
                        {
                            "number": 64,
                            "data": [ 5, "obj-38", "number", "int", 3, 5, "obj-25", "number", "float", 0.003000000026077, 5, "obj-20", "number", "float", 0.009999999776483, 5, "obj-39", "number", "float", 0.0, 5, "obj-43", "number", "float", -0.819999992847443, 5, "obj-40", "number", "float", 0.100000001490116, 5, "obj-41", "number", "float", -1.0, 5, "obj-42", "number", "float", 1.559999942779541 ]
                        },
                        {
                            "number": 65,
                            "data": [ 5, "obj-38", "number", "int", 3, 5, "obj-25", "number", "float", 0.003000000026077, 5, "obj-20", "number", "float", 0.009999999776483, 5, "obj-39", "number", "float", 0.0, 5, "obj-43", "number", "float", 1.0, 5, "obj-40", "number", "float", -12.0, 5, "obj-41", "number", "float", 10.210000038146973, 5, "obj-42", "number", "float", -2.244999885559082 ]
                        },
                        {
                            "number": 66,
                            "data": [ 5, "obj-38", "number", "int", 5, 5, "obj-25", "number", "float", 0.003000000026077, 5, "obj-20", "number", "float", 0.009999999776483, 5, "obj-39", "number", "float", 0.0, 5, "obj-43", "number", "float", -0.5, 5, "obj-40", "number", "float", 0.0, 5, "obj-41", "number", "float", -2.0, 5, "obj-42", "number", "float", 2.599999904632568 ]
                        },
                        {
                            "number": 67,
                            "data": [ 5, "obj-38", "number", "int", 3, 5, "obj-25", "number", "float", 0.003000000026077, 5, "obj-20", "number", "float", 0.009999999776483, 5, "obj-39", "number", "float", 0.25, 5, "obj-43", "number", "float", -0.819999992847443, 5, "obj-40", "number", "float", 0.100000001490116, 5, "obj-41", "number", "float", -1.0, 5, "obj-42", "number", "float", 1.559999942779541 ]
                        },
                        {
                            "number": 68,
                            "data": [ 5, "obj-38", "number", "int", 3, 5, "obj-25", "number", "float", 0.003000000026077, 5, "obj-20", "number", "float", 0.009999999776483, 5, "obj-39", "number", "float", 0.0, 5, "obj-43", "number", "float", -0.800000011920929, 5, "obj-40", "number", "float", 0.029999999329448, 5, "obj-41", "number", "float", -1.0, 5, "obj-42", "number", "float", 1.455000042915344 ]
                        },
                        {
                            "number": 69,
                            "data": [ 5, "obj-38", "number", "int", 7, 5, "obj-25", "number", "float", 0.003000000026077, 5, "obj-20", "number", "float", 0.009999999776483, 5, "obj-39", "number", "float", 0.0, 5, "obj-43", "number", "float", 1.0, 5, "obj-40", "number", "float", 1.5, 5, "obj-41", "number", "float", 5.0, 5, "obj-42", "number", "float", -2.700000047683716 ]
                        },
                        {
                            "number": 70,
                            "data": [ 5, "obj-38", "number", "int", 5, 5, "obj-25", "number", "float", -0.02800000086426735, 5, "obj-20", "number", "float", -0.23999999463558197, 5, "obj-39", "number", "float", 0.0, 5, "obj-43", "number", "float", 0.16699999570846558, 5, "obj-40", "number", "float", -0.23000000417232513, 5, "obj-41", "number", "float", 1.003000020980835, 5, "obj-42", "number", "float", -2.305000066757202 ]
                        }
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Verdana",
                    "fontsize": 9.0,
                    "id": "obj-32",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 516.0, 183.0, 43.0, 17.0 ],
                    "text": "nperiod"
                }
            },
            {
                "box": {
                    "fontname": "Verdana",
                    "fontsize": 9.0,
                    "id": "obj-33",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 465.0, 183.0, 39.0, 17.0 ],
                    "text": "omega"
                }
            },
            {
                "box": {
                    "fontname": "Verdana",
                    "fontsize": 9.0,
                    "id": "obj-34",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 417.0, 183.0, 42.0, 17.0 ],
                    "text": "gamma"
                }
            },
            {
                "box": {
                    "fontname": "Verdana",
                    "fontsize": 9.0,
                    "id": "obj-35",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 377.0, 183.0, 28.0, 17.0 ],
                    "text": "beta"
                }
            },
            {
                "box": {
                    "fontname": "Verdana",
                    "fontsize": 9.0,
                    "id": "obj-36",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 329.0, 183.0, 33.0, 17.0 ],
                    "text": "alpha"
                }
            },
            {
                "box": {
                    "id": "obj-37",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 226.0, 188.5, 36.0, 36.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.866667, 0.866667, 0.866667, 1.0 ],
                    "fontname": "Verdana",
                    "fontsize": 9.0,
                    "htricolor": [ 0.87, 0.82, 0.24, 1.0 ],
                    "id": "obj-38",
                    "maxclass": "number",
                    "minimum": 1,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 518.0, 197.0, 38.0, 19.0 ],
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "tricolor": [ 0.75, 0.75, 0.75, 1.0 ],
                    "triscale": 0.9
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.866667, 0.866667, 0.866667, 1.0 ],
                    "fontname": "Verdana",
                    "fontsize": 9.0,
                    "format": 6,
                    "htricolor": [ 0.87, 0.82, 0.24, 1.0 ],
                    "id": "obj-39",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 460.0, 197.0, 45.0, 19.0 ],
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "tricolor": [ 0.75, 0.75, 0.75, 1.0 ],
                    "triscale": 0.9
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.866667, 0.866667, 0.866667, 1.0 ],
                    "fontname": "Verdana",
                    "fontsize": 9.0,
                    "format": 6,
                    "htricolor": [ 0.87, 0.82, 0.24, 1.0 ],
                    "id": "obj-40",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 368.0, 197.0, 45.0, 19.0 ],
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "tricolor": [ 0.75, 0.75, 0.75, 1.0 ],
                    "triscale": 0.9
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.866667, 0.866667, 0.866667, 1.0 ],
                    "fontname": "Verdana",
                    "fontsize": 9.0,
                    "format": 6,
                    "htricolor": [ 0.87, 0.82, 0.24, 1.0 ],
                    "id": "obj-41",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 322.0, 197.0, 45.0, 19.0 ],
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "tricolor": [ 0.75, 0.75, 0.75, 1.0 ],
                    "triscale": 0.9
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.866667, 0.866667, 0.866667, 1.0 ],
                    "fontname": "Verdana",
                    "fontsize": 9.0,
                    "format": 6,
                    "htricolor": [ 0.87, 0.82, 0.24, 1.0 ],
                    "id": "obj-42",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 276.0, 197.0, 45.0, 19.0 ],
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "tricolor": [ 0.75, 0.75, 0.75, 1.0 ],
                    "triscale": 0.9
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.866667, 0.866667, 0.866667, 1.0 ],
                    "fontname": "Verdana",
                    "fontsize": 9.0,
                    "format": 6,
                    "htricolor": [ 0.87, 0.82, 0.24, 1.0 ],
                    "id": "obj-43",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 414.0, 197.0, 45.0, 19.0 ],
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "tricolor": [ 0.75, 0.75, 0.75, 1.0 ],
                    "triscale": 0.9
                }
            },
            {
                "box": {
                    "fontname": "Verdana",
                    "fontsize": 9.0,
                    "id": "obj-56",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 276.0, 183.0, 42.0, 17.0 ],
                    "text": "lambda"
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 62.0, 138.0, 29.0, 29.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 11.0,
                    "id": "obj-10",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 62.0, 183.0, 58.0, 21.0 ],
                    "text": "qmetro 80"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 11.0,
                    "id": "obj-2",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 121.5, 238.0, 63.0, 21.0 ],
                    "text": "iters 10000"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.776470588235294, 0.105882352941176, 0.105882352941176, 1.0 ],
                    "bgcolor2": [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0.776470588235294, 0.105882352941176, 0.105882352941176, 1.0 ],
                    "bgfillcolor_color1": [ 0.776470588235294, 0.105882352941176, 0.105882352941176, 1.0 ],
                    "bgfillcolor_color2": [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "fontname": "Arial",
                    "fontsize": 11.0,
                    "gradient": 1,
                    "id": "obj-26",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 226.0, 323.0, 65.0, 21.0 ],
                    "text": "clear, bang"
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 62.0, 214.0, 33.0, 33.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Verdana",
                    "fontsize": 13.0,
                    "id": "obj-11",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 62.0, 293.0, 145.0, 24.0 ],
                    "text": "vb.jit.symobjs target"
                }
            },
            {
                "box": {
                    "fontname": "Verdana",
                    "fontsize": 10.0,
                    "id": "obj-15",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_matrix", "" ],
                    "patching_rect": [ 62.0, 356.0, 182.0, 21.0 ],
                    "text": "jit.matrix target 1 float64 600 600"
                }
            },
            {
                "box": {
                    "id": "obj-51",
                    "maxclass": "jit.pwindow",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_matrix", "" ],
                    "patching_rect": [ 627.0, 80.0, 600.0, 600.0 ],
                    "sync": 1
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 0 ],
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 0 ],
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 1 ],
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 0 ],
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-46", 7 ],
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 0 ],
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-46", 8 ],
                    "source": [ "obj-25", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 0 ],
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "hidden": 1,
                    "order": 2,
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-25", 0 ],
                    "hidden": 1,
                    "order": 1,
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 0 ],
                    "hidden": 1,
                    "order": 0,
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-39", 0 ],
                    "hidden": 1,
                    "order": 3,
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "hidden": 1,
                    "order": 5,
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-41", 0 ],
                    "hidden": 1,
                    "order": 6,
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-42", 0 ],
                    "hidden": 1,
                    "order": 7,
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-43", 0 ],
                    "hidden": 1,
                    "order": 4,
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 0 ],
                    "order": 1,
                    "source": [ "obj-37", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-46", 0 ],
                    "order": 0,
                    "source": [ "obj-37", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "source": [ "obj-38", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-46", 4 ],
                    "source": [ "obj-39", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-46", 2 ],
                    "source": [ "obj-40", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-46", 1 ],
                    "source": [ "obj-41", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-46", 0 ],
                    "source": [ "obj-42", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-46", 3 ],
                    "source": [ "obj-43", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 0 ],
                    "source": [ "obj-46", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-51", 0 ],
                    "midpoints": [ 26.5, 431.0, 606.51953125, 431.0, 606.51953125, 70.0, 636.5, 70.0 ],
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 0 ],
                    "source": [ "obj-54", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 0 ],
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 0 ],
                    "source": [ "obj-7", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-4": [ "live.tab[1]", "live.tab", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0
    }
}