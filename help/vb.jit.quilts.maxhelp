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
        "rect": [ 256.0, 66.0, 1204.0, 740.0 ],
        "default_fontsize": 11.0,
        "gridsize": [ 10.0, 10.0 ],
        "toolbarvisible": 0,
        "boxes": [
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 24.0,
                    "id": "obj-9",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 31.5, 38.0, 177.0, 33.0 ],
                    "text": "vb.jit.quilts"
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
                    "patching_rect": [ 19.5, 24.0, 246.0, 61.0 ],
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
                    "patching_rect": [ 21.0, 445.0, 64.0, 21.0 ],
                    "text": "p sqrt?"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "live.tab",
                    "num_lines_patching": 2,
                    "num_lines_presentation": 0,
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 21.0, 383.0, 43.0, 45.0 ],
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
                    "fontname": "Verdana",
                    "fontsize": 9.0,
                    "id": "obj-46",
                    "maxclass": "newobj",
                    "numinlets": 9,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 181.0, 222.0, 134.0, 19.0 ],
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
                    "patching_rect": [ 423.0, 252.0, 54.0, 21.0 ],
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
                    "patching_rect": [ 35.0, 302.0, 29.5, 21.0 ],
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
                    "patching_rect": [ 114.0, 252.0, 57.0, 21.0 ],
                    "text": "iters 1000"
                }
            },
            {
                "box": {
                    "fontname": "Verdana",
                    "fontsize": 9.0,
                    "id": "obj-12",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 412.0, 215.0, 45.0, 17.0 ],
                    "text": "shift (v)"
                }
            },
            {
                "box": {
                    "fontname": "Verdana",
                    "fontsize": 9.0,
                    "id": "obj-14",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 412.0, 237.0, 23.0, 17.0 ],
                    "text": "ma"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.866667, 0.866667, 0.866667, 1.0 ],
                    "fontname": "Verdana",
                    "fontsize": 9.0,
                    "format": 6,
                    "htricolor": [ 0.87, 0.82, 0.24, 1.0 ],
                    "id": "obj-16",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 367.0, 214.0, 43.0, 19.0 ],
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
                    "id": "obj-17",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 367.0, 235.0, 43.0, 19.0 ],
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "tricolor": [ 0.75, 0.75, 0.75, 1.0 ],
                    "triscale": 0.9
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
                    "patching_rect": [ 412.0, 281.0, 19.0, 17.0 ],
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
                    "patching_rect": [ 412.0, 265.0, 19.0, 17.0 ],
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
                    "patching_rect": [ 367.0, 280.0, 43.0, 19.0 ],
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
                    "patching_rect": [ 367.0, 263.0, 43.0, 19.0 ],
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
                    "patching_rect": [ 238.0, 107.0, 150.0, 54.0 ],
                    "preset_data": [
                        {
                            "number": 1,
                            "data": [ 5, "obj-38", "number", "int", 3, 5, "obj-25", "number", "float", 0.003000000026077, 5, "obj-20", "number", "float", 0.009999999776483, 5, "obj-17", "number", "float", 2.0, 5, "obj-16", "number", "float", 0.0, 5, "obj-39", "number", "float", 0.0, 5, "obj-43", "number", "float", -0.330000013113022, 5, "obj-40", "number", "float", 0.100000001490116, 5, "obj-41", "number", "float", 0.200000002980232, 5, "obj-42", "number", "float", -0.589999973773956 ]
                        },
                        {
                            "number": 2,
                            "data": [ 5, "obj-38", "number", "int", 3, 5, "obj-25", "number", "float", 0.003000000026077, 5, "obj-20", "number", "float", 0.009999999776483, 5, "obj-17", "number", "float", 0.0, 5, "obj-16", "number", "float", 0.5, 5, "obj-39", "number", "float", 0.0, 5, "obj-43", "number", "float", -0.270000010728836, 5, "obj-40", "number", "float", 0.100000001490116, 5, "obj-41", "number", "float", 0.200000002980232, 5, "obj-42", "number", "float", -0.589999973773956 ]
                        },
                        {
                            "number": 3,
                            "data": [ 5, "obj-38", "number", "int", 3, 5, "obj-25", "number", "float", 0.003000000026077, 5, "obj-20", "number", "float", 0.009999999776483, 5, "obj-17", "number", "float", 0.0, 5, "obj-16", "number", "float", 0.0, 5, "obj-39", "number", "float", 0.0, 5, "obj-43", "number", "float", -0.25, 5, "obj-40", "number", "float", 0.100000001490116, 5, "obj-41", "number", "float", -0.100000001490116, 5, "obj-42", "number", "float", -0.200000002980232 ]
                        },
                        {
                            "number": 4,
                            "data": [ 5, "obj-38", "number", "int", 2, 5, "obj-16", "number", "float", 0.0, 5, "obj-17", "number", "float", 1.0, 5, "obj-25", "number", "float", 0.003000000026077, 5, "obj-20", "number", "float", 0.009999999776483, 5, "obj-39", "number", "float", 0.0, 5, "obj-43", "number", "float", 0.300000011920929, 5, "obj-40", "number", "float", 0.200000002980232, 5, "obj-41", "number", "float", -0.300000011920929, 5, "obj-42", "number", "float", 0.25 ]
                        },
                        {
                            "number": 5,
                            "data": [ 5, "obj-38", "number", "int", 3, 5, "obj-25", "number", "float", 0.003000000026077, 5, "obj-20", "number", "float", 0.009999999776483, 5, "obj-17", "number", "float", -1.0, 5, "obj-16", "number", "float", 0.0, 5, "obj-39", "number", "float", 0.0, 5, "obj-43", "number", "float", -0.239999994635582, 5, "obj-40", "number", "float", 0.050000000745058, 5, "obj-41", "number", "float", 0.25, 5, "obj-42", "number", "float", -0.280000001192093 ]
                        },
                        {
                            "number": 6,
                            "data": [ 5, "obj-38", "number", "int", 2, 5, "obj-16", "number", "float", 0.5, 5, "obj-17", "number", "float", 1.0, 5, "obj-25", "number", "float", 0.003000000026077, 5, "obj-20", "number", "float", 0.009999999776483, 5, "obj-39", "number", "float", 0.0, 5, "obj-43", "number", "float", -0.140000000596046, 5, "obj-40", "number", "float", 0.180000007152557, 5, "obj-41", "number", "float", -0.360000014305115, 5, "obj-42", "number", "float", -0.119999997317791 ]
                        },
                        {
                            "number": 7,
                            "data": [ 5, "obj-38", "number", "int", 3, 5, "obj-25", "number", "float", 0.003000000026077, 5, "obj-20", "number", "float", 0.009999999776483, 5, "obj-17", "number", "float", -1.0, 5, "obj-16", "number", "float", 0.0, 5, "obj-39", "number", "float", 0.0, 5, "obj-43", "number", "float", 0.389999985694885, 5, "obj-40", "number", "float", 0.100000001490116, 5, "obj-41", "number", "float", 0.200000002980232, 5, "obj-42", "number", "float", 0.100000001490116 ]
                        },
                        {
                            "number": 8,
                            "data": [ 5, "obj-38", "number", "int", 3, 5, "obj-25", "number", "float", 0.003000000026077, 5, "obj-20", "number", "float", 0.009999999776483, 5, "obj-17", "number", "float", 0.0, 5, "obj-16", "number", "float", 0.5, 5, "obj-39", "number", "float", 0.0, 5, "obj-43", "number", "float", -0.200000002980232, 5, "obj-40", "number", "float", 0.03999999910593, 5, "obj-41", "number", "float", 0.200000002980232, 5, "obj-42", "number", "float", -0.58899998664856 ]
                        },
                        {
                            "number": 9,
                            "data": [ 5, "obj-38", "number", "int", 3, 5, "obj-25", "number", "float", 0.003000000026077, 5, "obj-20", "number", "float", 0.009999999776483, 5, "obj-17", "number", "float", 0.0, 5, "obj-16", "number", "float", 0.5, 5, "obj-39", "number", "float", 0.0, 5, "obj-43", "number", "float", -0.050000000745058, 5, "obj-40", "number", "float", 0.449999988079071, 5, "obj-41", "number", "float", 0.079999998211861, 5, "obj-42", "number", "float", -0.280000001192093 ]
                        },
                        {
                            "number": 10,
                            "data": [ 5, "obj-38", "number", "int", 3, 5, "obj-25", "number", "float", 0.003000000026077, 5, "obj-20", "number", "float", 0.009999999776483, 5, "obj-17", "number", "float", 2.0, 5, "obj-16", "number", "float", 0.0, 5, "obj-39", "number", "float", 0.0, 5, "obj-43", "number", "float", 0.300000011920929, 5, "obj-40", "number", "float", 0.200000002980232, 5, "obj-41", "number", "float", 0.200000002980232, 5, "obj-42", "number", "float", -0.589999973773956 ]
                        },
                        {
                            "number": 11,
                            "data": [ 5, "obj-38", "number", "int", 3, 5, "obj-25", "number", "float", 0.003000000026077, 5, "obj-20", "number", "float", 0.009999999776483, 5, "obj-17", "number", "float", -1.0, 5, "obj-16", "number", "float", 0.5, 5, "obj-39", "number", "float", 0.0, 5, "obj-43", "number", "float", -0.239999994635582, 5, "obj-40", "number", "float", 0.050000000745058, 5, "obj-41", "number", "float", 0.25, 5, "obj-42", "number", "float", -0.280000001192093 ]
                        },
                        {
                            "number": 12,
                            "data": [ 5, "obj-38", "number", "int", 2, 5, "obj-16", "number", "float", 0.5, 5, "obj-17", "number", "float", 2.0, 5, "obj-25", "number", "float", 0.003000000026077, 5, "obj-20", "number", "float", 0.009999999776483, 5, "obj-39", "number", "float", 0.070000000298023, 5, "obj-43", "number", "float", -0.059000000357628, 5, "obj-40", "number", "float", 0.189999997615814, 5, "obj-41", "number", "float", -0.259999990463257, 5, "obj-42", "number", "float", -0.109999999403954 ]
                        },
                        {
                            "number": 13,
                            "data": [ 5, "obj-38", "number", "int", 3, 5, "obj-25", "number", "float", 0.334, 5, "obj-39", "number", "float", 0.0, 5, "obj-43", "number", "float", -0.33, 5, "obj-40", "number", "float", 0.1, 5, "obj-41", "number", "float", 0.2, 5, "obj-42", "number", "float", -0.59 ]
                        },
                        {
                            "number": 14,
                            "data": [ 5, "obj-38", "number", "int", 3, 5, "obj-25", "number", "float", 0.334, 5, "obj-39", "number", "float", 0.0, 5, "obj-43", "number", "float", -0.33, 5, "obj-40", "number", "float", 0.1, 5, "obj-41", "number", "float", 0.2, 5, "obj-42", "number", "float", -0.59 ]
                        },
                        {
                            "number": 15,
                            "data": [ 5, "obj-38", "number", "int", 3, 5, "obj-25", "number", "float", 0.334, 5, "obj-39", "number", "float", 0.0, 5, "obj-43", "number", "float", -0.27, 5, "obj-40", "number", "float", 0.1, 5, "obj-41", "number", "float", 0.2, 5, "obj-42", "number", "float", -0.59 ]
                        },
                        {
                            "number": 16,
                            "data": [ 5, "obj-38", "number", "int", 3, 5, "obj-25", "number", "float", 0.334, 5, "obj-39", "number", "float", 0.0, 5, "obj-43", "number", "float", -0.25, 5, "obj-40", "number", "float", 0.1, 5, "obj-41", "number", "float", -0.1, 5, "obj-42", "number", "float", -0.2 ]
                        },
                        {
                            "number": 17,
                            "data": [ 5, "obj-38", "number", "int", 3, 5, "obj-25", "number", "float", 0.334, 5, "obj-39", "number", "float", 0.0, 5, "obj-43", "number", "float", 0.3, 5, "obj-40", "number", "float", 0.2, 5, "obj-41", "number", "float", -0.3, 5, "obj-42", "number", "float", 0.25 ]
                        },
                        {
                            "number": 40,
                            "data": [ 5, "obj-38", "number", "int", 3, 5, "obj-16", "number", "float", 0.39, 5, "obj-17", "number", "float", 2.0, 5, "obj-25", "number", "float", 0.334, 5, "obj-20", "number", "float", 0.1, 5, "obj-39", "number", "float", 0.07, 5, "obj-43", "number", "float", -0.059, 5, "obj-40", "number", "float", 0.19, 5, "obj-41", "number", "float", -0.26, 5, "obj-42", "number", "float", -1.1 ]
                        },
                        {
                            "number": 41,
                            "data": [ 5, "obj-38", "number", "int", 3, 5, "obj-16", "number", "float", 0.39, 5, "obj-17", "number", "float", 2.0, 5, "obj-25", "number", "float", 0.334, 5, "obj-20", "number", "float", 0.1, 5, "obj-39", "number", "float", 0.0, 5, "obj-43", "number", "float", -0.059, 5, "obj-40", "number", "float", 0.19, 5, "obj-41", "number", "float", -0.26, 5, "obj-42", "number", "float", -1.1 ]
                        },
                        {
                            "number": 42,
                            "data": [ 5, "obj-38", "number", "int", 3, 5, "obj-25", "number", "float", 0.003000000026077, 5, "obj-20", "number", "float", 0.009999999776483, 5, "obj-17", "number", "float", 1.690000057220459, 5, "obj-16", "number", "float", 0.389999985694885, 5, "obj-39", "number", "float", 0.600000023841858, 5, "obj-43", "number", "float", -0.083999998867512, 5, "obj-40", "number", "float", 0.238000005483627, 5, "obj-41", "number", "float", -0.490000009536743, 5, "obj-42", "number", "float", -0.740000009536743 ]
                        },
                        {
                            "number": 45,
                            "data": [ 5, "obj-38", "number", "int", 2, 5, "obj-25", "number", "float", 0.003000000026077032, 5, "obj-20", "number", "float", 0.009999999776482582, 5, "obj-17", "number", "float", 2.0, 5, "obj-16", "number", "float", 0.5, 5, "obj-39", "number", "float", 0.07000000029802322, 5, "obj-43", "number", "float", -0.5899999737739563, 5, "obj-40", "number", "float", 0.1899999976158142, 5, "obj-41", "number", "float", -0.25999999046325684, 5, "obj-42", "number", "float", -0.10999999940395355 ]
                        },
                        {
                            "number": 46,
                            "data": [ 5, "obj-38", "number", "int", 2, 5, "obj-25", "number", "float", 0.003000000026077032, 5, "obj-20", "number", "float", 0.009999999776482582, 5, "obj-17", "number", "float", 2.0, 5, "obj-16", "number", "float", 0.5, 5, "obj-39", "number", "float", 0.2199999988079071, 5, "obj-43", "number", "float", -0.05900000035762787, 5, "obj-40", "number", "float", 0.1899999976158142, 5, "obj-41", "number", "float", 1.4429999589920044, 5, "obj-42", "number", "float", 0.029999999329447746 ]
                        },
                        {
                            "number": 47,
                            "data": [ 5, "obj-38", "number", "int", 2, 5, "obj-25", "number", "float", 0.003000000026077032, 5, "obj-20", "number", "float", 0.009999999776482582, 5, "obj-17", "number", "float", 2.0, 5, "obj-16", "number", "float", 0.5, 5, "obj-39", "number", "float", 0.2199999988079071, 5, "obj-43", "number", "float", -0.05900000035762787, 5, "obj-40", "number", "float", 0.1899999976158142, 5, "obj-41", "number", "float", -0.25999999046325684, 5, "obj-42", "number", "float", -0.10999999940395355 ]
                        },
                        {
                            "number": 48,
                            "data": [ 5, "obj-38", "number", "int", 2, 5, "obj-25", "number", "float", 0.003000000026077032, 5, "obj-20", "number", "float", 0.009999999776482582, 5, "obj-17", "number", "float", 2.0, 5, "obj-16", "number", "float", 0.5, 5, "obj-39", "number", "float", 0.07000000029802322, 5, "obj-43", "number", "float", -0.05900000035762787, 5, "obj-40", "number", "float", 0.1899999976158142, 5, "obj-41", "number", "float", -0.25999999046325684, 5, "obj-42", "number", "float", -0.10999999940395355 ]
                        },
                        {
                            "number": 79,
                            "data": [ 5, "obj-38", "number", "int", 3, 5, "obj-16", "number", "float", 0.0, 5, "obj-17", "number", "float", 2.0, 5, "obj-25", "number", "float", 0.33, 5, "obj-20", "number", "float", 0.1, 5, "obj-39", "number", "float", 0.0, 5, "obj-43", "number", "float", -0.33, 5, "obj-40", "number", "float", 0.1, 5, "obj-41", "number", "float", 0.2, 5, "obj-42", "number", "float", -0.59 ]
                        },
                        {
                            "number": 80,
                            "data": [ 5, "obj-38", "number", "int", 3, 5, "obj-16", "number", "float", 0.5, 5, "obj-17", "number", "float", 0.0, 5, "obj-25", "number", "float", 0.34, 5, "obj-20", "number", "float", 0.1, 5, "obj-39", "number", "float", 0.0, 5, "obj-43", "number", "float", -0.27, 5, "obj-40", "number", "float", 0.1, 5, "obj-41", "number", "float", 0.2, 5, "obj-42", "number", "float", -0.59 ]
                        },
                        {
                            "number": 81,
                            "data": [ 5, "obj-38", "number", "int", 3, 5, "obj-16", "number", "float", 0.0, 5, "obj-17", "number", "float", 0.0, 5, "obj-25", "number", "float", 0.334, 5, "obj-20", "number", "float", 0.1, 5, "obj-39", "number", "float", 0.0, 5, "obj-43", "number", "float", -0.25, 5, "obj-40", "number", "float", 0.1, 5, "obj-41", "number", "float", -0.1, 5, "obj-42", "number", "float", -0.2 ]
                        },
                        {
                            "number": 82,
                            "data": [ 5, "obj-38", "number", "int", 3, 5, "obj-16", "number", "float", 0.0, 5, "obj-17", "number", "float", 1.0, 5, "obj-25", "number", "float", 0.334, 5, "obj-20", "number", "float", 0.1, 5, "obj-39", "number", "float", 0.0, 5, "obj-43", "number", "float", 0.3, 5, "obj-40", "number", "float", 0.2, 5, "obj-41", "number", "float", -0.3, 5, "obj-42", "number", "float", 0.25 ]
                        },
                        {
                            "number": 83,
                            "data": [ 5, "obj-38", "number", "int", 3, 5, "obj-16", "number", "float", 0.0, 5, "obj-17", "number", "float", -1.0, 5, "obj-25", "number", "float", 0.334, 5, "obj-20", "number", "float", 0.1, 5, "obj-39", "number", "float", 0.0, 5, "obj-43", "number", "float", -0.24, 5, "obj-40", "number", "float", 0.05, 5, "obj-41", "number", "float", 0.25, 5, "obj-42", "number", "float", -0.28 ]
                        },
                        {
                            "number": 84,
                            "data": [ 5, "obj-38", "number", "int", 2, 5, "obj-16", "number", "float", 0.5, 5, "obj-17", "number", "float", 1.0, 5, "obj-25", "number", "float", 0.334, 5, "obj-20", "number", "float", 0.1, 5, "obj-39", "number", "float", 0.0, 5, "obj-43", "number", "float", -0.14, 5, "obj-40", "number", "float", 0.18, 5, "obj-41", "number", "float", -0.36, 5, "obj-42", "number", "float", -0.12 ]
                        },
                        {
                            "number": 85,
                            "data": [ 5, "obj-38", "number", "int", 3, 5, "obj-16", "number", "float", 0.0, 5, "obj-17", "number", "float", -1.0, 5, "obj-25", "number", "float", 0.334, 5, "obj-20", "number", "float", 0.1, 5, "obj-39", "number", "float", 0.0, 5, "obj-43", "number", "float", 0.39, 5, "obj-40", "number", "float", 0.1, 5, "obj-41", "number", "float", 0.2, 5, "obj-42", "number", "float", 0.1 ]
                        },
                        {
                            "number": 86,
                            "data": [ 5, "obj-38", "number", "int", 3, 5, "obj-16", "number", "float", 0.5, 5, "obj-17", "number", "float", 0.0, 5, "obj-25", "number", "float", 0.334, 5, "obj-20", "number", "float", 0.1, 5, "obj-39", "number", "float", 0.0, 5, "obj-43", "number", "float", -0.2, 5, "obj-40", "number", "float", 0.04, 5, "obj-41", "number", "float", 0.2, 5, "obj-42", "number", "float", -0.589 ]
                        },
                        {
                            "number": 87,
                            "data": [ 5, "obj-38", "number", "int", 3, 5, "obj-16", "number", "float", 0.5, 5, "obj-17", "number", "float", 0.0, 5, "obj-25", "number", "float", 0.334, 5, "obj-20", "number", "float", 0.1, 5, "obj-39", "number", "float", 0.0, 5, "obj-43", "number", "float", -0.05, 5, "obj-40", "number", "float", 0.45, 5, "obj-41", "number", "float", 0.08, 5, "obj-42", "number", "float", -0.28 ]
                        },
                        {
                            "number": 88,
                            "data": [ 5, "obj-38", "number", "int", 3, 5, "obj-16", "number", "float", 0.0, 5, "obj-17", "number", "float", 2.0, 5, "obj-25", "number", "float", 0.334, 5, "obj-20", "number", "float", 0.1, 5, "obj-39", "number", "float", 0.0, 5, "obj-43", "number", "float", 0.3, 5, "obj-40", "number", "float", 0.2, 5, "obj-41", "number", "float", 0.2, 5, "obj-42", "number", "float", -0.59 ]
                        },
                        {
                            "number": 89,
                            "data": [ 5, "obj-38", "number", "int", 3, 5, "obj-16", "number", "float", 0.5, 5, "obj-17", "number", "float", -1.0, 5, "obj-25", "number", "float", 0.334, 5, "obj-20", "number", "float", 0.1, 5, "obj-39", "number", "float", 0.0, 5, "obj-43", "number", "float", -0.24, 5, "obj-40", "number", "float", 0.05, 5, "obj-41", "number", "float", 0.25, 5, "obj-42", "number", "float", -0.28 ]
                        },
                        {
                            "number": 90,
                            "data": [ 5, "obj-38", "number", "int", 2, 5, "obj-16", "number", "float", 0.5, 5, "obj-17", "number", "float", 2.0, 5, "obj-25", "number", "float", 0.334, 5, "obj-20", "number", "float", 0.1, 5, "obj-39", "number", "float", 0.07, 5, "obj-43", "number", "float", -0.059, 5, "obj-40", "number", "float", 0.19, 5, "obj-41", "number", "float", -0.26, 5, "obj-42", "number", "float", -0.11 ]
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
                    "patching_rect": [ 421.0, 176.0, 43.0, 17.0 ],
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
                    "patching_rect": [ 370.0, 176.0, 39.0, 17.0 ],
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
                    "patching_rect": [ 322.0, 176.0, 42.0, 17.0 ],
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
                    "patching_rect": [ 282.0, 176.0, 28.0, 17.0 ],
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
                    "patching_rect": [ 234.0, 176.0, 33.0, 17.0 ],
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
                    "patching_rect": [ 153.0, 189.0, 21.0, 21.0 ]
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
                    "patching_rect": [ 423.0, 190.0, 38.0, 19.0 ],
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
                    "patching_rect": [ 365.0, 190.0, 45.0, 19.0 ],
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
                    "patching_rect": [ 273.0, 190.0, 45.0, 19.0 ],
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
                    "patching_rect": [ 227.0, 190.0, 45.0, 19.0 ],
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
                    "patching_rect": [ 181.0, 190.0, 45.0, 19.0 ],
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
                    "patching_rect": [ 319.0, 190.0, 45.0, 19.0 ],
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
                    "patching_rect": [ 181.0, 176.0, 42.0, 17.0 ],
                    "text": "lambda"
                }
            },
            {
                "box": {
                    "fontname": "Verdana",
                    "fontsize": 9.0,
                    "id": "obj-59",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 170.0, 107.0, 63.0, 17.0 ],
                    "text": "buch --->"
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
                    "patching_rect": [ 66.0, 185.0, 29.0, 29.0 ]
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
                    "patching_rect": [ 66.0, 224.0, 58.0, 21.0 ],
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
                    "patching_rect": [ 114.0, 269.0, 63.0, 21.0 ],
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
                    "patching_rect": [ 156.0, 370.0, 65.0, 21.0 ],
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
                    "patching_rect": [ 66.0, 255.0, 33.0, 33.0 ]
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
                    "patching_rect": [ 66.0, 334.0, 126.0, 24.0 ],
                    "text": "vb.jit.quilts target"
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
                    "patching_rect": [ 66.0, 397.0, 182.0, 21.0 ],
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
                    "patching_rect": [ 514.0, 84.0, 600.0, 600.0 ],
                    "sync": 1
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-1", 0 ]
                }
            },
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
                    "destination": [ "obj-46", 5 ],
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-46", 6 ],
                    "source": [ "obj-17", 0 ]
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
                    "destination": [ "obj-16", 0 ],
                    "hidden": 1,
                    "order": 4,
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 0 ],
                    "hidden": 1,
                    "order": 3,
                    "source": [ "obj-27", 0 ]
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
                    "order": 5,
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "hidden": 1,
                    "order": 7,
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-41", 0 ],
                    "hidden": 1,
                    "order": 8,
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-42", 0 ],
                    "hidden": 1,
                    "order": 9,
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-43", 0 ],
                    "hidden": 1,
                    "order": 6,
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-46", 0 ],
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
                    "midpoints": [ 190.5, 323.921875, 75.5, 323.921875 ],
                    "source": [ "obj-46", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-51", 0 ],
                    "midpoints": [ 30.5, 482.0, 485.54296875, 482.0, 485.54296875, 77.48046875, 523.5, 77.48046875 ],
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
                    "midpoints": [ 432.5, 324.19140625, 75.5, 324.19140625 ],
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
            "obj-1": [ "live.tab[1]", "live.tab", 0 ],
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