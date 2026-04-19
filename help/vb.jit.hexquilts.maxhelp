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
        "rect": [ 46.0, 66.0, 1242.0, 692.0 ],
        "default_fontsize": 11.0,
        "gridsize": [ 10.0, 10.0 ],
        "toolbarvisible": 0,
        "boxes": [
            {
                "box": {
                    "id": "obj-30",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 353.5, 295.0, 33.0, 21.0 ],
                    "text": "m $1"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 366.5, 413.0, 75.0, 19.0 ],
                    "text": "initial position"
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 366.5, 387.0, 71.0, 21.0 ],
                    "text": "pak pos 0. 0."
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 59.5, 644.5, 107.0, 19.0 ],
                    "text": "https://vboehm.net"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 24.0,
                    "id": "obj-9",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 38.0, 177.0, 33.0 ],
                    "text": "vb.jit.hexquilts"
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
                    "patching_rect": [ 49.0, 534.0, 64.0, 21.0 ],
                    "text": "p sqrt?"
                }
            },
            {
                "box": {
                    "fontname": "Verdana",
                    "fontsize": 9.0,
                    "id": "obj-46",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 222.0, 230.0, 203.0, 19.0 ],
                    "text": "pak 0. 0. 0. 0. 0."
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 403.5, 295.0, 54.0, 21.0 ],
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
                    "patching_rect": [ 45.0, 334.0, 29.5, 21.0 ],
                    "text": "init"
                }
            },
            {
                "box": {
                    "id": "obj-22",
                    "maxclass": "live.tab",
                    "num_lines_patching": 2,
                    "num_lines_presentation": 0,
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 49.0, 476.0, 43.0, 45.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "direct", "sqrt" ],
                            "parameter_initial": [ 1.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.tab",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "live.tab",
                            "parameter_type": 2,
                            "parameter_unitstyle": 9
                        }
                    },
                    "varname": "live.tab"
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
                    "patching_rect": [ 353.5, 269.0, 43.0, 19.0 ],
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
                    "patching_rect": [ 441.5, 360.0, 19.0, 17.0 ],
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
                    "patching_rect": [ 441.5, 341.0, 19.0, 17.0 ],
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
                    "patching_rect": [ 396.5, 360.0, 43.0, 19.0 ],
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
                    "patching_rect": [ 396.5, 339.0, 43.0, 19.0 ],
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
                    "patching_rect": [ 218.0, 133.0, 95.0, 45.0 ],
                    "preset_data": [
                        {
                            "number": 1,
                            "data": [ 5, "obj-38", "number", "int", 3, 5, "obj-25", "number", "float", 0.003000000026077, 5, "obj-20", "number", "float", 0.009999999776483, 5, "obj-17", "number", "float", 0.0, 5, "obj-39", "number", "float", 0.0, 5, "obj-43", "number", "float", 0.100000001490116, 5, "obj-40", "number", "float", -0.600000023841858, 5, "obj-41", "number", "float", -0.07599999755621, 5, "obj-42", "number", "float", 0.100000001490116 ]
                        },
                        {
                            "number": 2,
                            "data": [ 5, "obj-38", "number", "int", 3, 5, "obj-25", "number", "float", 0.300000011920929, 5, "obj-20", "number", "float", 0.100000001490116, 5, "obj-17", "number", "float", 1.0, 5, "obj-39", "number", "float", 0.0, 5, "obj-43", "number", "float", 0.100000001490116, 5, "obj-40", "number", "float", 0.100000001490116, 5, "obj-41", "number", "float", 0.03999999910593, 5, "obj-42", "number", "float", 0.200000002980232 ]
                        },
                        {
                            "number": 3,
                            "data": [ 5, "obj-38", "number", "int", 3, 5, "obj-25", "number", "float", 0.300000011920929, 5, "obj-20", "number", "float", 0.100000001490116, 5, "obj-17", "number", "float", 0.0, 5, "obj-39", "number", "float", 0.0, 5, "obj-43", "number", "float", -0.029999999329448, 5, "obj-40", "number", "float", 0.059999998658895, 5, "obj-41", "number", "float", -0.150000005960464, 5, "obj-42", "number", "float", -0.104999996721745 ]
                        },
                        {
                            "number": 4,
                            "data": [ 5, "obj-38", "number", "int", 3, 5, "obj-25", "number", "float", 0.300000011920929, 5, "obj-20", "number", "float", 0.100000001490116, 5, "obj-17", "number", "float", 0.0, 5, "obj-39", "number", "float", 0.0, 5, "obj-43", "number", "float", 0.052000001072884, 5, "obj-40", "number", "float", 0.140000000596046, 5, "obj-41", "number", "float", -0.100000001490116, 5, "obj-42", "number", "float", 0.019999999552965 ]
                        },
                        {
                            "number": 5,
                            "data": [ 5, "obj-38", "number", "int", 3, 5, "obj-25", "number", "float", 0.300000011920929, 5, "obj-20", "number", "float", 0.100000001490116, 5, "obj-17", "number", "float", 0.0, 5, "obj-39", "number", "float", 0.03999999910593, 5, "obj-43", "number", "float", 0.052000001072884, 5, "obj-40", "number", "float", 0.140000000596046, 5, "obj-41", "number", "float", -0.100000001490116, 5, "obj-42", "number", "float", 0.019999999552965 ]
                        },
                        {
                            "number": 6,
                            "data": [ 5, "obj-38", "number", "int", 3, 5, "obj-25", "number", "float", 0.003000000026077, 5, "obj-20", "number", "float", 0.009999999776483, 5, "obj-17", "number", "float", 1.320000052452087, 5, "obj-39", "number", "float", 0.0, 5, "obj-43", "number", "float", 0.052000001072884, 5, "obj-40", "number", "float", 0.140000000596046, 5, "obj-41", "number", "float", -0.100000001490116, 5, "obj-42", "number", "float", 0.019999999552965 ]
                        },
                        {
                            "number": 7,
                            "data": [ 5, "obj-38", "number", "int", 3, 5, "obj-25", "number", "float", 0.003000000026077, 5, "obj-20", "number", "float", 0.009999999776483, 5, "obj-17", "number", "float", 0.0, 5, "obj-39", "number", "float", 0.101000003516674, 5, "obj-43", "number", "float", 0.100000001490116, 5, "obj-40", "number", "float", -0.059999998658895, 5, "obj-41", "number", "float", -0.07599999755621, 5, "obj-42", "number", "float", 0.100000001490116 ]
                        },
                        {
                            "number": 14,
                            "data": [ 5, "obj-38", "number", "int", 2, 5, "obj-25", "number", "float", 0.300000011920929, 5, "obj-20", "number", "float", 0.100000001490116, 5, "obj-17", "number", "float", 0.0, 5, "obj-39", "number", "float", 0.140000000596046, 5, "obj-43", "number", "float", 0.035000000149012, 5, "obj-40", "number", "float", 0.140000000596046, 5, "obj-41", "number", "float", -0.009999999776483, 5, "obj-42", "number", "float", 0.057000000029802 ]
                        },
                        {
                            "number": 15,
                            "data": [ 5, "obj-38", "number", "int", 3, 5, "obj-25", "number", "float", 0.300000011920929, 5, "obj-20", "number", "float", 0.100000001490116, 5, "obj-17", "number", "float", 1.0, 5, "obj-39", "number", "float", 0.209999993443489, 5, "obj-43", "number", "float", 0.100000001490116, 5, "obj-40", "number", "float", 0.100000001490116, 5, "obj-41", "number", "float", 0.03999999910593, 5, "obj-42", "number", "float", 0.200000002980232 ]
                        },
                        {
                            "number": 16,
                            "data": [ 5, "obj-38", "number", "int", 3, 5, "obj-25", "number", "float", 0.003000000026077, 5, "obj-20", "number", "float", 0.009999999776483, 5, "obj-17", "number", "float", 1.669999957084656, 5, "obj-39", "number", "float", 0.0, 5, "obj-43", "number", "float", 0.052000001072884, 5, "obj-40", "number", "float", 0.140000000596046, 5, "obj-41", "number", "float", -0.100000001490116, 5, "obj-42", "number", "float", 0.019999999552965 ]
                        },
                        {
                            "number": 17,
                            "data": [ 5, "obj-38", "number", "int", 3, 5, "obj-25", "number", "float", 0.003000000026077, 5, "obj-20", "number", "float", 0.009999999776483, 5, "obj-17", "number", "float", 0.379999995231628, 5, "obj-39", "number", "float", 0.0, 5, "obj-43", "number", "float", 0.052000001072884, 5, "obj-40", "number", "float", 0.140000000596046, 5, "obj-41", "number", "float", -0.009999999776483, 5, "obj-42", "number", "float", 0.019999999552965 ]
                        },
                        {
                            "number": 18,
                            "data": [ 5, "obj-38", "number", "int", 2, 5, "obj-25", "number", "float", 0.30000001192092896, 5, "obj-20", "number", "float", 0.10000000149011612, 5, "obj-17", "number", "float", 0.07000000029802322, 5, "obj-39", "number", "float", 0.03999999910593033, 5, "obj-43", "number", "float", 0.03500000014901161, 5, "obj-40", "number", "float", 0.14000000059604645, 5, "obj-41", "number", "float", 0.07999999821186066, 5, "obj-42", "number", "float", -0.5 ]
                        },
                        {
                            "number": 19,
                            "data": [ 5, "obj-38", "number", "int", 3, 5, "obj-25", "number", "float", 0.300000011920929, 5, "obj-20", "number", "float", 0.100000001490116, 5, "obj-17", "number", "float", 0.280000001192093, 5, "obj-39", "number", "float", 0.03999999910593, 5, "obj-43", "number", "float", 0.052000001072884, 5, "obj-40", "number", "float", 0.140000000596046, 5, "obj-41", "number", "float", -0.100000001490116, 5, "obj-42", "number", "float", 0.019999999552965 ]
                        },
                        {
                            "number": 20,
                            "data": [ 5, "obj-38", "number", "int", 3, 5, "obj-25", "number", "float", 0.003000000026077, 5, "obj-20", "number", "float", 0.009999999776483, 5, "obj-17", "number", "float", 8.120527267456055, 5, "obj-39", "number", "float", 0.0, 5, "obj-43", "number", "float", 0.052000001072884, 5, "obj-40", "number", "float", 0.140000000596046, 5, "obj-41", "number", "float", -0.100000001490116, 5, "obj-42", "number", "float", 0.019999999552965 ]
                        },
                        {
                            "number": 21,
                            "data": [ 5, "obj-38", "number", "int", 3, 5, "obj-25", "number", "float", 0.003000000026077, 5, "obj-20", "number", "float", 0.009999999776483, 5, "obj-17", "number", "float", 1.840000033378601, 5, "obj-39", "number", "float", 0.259999990463257, 5, "obj-43", "number", "float", 0.052000001072884, 5, "obj-40", "number", "float", 0.140000000596046, 5, "obj-41", "number", "float", -0.100000001490116, 5, "obj-42", "number", "float", 0.019999999552965 ]
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
                    "patching_rect": [ 401.5, 252.0, 43.0, 17.0 ],
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
                    "patching_rect": [ 411.0, 181.0, 39.0, 17.0 ],
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
                    "patching_rect": [ 363.0, 181.0, 42.0, 17.0 ],
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
                    "patching_rect": [ 323.0, 181.0, 28.0, 17.0 ],
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
                    "patching_rect": [ 275.0, 181.0, 33.0, 17.0 ],
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
                    "patching_rect": [ 194.0, 197.0, 21.0, 21.0 ]
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
                    "patching_rect": [ 403.5, 269.0, 38.0, 19.0 ],
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
                    "patching_rect": [ 406.0, 198.0, 45.0, 19.0 ],
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
                    "patching_rect": [ 314.0, 198.0, 45.0, 19.0 ],
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
                    "patching_rect": [ 268.0, 198.0, 45.0, 19.0 ],
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
                    "patching_rect": [ 222.0, 198.0, 45.0, 19.0 ],
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
                    "patching_rect": [ 360.0, 198.0, 45.0, 19.0 ],
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
                    "patching_rect": [ 222.0, 181.0, 42.0, 17.0 ],
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
                    "patching_rect": [ 166.0, 131.0, 63.0, 17.0 ],
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
                    "patching_rect": [ 95.0, 158.0, 29.0, 29.0 ]
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
                    "patching_rect": [ 95.0, 196.0, 58.0, 21.0 ],
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
                    "patching_rect": [ 140.0, 346.0, 63.0, 21.0 ],
                    "text": "iters 20000"
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
                    "patching_rect": [ 197.0, 462.0, 65.0, 21.0 ],
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
                    "patching_rect": [ 95.0, 232.0, 33.0, 33.0 ]
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
                    "patching_rect": [ 95.0, 386.5, 163.0, 24.0 ],
                    "text": "vb.jit.hexquilts hexquilt"
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
                    "patching_rect": [ 94.0, 499.0, 192.0, 21.0 ],
                    "text": "jit.matrix hexquilt 1 float64 600 600"
                }
            },
            {
                "box": {
                    "id": "obj-51",
                    "maxclass": "jit.pwindow",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_matrix", "" ],
                    "patching_rect": [ 583.0, 38.0, 600.0, 600.0 ],
                    "sync": 1
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
                    "patching_rect": [ 18.0, 24.0, 246.0, 61.0 ],
                    "proportion": 0.5
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
                    "destination": [ "obj-30", 0 ],
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
                    "destination": [ "obj-4", 1 ],
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-22", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 2 ],
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
                    "destination": [ "obj-17", 0 ],
                    "hidden": 1,
                    "order": 5,
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "hidden": 1,
                    "order": 3,
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-25", 0 ],
                    "hidden": 1,
                    "order": 2,
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 0 ],
                    "hidden": 1,
                    "order": 1,
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-39", 0 ],
                    "hidden": 1,
                    "order": 0,
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "hidden": 1,
                    "order": 6,
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-41", 0 ],
                    "hidden": 1,
                    "order": 7,
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-42", 0 ],
                    "hidden": 1,
                    "order": 8,
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
                    "destination": [ "obj-11", 0 ],
                    "midpoints": [ 363.0, 321.0, 104.5, 321.0 ],
                    "source": [ "obj-30", 0 ]
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
                    "destination": [ "obj-11", 0 ],
                    "midpoints": [ 376.0, 419.0, 309.0078125, 419.0, 309.0078125, 376.5, 104.5, 376.5 ],
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
                    "midpoints": [ 231.5, 303.80078125, 104.5, 303.80078125 ],
                    "source": [ "obj-46", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-51", 0 ],
                    "midpoints": [ 58.5, 591.1875, 539.515625, 591.1875, 539.515625, 29.6171875, 592.5, 29.6171875 ],
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
                    "midpoints": [ 413.0, 328.8203125, 104.5, 328.8203125 ],
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
            "obj-22": [ "live.tab", "live.tab", 0 ],
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