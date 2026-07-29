{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 0,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 34.0, 76.0, 1469.0, 803.0 ],
        "description": "Maud - 6-Voice Polymetric Alien Percussion Groovebox",
        "boxes": [
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 18.0,
                    "id": "title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 15.0, 62.0, 27.0 ],
                    "text": "MAUD"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 14.0,
                    "id": "sec-tr",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 55.0, 96.0, 23.0 ],
                    "text": "TRANSPORT",
                    "textcolor": [ 0.3, 0.3, 0.3, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "tr-lb",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 30.0, 85.0, 58.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "tr-od",
                    "linecount": 2,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 115.0, 231.0, 36.0 ],
                    "text": ";\r\nmax overdrive 1 \\; max sched_overdrive 1"
                }
            },
            {
                "box": {
                    "id": "tr-bpmi",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 105.0, 85.0, 29.5, 22.0 ],
                    "text": "120"
                }
            },
            {
                "box": {
                    "id": "tr-bpm",
                    "maxclass": "number",
                    "maximum": 300,
                    "minimum": 30,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 150.0, 85.0, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 74.0, 166.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "tr-bl",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 210.0, 85.0, 35.0, 20.0 ],
                    "text": "BPM"
                }
            },
            {
                "box": {
                    "id": "tr-div",
                    "items": [ "1/16", ",", "1/8", ",", "1/8T", ",", "1/16T", ",", "1/32" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 295.0, 84.0, 55.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 141.0, 166.0, 55.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "tr-div-l",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 355.0, 84.0, 29.0, 20.0 ],
                    "text": "DIV"
                }
            },
            {
                "box": {
                    "id": "tr-div-coll",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "", "", "" ],
                    "patching_rect": [ 295.0, 144.0, 50.5, 22.0 ],
                    "saved_object_attributes": {
                        "embed": 0,
                        "precision": 6
                    },
                    "text": "coll"
                }
            },
            {
                "box": {
                    "id": "tr-div-load",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 295.0, 114.0, 312.0, 22.0 ],
                    "text": "store 0 1., store 1 0.5, store 2 0.75, store 3 1.5, store 4 2."
                }
            },
            {
                "box": {
                    "id": "tr-div-init",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 580.0, 114.0, 29.5, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "tr-div-t",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "float" ],
                    "patching_rect": [ 295.0, 204.0, 29.5, 22.0 ],
                    "text": "t b f"
                }
            },
            {
                "box": {
                    "id": "tr-hz",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 490.0, 114.0, 100.0, 22.0 ],
                    "text": "expr $f1 / 60. * 4."
                }
            },
            {
                "box": {
                    "id": "tr-sig",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 490.0, 144.0, 31.0, 22.0 ],
                    "text": "sig~"
                }
            },
            {
                "box": {
                    "id": "tr-rsig",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 550.0, 144.0, 31.0, 22.0 ],
                    "text": "sig~"
                }
            },
            {
                "box": {
                    "id": "tr-rsig-def",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 681.0, 114.0, 73.0, 22.0 ],
                    "text": "loadmess 1."
                }
            },
            {
                "box": {
                    "id": "tr-mult",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 490.0, 174.0, 29.5, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "tr-phasor",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 490.0, 204.0, 52.0, 22.0 ],
                    "text": "phasor~"
                }
            },
            {
                "box": {
                    "id": "tr-delta",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 570.0, 204.0, 42.0, 22.0 ],
                    "text": "delta~"
                }
            },
            {
                "box": {
                    "id": "tr-lt",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 630.0, 204.0, 33.0, 22.0 ],
                    "text": "<~ 0"
                }
            },
            {
                "box": {
                    "id": "tr-edge",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "bang" ],
                    "patching_rect": [ 680.0, 204.0, 42.0, 22.0 ],
                    "text": "edge~"
                }
            },
            {
                "box": {
                    "id": "tr-play",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 770.0, 111.0, 24.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 216.0, 165.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "tr-pl",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 764.0, 84.0, 39.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 210.0, 138.0, 39.0, 20.0 ],
                    "text": "PLAY"
                }
            },
            {
                "box": {
                    "id": "tr-gate",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 770.0, 204.0, 32.0, 22.0 ],
                    "text": "gate"
                }
            },
            {
                "box": {
                    "id": "tr-cnt",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 4,
                    "outlettype": [ "int", "", "", "int" ],
                    "patching_rect": [ 840.0, 204.0, 82.0, 22.0 ],
                    "text": "counter 0 255"
                }
            },
            {
                "box": {
                    "id": "tr-sl",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 960.0, 204.0, 40.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 888.0, 556.0, 40.0, 20.0 ],
                    "text": "STEP"
                }
            },
            {
                "box": {
                    "id": "tr-sn",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1005.0, 204.0, 45.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 933.0, 556.0, 45.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "tr-ms",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 640.0, 174.0, 156.0, 22.0 ],
                    "text": "expr 60000. / ($f1 * 4. * $f2)"
                }
            },
            {
                "box": {
                    "id": "tr-ms-def",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 810.0, 174.0, 73.0, 22.0 ],
                    "text": "loadmess 1."
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 14.0,
                    "id": "sec-sq",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 285.0, 97.0, 23.0 ],
                    "text": "SEQUENCER",
                    "textcolor": [ 0.3, 0.3, 0.3, 1.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 11.0,
                    "id": "rl-0",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 15.0, 302.0, 40.0, 19.0 ],
                    "text": "MASS"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 11.0,
                    "id": "rl-1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 15.0, 326.0, 34.0, 19.0 ],
                    "text": "VEIN"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 11.0,
                    "id": "rl-2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 15.0, 350.0, 48.0, 19.0 ],
                    "text": "SHARD"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 11.0,
                    "id": "rl-3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 15.0, 374.0, 40.0, 19.0 ],
                    "text": "HUSK"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 11.0,
                    "id": "rl-4",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 15.0, 398.0, 43.0, 19.0 ],
                    "text": "FAULT"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 11.0,
                    "id": "rl-5",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 15.0, 422.0, 40.0, 19.0 ],
                    "text": "HALO"
                }
            },
            {
                "box": {
                    "candicane2": [ 0.15, 0.15, 0.15, 1.0 ],
                    "id": "sq-ind",
                    "maxclass": "multislider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 75.0, 282.0, 780.0, 15.0 ],
                    "setminmax": [ 0.0, 1.0 ],
                    "size": 32,
                    "slidercolor": [ 0.3, 0.8, 0.5, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 1.0, 0.9176470588235294, 0.9176470588235294, 0.0 ],
                    "color": [ 0.7647058823529411, 1.0, 0.615686274509804, 1.0 ],
                    "columns": 16,
                    "elementcolor": [ 0.20392156862745098, 0.20392156862745098, 0.20392156862745098, 1.0 ],
                    "id": "sq-grid",
                    "maxclass": "matrixctrl",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "list", "list" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 75.0, 300.0, 780.0, 144.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 501.0, 613.0, 369.0, 136.0 ],
                    "rows": 6
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "len-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 870.0, 285.0, 58.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 919.0, 584.0, 58.0, 20.0 ],
                    "text": "LENGTH"
                }
            },
            {
                "box": {
                    "id": "len-0",
                    "items": [ "4", ",", "8", ",", "12", ",", "16", ",", "24", ",", "32" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 870.0, 300.0, 55.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 933.0, 613.0, 55.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "lp-0",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 973.0, 299.0, 137.0, 22.0 ],
                    "text": "prepend setlength_idx 0"
                }
            },
            {
                "box": {
                    "id": "li-0",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 938.0, 299.0, 29.5, 22.0 ],
                    "text": "3"
                }
            },
            {
                "box": {
                    "id": "len-1",
                    "items": [ "4", ",", "8", ",", "12", ",", "16", ",", "24", ",", "32" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 870.0, 324.0, 55.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 933.0, 637.0, 55.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "lp-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 973.0, 323.0, 137.0, 22.0 ],
                    "text": "prepend setlength_idx 1"
                }
            },
            {
                "box": {
                    "id": "li-1",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 938.0, 323.0, 29.5, 22.0 ],
                    "text": "3"
                }
            },
            {
                "box": {
                    "id": "len-2",
                    "items": [ "4", ",", "8", ",", "12", ",", "16", ",", "24", ",", "32" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 870.0, 348.0, 55.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 933.0, 661.0, 55.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "lp-2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 973.0, 347.0, 137.0, 22.0 ],
                    "text": "prepend setlength_idx 2"
                }
            },
            {
                "box": {
                    "id": "li-2",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 938.0, 347.0, 29.5, 22.0 ],
                    "text": "3"
                }
            },
            {
                "box": {
                    "id": "len-3",
                    "items": [ "4", ",", "8", ",", "12", ",", "16", ",", "24", ",", "32" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 870.0, 372.0, 55.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 933.0, 685.0, 55.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "lp-3",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 973.0, 371.0, 137.0, 22.0 ],
                    "text": "prepend setlength_idx 3"
                }
            },
            {
                "box": {
                    "id": "li-3",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 938.0, 371.0, 29.5, 22.0 ],
                    "text": "3"
                }
            },
            {
                "box": {
                    "id": "len-4",
                    "items": [ "4", ",", "8", ",", "12", ",", "16", ",", "24", ",", "32" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 870.0, 396.0, 55.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 933.0, 709.0, 55.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "lp-4",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 973.0, 395.0, 137.0, 22.0 ],
                    "text": "prepend setlength_idx 4"
                }
            },
            {
                "box": {
                    "id": "li-4",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 938.0, 395.0, 29.5, 22.0 ],
                    "text": "3"
                }
            },
            {
                "box": {
                    "id": "len-5",
                    "items": [ "4", ",", "8", ",", "12", ",", "16", ",", "24", ",", "32" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 870.0, 420.0, 55.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 933.0, 733.0, 55.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "lp-5",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 973.0, 419.0, 137.0, 22.0 ],
                    "text": "prepend setlength_idx 5"
                }
            },
            {
                "box": {
                    "id": "li-5",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 938.0, 419.0, 29.5, 22.0 ],
                    "text": "3"
                }
            },
            {
                "box": {
                    "id": "sq-js",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 8,
                    "outlettype": [ "", "", "", "", "", "", "", "" ],
                    "patching_rect": [ 75.0, 470.0, 92.5, 22.0 ],
                    "saved_object_attributes": {
                        "filename": "sequencer.js",
                        "parameter_enable": 0
                    },
                    "text": "js sequencer.js"
                }
            },
            {
                "box": {
                    "id": "sq-init",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 75.0, 500.0, 1213.0, 22.0 ],
                    "text": "set 0 0 1, set 4 0 1, set 8 0 1, set 12 0 1, set 2 1 1, set 6 1 1, set 10 1 1, set 14 1 1, set 0 2 1, set 2 2 1, set 3 2 1, set 6 2 1, set 8 2 1, set 10 2 1, set 11 2 1, set 14 2 1, set 4 3 1, set 12 3 1, set 0 4 1, set 8 4 1, set 3 5 1, set 11 5 1"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 14.0,
                    "id": "sec-vc",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 545.0, 61.0, 23.0 ],
                    "text": "VOICES",
                    "textcolor": [ 0.3, 0.3, 0.3, 1.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 11.0,
                    "id": "vn-0",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 75.0, 560.0, 40.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 73.5, 224.0, 40.0, 19.0 ],
                    "text": "MASS"
                }
            },
            {
                "box": {
                    "id": "vb-0",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 135.0, 582.0, 24.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 81.5, 246.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "vc-0",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 75.0, 582.0, 39.0, 22.0 ],
                    "text": "click~"
                }
            },
            {
                "box": {
                    "id": "vr-0",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 75.0, 612.0, 77.0, 22.0 ],
                    "text": "receive v0_p"
                }
            },
            {
                "box": {
                    "id": "vg-0",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 0,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "dsp.gen",
                        "rect": [ 0.0, 0.0, 800.0, 600.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "g-in",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 50.0, 14.0, 30.0, 22.0 ],
                                    "text": "in 1"
                                }
                            },
                            {
                                "box": {
                                    "code": "Param pitch(60);\nParam decay_ms(200);\nParam exciter_type(0);\nParam body_type(0);\nParam stress(0.3);\nParam bloom(0.3);\nParam scar(0);\nParam weight(0.5);\nParam mist(0.2);\nParam heat_macro(0.3);\nParam drift_param(0);\nParam density_param(0.5);\nParam flam_pitch_off(0);\nParam flam_vel(1);\nParam flam_pitch_gate(0);\nParam lfo_pitch_off(0);\nParam lfo_stress_off(0);\nParam lfo_bloom_off(0);\nParam lfo_decay_off(0);\nParam lfo_mist_off(0);\nParam lfo_heat_off(0);\nParam lfo_drift_off(0);\nParam lfo_density_off(0);\n\nHistory prev_trig(0);\nHistory pressure(0);\nHistory heat_state(0);\nHistory fatigue(0);\nHistory exc_car_phase(0);\nHistory exc_mod_phase(0);\nHistory exc_env(0);\nHistory noise_filt(0);\nHistory ry1_a(0);\nHistory ry2_a(0);\nHistory ry1_b(0);\nHistory ry2_b(0);\nHistory ry1_c(0);\nHistory ry2_c(0);\nHistory ry1_d(0);\nHistory ry2_d(0);\nHistory comb_lp(0);\nHistory halo_env(0);\nHistory main_env(0);\nHistory pitch_env(0);\nHistory fb_state(0);\nHistory fb_hp(0);\nHistory cav_lp(0);\nHistory fb_lfo_phase(0);\nHistory fb_lp2(0);\nHistory flam_p_env(0);\nDelay comb_d(8820);\nDelay cav_d(8820);\n\ntrig_on = (in1 > 0.5) * (prev_trig <= 0.5);\nvel = in1 * flam_vel;\nprev_trig = in1;\n\nif (trig_on) {\n    pressure = min(pressure + vel * (0.3 + stress * 0.7) * (1 - pressure), 1);\n    fatigue = min(fatigue + 0.02 * (1 - fatigue), 1);\n    exc_env = 1;\n    halo_env = vel * mist;\n    main_env = vel;\n    pitch_env = vel;\n    flam_p_env = flam_pitch_off;\n}\n\np_decay = 0.00002 + (1 - stress) * 0.00008;\npressure = pressure * (1 - p_decay);\nheat_state = heat_state + (pressure - heat_state) * 0.0002;\nheat_state = heat_state * (1 - 0.00005);\nfatigue = fatigue * (1 - 0.000002);\nstiffness = fatigue * 0.6 + pressure * 0.4;\n\neff_stress = clamp(stress + lfo_stress_off, 0, 1);\neff_bloom = clamp(bloom + lfo_bloom_off, 0, 1);\neff_mist = clamp(mist + lfo_mist_off, 0, 1);\neff_heat = clamp(heat_macro + lfo_heat_off + heat_state * 0.5, 0, 1);\neff_drift = clamp(drift_param + lfo_drift_off, 0, 1);\neff_density = clamp(density_param + lfo_density_off, 0, 1);\neff_decay_ms = clamp(decay_ms + lfo_decay_off, 5, 80);\neff_scar = clamp(scar + pressure * eff_stress, 0, 1);\n\nfp_rate = exp(-(flam_pitch_gate * 8)) * 0.15;\nflam_p_env = flam_p_env * (1 - fp_rate);\n\np_env_rate = 0.002 + weight * 0.008;\npitch_env = pitch_env * (1 - p_env_rate);\np_sweep = pitch_env * weight * 24;\np_mod = pitch + lfo_pitch_off + flam_p_env + p_sweep + noise() * pressure * eff_drift * 2;\nbase_freq = mtof(clamp(p_mod, 10, 130));\nw_scale = 1 - weight * 0.35;\nbody_freq = max(base_freq * w_scale, 25);\n\ne_decay = 0.0005 + eff_density * 0.003;\nexc_env = exc_env * (1 - e_decay);\n\nexciter_out = 0;\nif (exciter_type < 0.5) {\n    fm_r = 1.41 + eff_heat * 3;\n    mf = base_freq * fm_r;\n    fm_idx = (12 + eff_heat * 18) * exc_env;\n    exc_mod_phase = wrap(exc_mod_phase + mf / samplerate, 0, 1);\n    mod_sig = sin(exc_mod_phase * twopi) * fm_idx;\n    exc_car_phase = wrap(exc_car_phase + base_freq / samplerate, 0, 1);\n    exciter_out = sin(exc_car_phase * twopi + mod_sig) * exc_env * 1.5;\n} else {\n    n = noise();\n    cutoff = base_freq * (3 + eff_heat * 12);\n    coeff = clamp(1 - exp(-twopi * cutoff / samplerate), 0.001, 0.999);\n    noise_filt = noise_filt + (n - noise_filt) * coeff;\n    exciter_out = noise_filt * 6 * exc_env;\n}\n\nfb_lfo_rate = 0.3 + (1 - eff_bloom) * 7.7;\nfb_lfo_depth_raw = clamp((eff_mist - 0.3) / 0.7, 0, 1);\nfb_lfo_phase = wrap(fb_lfo_phase + fb_lfo_rate / samplerate, 0, 1);\nfb_lfo = sin(fb_lfo_phase * twopi);\nfb_gain = eff_mist * (0.5 + eff_stress * 0.5) * (1 + fb_lfo * fb_lfo_depth_raw * 0.15);\nfb_gain = clamp(fb_gain, 0, 0.95);\nhp_cut_base = 80 + (1 - weight) * 2400;\nhp_cut = hp_cut_base * (1 + fb_lfo * fb_lfo_depth_raw * 0.7);\nhp_c = clamp(1 - exp(-twopi * hp_cut / samplerate), 0.001, 0.999);\nfb_lp = fb_hp + (fb_state - fb_hp) * hp_c;\nfb_hp = fb_lp;\nfb_hpf = fb_state - fb_lp;\nlp2_cut = 800 + eff_bloom * 10000 + fb_lfo * fb_lfo_depth_raw * 3000;\nlp2_c = clamp(1 - exp(-twopi * lp2_cut / samplerate), 0.001, 0.999);\nfb_lp2 = fb_lp2 + (fb_hpf - fb_lp2) * lp2_c;\nfb_ltd = tanh(fb_lp2 * 2.5) * 0.6;\nbl_rate = 0.000001 + (1 - eff_bloom) * 0.0003;\nhalo_env = halo_env * (1 - bl_rate);\nfb_sig = fb_ltd * fb_gain * halo_env;\nbody_input = exciter_out + fb_sig;\n\neff_decay = eff_decay_ms * eff_decay_ms * 2.5;\ndecay_norm = clamp(eff_decay / 16000, 0, 1);\neff_Q = clamp(0.985 + decay_norm * 0.014 - fatigue * 0.15, 0.85, 0.9995);\n\nbody_out = 0;\nif (body_type < 0.5) {\n    w1 = twopi * body_freq * 1.0 / samplerate;\n    r1 = eff_Q;\n    ya = body_input + 2 * r1 * cos(w1) * ry1_a - r1 * r1 * ry2_a;\n    ry2_a = ry1_a; ry1_a = ya;\n    w2 = twopi * body_freq * (1.347 + stiffness * 0.2) / samplerate;\n    r2 = eff_Q * 0.995;\n    yb = body_input + 2 * r2 * cos(w2) * ry1_b - r2 * r2 * ry2_b;\n    ry2_b = ry1_b; ry1_b = yb;\n    w3 = twopi * body_freq * (1.891 + stiffness * 0.25) / samplerate;\n    r3 = eff_Q * 0.99;\n    yc = body_input + 2 * r3 * cos(w3) * ry1_c - r3 * r3 * ry2_c;\n    ry2_c = ry1_c; ry1_c = yc;\n    w4 = twopi * body_freq * (2.534 + stiffness * 0.35) / samplerate;\n    r4 = eff_Q * 0.985;\n    yd = body_input + 2 * r4 * cos(w4) * ry1_d - r4 * r4 * ry2_d;\n    ry2_d = ry1_d; ry1_d = yd;\n    body_out = (ya + yb * 0.8 + yc * 0.55 + yd * 0.4) * 0.35;\n} else if (body_type < 1.5) {\n    d_samps = clamp(samplerate / base_freq, 2, 8000);\n    fb = eff_Q * 0.92;\n    delayed = comb_d.read(d_samps);\n    d_coeff = 0.25 + fatigue * 0.35;\n    comb_lp = comb_lp + (delayed - comb_lp) * d_coeff;\n    comb_d.write(body_input + comb_lp * fb);\n    body_out = delayed * 1.3;\n} else if (body_type < 2.5) {\n    cav_len = clamp(samplerate / base_freq, 2, 8000);\n    cav_fb = eff_Q * (0.88 + pressure * 0.1);\n    cav_fb = clamp(cav_fb, 0, 0.996);\n    cav_del = cav_d.read(cav_len);\n    cav_cut = 0.15 + (1 - pressure) * 0.35 + eff_heat * 0.3;\n    cav_lp = cav_lp + (cav_del - cav_lp) * cav_cut;\n    cav_d.write(body_input + cav_lp * cav_fb);\n    w1 = twopi * body_freq * 1.0 / samplerate;\n    r1 = eff_Q * 0.97;\n    ya = cav_del + 2 * r1 * cos(w1) * ry1_a - r1 * r1 * ry2_a;\n    ry2_a = ry1_a; ry1_a = ya;\n    body_out = (cav_del * 0.35 + ya * 0.65) * 1.2;\n} else {\n    mem_r1 = 1.0;\n    mem_r2 = 1.594;\n    mem_r3 = 2.136;\n    mem_r4 = 2.296;\n    w1 = twopi * body_freq * mem_r1 / samplerate;\n    r1 = eff_Q * 0.999;\n    ya = body_input + 2 * r1 * cos(w1) * ry1_a - r1 * r1 * ry2_a;\n    ry2_a = ry1_a; ry1_a = ya;\n    w2 = twopi * body_freq * mem_r2 / samplerate;\n    r2 = eff_Q * 0.995;\n    yb = body_input + 2 * r2 * cos(w2) * ry1_b - r2 * r2 * ry2_b;\n    ry2_b = ry1_b; ry1_b = yb;\n    w3 = twopi * body_freq * mem_r3 / samplerate;\n    r3 = eff_Q * 0.99;\n    yc = body_input + 2 * r3 * cos(w3) * ry1_c - r3 * r3 * ry2_c;\n    ry2_c = ry1_c; ry1_c = yc;\n    w4 = twopi * body_freq * mem_r4 / samplerate;\n    r4 = eff_Q * 0.985;\n    yd = body_input + 2 * r4 * cos(w4) * ry1_d - r4 * r4 * ry2_d;\n    ry2_d = ry1_d; ry1_d = yd;\n    body_out = (ya * 0.55 + yb * 0.3 + yc * 0.2 + yd * 0.15) * 1.1;\n}\n\nfold_d = 1 + eff_scar * 4;\nfractured = body_out;\nif (eff_scar > 0.01) {\n    biased = body_out + pressure * 0.3;\n    folded = asin(sin(biased * fold_d * 1.5707963)) * 0.6366197;\n    fractured = body_out * (1 - eff_scar) + folded * eff_scar;\n}\n\nfb_source = body_out * (1 - eff_stress) + fractured * eff_stress;\nfb_state = fb_source;\n\nenv_rate = 1.0 / max(eff_decay * samplerate / 1000, 1);\nmain_env = main_env * (1 - env_rate);\n\nbl_env = halo_env * eff_mist;\nout_env = max(main_env, bl_env);\nraw_out = fractured * out_env * 3;\nout1 = tanh(raw_out) * 0.95;",
                                    "fontface": 0,
                                    "fontname": "<Monospaced>",
                                    "fontsize": 12.0,
                                    "id": "g-cb",
                                    "maxclass": "codebox",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 50.0, 50.0, 700.0, 450.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "g-out",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 50.0, 520.0, 35.0, 22.0 ],
                                    "text": "out 1"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "g-out", 0 ],
                                    "source": [ "g-cb", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "g-cb", 0 ],
                                    "source": [ "g-in", 0 ]
                                }
                            }
                        ],
                        "editing_bgcolor": [ 0.65, 0.65, 0.65, 1.0 ]
                    },
                    "patching_rect": [ 75.0, 642.0, 36.0, 22.0 ],
                    "text": "gen~"
                }
            },
            {
                "box": {
                    "id": "vl-0",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 75.0, 672.0, 34.0, 22.0 ],
                    "text": "*~ 1."
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "vlf-0",
                    "maxclass": "flonum",
                    "maximum": 2.0,
                    "minimum": 0.0,
                    "numdecimalplaces": 2,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 120.0, 672.0, 45.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 66.5, 276.0, 45.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "vlr-0",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 170.0, 672.0, 95.0, 22.0 ],
                    "text": "receive v0_level"
                }
            },
            {
                "box": {
                    "id": "vls-0",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 170.0, 695.0, 41.0, 22.0 ],
                    "text": "set $1"
                }
            },
            {
                "box": {
                    "id": "vld-0",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 120.0, 695.0, 32.0, 22.0 ],
                    "text": "0.85"
                }
            },
            {
                "box": {
                    "id": "vs-0",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 75.0, 720.0, 81.0, 22.0 ],
                    "text": "send~ v0_out"
                }
            },
            {
                "box": {
                    "id": "vlk-0",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 120.0, 720.0, 125.0, 22.0 ],
                    "text": "prepend voice_level 0"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 11.0,
                    "id": "vn-1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 225.0, 560.0, 34.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 167.0, 224.0, 34.0, 19.0 ],
                    "text": "VEIN"
                }
            },
            {
                "box": {
                    "id": "vb-1",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 285.0, 582.0, 24.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 172.0, 246.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "vc-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 225.0, 582.0, 39.0, 22.0 ],
                    "text": "click~"
                }
            },
            {
                "box": {
                    "id": "vr-1",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 225.0, 612.0, 77.0, 22.0 ],
                    "text": "receive v1_p"
                }
            },
            {
                "box": {
                    "id": "vg-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 0,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "dsp.gen",
                        "rect": [ 0.0, 0.0, 800.0, 600.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "g-in",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 50.0, 14.0, 30.0, 22.0 ],
                                    "text": "in 1"
                                }
                            },
                            {
                                "box": {
                                    "code": "Param pitch(60);\nParam decay_ms(200);\nParam exciter_type(0);\nParam body_type(0);\nParam stress(0.3);\nParam bloom(0.3);\nParam scar(0);\nParam weight(0.5);\nParam mist(0.2);\nParam heat_macro(0.3);\nParam drift_param(0);\nParam density_param(0.5);\nParam flam_pitch_off(0);\nParam flam_vel(1);\nParam flam_pitch_gate(0);\nParam lfo_pitch_off(0);\nParam lfo_stress_off(0);\nParam lfo_bloom_off(0);\nParam lfo_decay_off(0);\nParam lfo_mist_off(0);\nParam lfo_heat_off(0);\nParam lfo_drift_off(0);\nParam lfo_density_off(0);\n\nHistory prev_trig(0);\nHistory pressure(0);\nHistory heat_state(0);\nHistory fatigue(0);\nHistory exc_car_phase(0);\nHistory exc_mod_phase(0);\nHistory exc_env(0);\nHistory noise_filt(0);\nHistory ry1_a(0);\nHistory ry2_a(0);\nHistory ry1_b(0);\nHistory ry2_b(0);\nHistory ry1_c(0);\nHistory ry2_c(0);\nHistory ry1_d(0);\nHistory ry2_d(0);\nHistory comb_lp(0);\nHistory halo_env(0);\nHistory main_env(0);\nHistory pitch_env(0);\nHistory fb_state(0);\nHistory fb_hp(0);\nHistory cav_lp(0);\nHistory fb_lfo_phase(0);\nHistory fb_lp2(0);\nHistory flam_p_env(0);\nDelay comb_d(8820);\nDelay cav_d(8820);\n\ntrig_on = (in1 > 0.5) * (prev_trig <= 0.5);\nvel = in1 * flam_vel;\nprev_trig = in1;\n\nif (trig_on) {\n    pressure = min(pressure + vel * (0.3 + stress * 0.7) * (1 - pressure), 1);\n    fatigue = min(fatigue + 0.02 * (1 - fatigue), 1);\n    exc_env = 1;\n    halo_env = vel * mist;\n    main_env = vel;\n    pitch_env = vel;\n    flam_p_env = flam_pitch_off;\n}\n\np_decay = 0.00002 + (1 - stress) * 0.00008;\npressure = pressure * (1 - p_decay);\nheat_state = heat_state + (pressure - heat_state) * 0.0002;\nheat_state = heat_state * (1 - 0.00005);\nfatigue = fatigue * (1 - 0.000002);\nstiffness = fatigue * 0.6 + pressure * 0.4;\n\neff_stress = clamp(stress + lfo_stress_off, 0, 1);\neff_bloom = clamp(bloom + lfo_bloom_off, 0, 1);\neff_mist = clamp(mist + lfo_mist_off, 0, 1);\neff_heat = clamp(heat_macro + lfo_heat_off + heat_state * 0.5, 0, 1);\neff_drift = clamp(drift_param + lfo_drift_off, 0, 1);\neff_density = clamp(density_param + lfo_density_off, 0, 1);\neff_decay_ms = clamp(decay_ms + lfo_decay_off, 5, 80);\neff_scar = clamp(scar + pressure * eff_stress, 0, 1);\n\nfp_rate = exp(-(flam_pitch_gate * 8)) * 0.15;\nflam_p_env = flam_p_env * (1 - fp_rate);\n\np_env_rate = 0.002 + weight * 0.008;\npitch_env = pitch_env * (1 - p_env_rate);\np_sweep = pitch_env * weight * 24;\np_mod = pitch + lfo_pitch_off + flam_p_env + p_sweep + noise() * pressure * eff_drift * 2;\nbase_freq = mtof(clamp(p_mod, 10, 130));\nw_scale = 1 - weight * 0.35;\nbody_freq = max(base_freq * w_scale, 25);\n\ne_decay = 0.0005 + eff_density * 0.003;\nexc_env = exc_env * (1 - e_decay);\n\nexciter_out = 0;\nif (exciter_type < 0.5) {\n    fm_r = 1.41 + eff_heat * 3;\n    mf = base_freq * fm_r;\n    fm_idx = (12 + eff_heat * 18) * exc_env;\n    exc_mod_phase = wrap(exc_mod_phase + mf / samplerate, 0, 1);\n    mod_sig = sin(exc_mod_phase * twopi) * fm_idx;\n    exc_car_phase = wrap(exc_car_phase + base_freq / samplerate, 0, 1);\n    exciter_out = sin(exc_car_phase * twopi + mod_sig) * exc_env * 1.5;\n} else {\n    n = noise();\n    cutoff = base_freq * (3 + eff_heat * 12);\n    coeff = clamp(1 - exp(-twopi * cutoff / samplerate), 0.001, 0.999);\n    noise_filt = noise_filt + (n - noise_filt) * coeff;\n    exciter_out = noise_filt * 6 * exc_env;\n}\n\nfb_lfo_rate = 0.3 + (1 - eff_bloom) * 7.7;\nfb_lfo_depth_raw = clamp((eff_mist - 0.3) / 0.7, 0, 1);\nfb_lfo_phase = wrap(fb_lfo_phase + fb_lfo_rate / samplerate, 0, 1);\nfb_lfo = sin(fb_lfo_phase * twopi);\nfb_gain = eff_mist * (0.5 + eff_stress * 0.5) * (1 + fb_lfo * fb_lfo_depth_raw * 0.15);\nfb_gain = clamp(fb_gain, 0, 0.95);\nhp_cut_base = 80 + (1 - weight) * 2400;\nhp_cut = hp_cut_base * (1 + fb_lfo * fb_lfo_depth_raw * 0.7);\nhp_c = clamp(1 - exp(-twopi * hp_cut / samplerate), 0.001, 0.999);\nfb_lp = fb_hp + (fb_state - fb_hp) * hp_c;\nfb_hp = fb_lp;\nfb_hpf = fb_state - fb_lp;\nlp2_cut = 800 + eff_bloom * 10000 + fb_lfo * fb_lfo_depth_raw * 3000;\nlp2_c = clamp(1 - exp(-twopi * lp2_cut / samplerate), 0.001, 0.999);\nfb_lp2 = fb_lp2 + (fb_hpf - fb_lp2) * lp2_c;\nfb_ltd = tanh(fb_lp2 * 2.5) * 0.6;\nbl_rate = 0.000001 + (1 - eff_bloom) * 0.0003;\nhalo_env = halo_env * (1 - bl_rate);\nfb_sig = fb_ltd * fb_gain * halo_env;\nbody_input = exciter_out + fb_sig;\n\neff_decay = eff_decay_ms * eff_decay_ms * 2.5;\ndecay_norm = clamp(eff_decay / 16000, 0, 1);\neff_Q = clamp(0.985 + decay_norm * 0.014 - fatigue * 0.15, 0.85, 0.9995);\n\nbody_out = 0;\nif (body_type < 0.5) {\n    w1 = twopi * body_freq * 1.0 / samplerate;\n    r1 = eff_Q;\n    ya = body_input + 2 * r1 * cos(w1) * ry1_a - r1 * r1 * ry2_a;\n    ry2_a = ry1_a; ry1_a = ya;\n    w2 = twopi * body_freq * (1.347 + stiffness * 0.2) / samplerate;\n    r2 = eff_Q * 0.995;\n    yb = body_input + 2 * r2 * cos(w2) * ry1_b - r2 * r2 * ry2_b;\n    ry2_b = ry1_b; ry1_b = yb;\n    w3 = twopi * body_freq * (1.891 + stiffness * 0.25) / samplerate;\n    r3 = eff_Q * 0.99;\n    yc = body_input + 2 * r3 * cos(w3) * ry1_c - r3 * r3 * ry2_c;\n    ry2_c = ry1_c; ry1_c = yc;\n    w4 = twopi * body_freq * (2.534 + stiffness * 0.35) / samplerate;\n    r4 = eff_Q * 0.985;\n    yd = body_input + 2 * r4 * cos(w4) * ry1_d - r4 * r4 * ry2_d;\n    ry2_d = ry1_d; ry1_d = yd;\n    body_out = (ya + yb * 0.8 + yc * 0.55 + yd * 0.4) * 0.35;\n} else if (body_type < 1.5) {\n    d_samps = clamp(samplerate / base_freq, 2, 8000);\n    fb = eff_Q * 0.92;\n    delayed = comb_d.read(d_samps);\n    d_coeff = 0.25 + fatigue * 0.35;\n    comb_lp = comb_lp + (delayed - comb_lp) * d_coeff;\n    comb_d.write(body_input + comb_lp * fb);\n    body_out = delayed * 1.3;\n} else if (body_type < 2.5) {\n    cav_len = clamp(samplerate / base_freq, 2, 8000);\n    cav_fb = eff_Q * (0.88 + pressure * 0.1);\n    cav_fb = clamp(cav_fb, 0, 0.996);\n    cav_del = cav_d.read(cav_len);\n    cav_cut = 0.15 + (1 - pressure) * 0.35 + eff_heat * 0.3;\n    cav_lp = cav_lp + (cav_del - cav_lp) * cav_cut;\n    cav_d.write(body_input + cav_lp * cav_fb);\n    w1 = twopi * body_freq * 1.0 / samplerate;\n    r1 = eff_Q * 0.97;\n    ya = cav_del + 2 * r1 * cos(w1) * ry1_a - r1 * r1 * ry2_a;\n    ry2_a = ry1_a; ry1_a = ya;\n    body_out = (cav_del * 0.35 + ya * 0.65) * 1.2;\n} else {\n    mem_r1 = 1.0;\n    mem_r2 = 1.594;\n    mem_r3 = 2.136;\n    mem_r4 = 2.296;\n    w1 = twopi * body_freq * mem_r1 / samplerate;\n    r1 = eff_Q * 0.999;\n    ya = body_input + 2 * r1 * cos(w1) * ry1_a - r1 * r1 * ry2_a;\n    ry2_a = ry1_a; ry1_a = ya;\n    w2 = twopi * body_freq * mem_r2 / samplerate;\n    r2 = eff_Q * 0.995;\n    yb = body_input + 2 * r2 * cos(w2) * ry1_b - r2 * r2 * ry2_b;\n    ry2_b = ry1_b; ry1_b = yb;\n    w3 = twopi * body_freq * mem_r3 / samplerate;\n    r3 = eff_Q * 0.99;\n    yc = body_input + 2 * r3 * cos(w3) * ry1_c - r3 * r3 * ry2_c;\n    ry2_c = ry1_c; ry1_c = yc;\n    w4 = twopi * body_freq * mem_r4 / samplerate;\n    r4 = eff_Q * 0.985;\n    yd = body_input + 2 * r4 * cos(w4) * ry1_d - r4 * r4 * ry2_d;\n    ry2_d = ry1_d; ry1_d = yd;\n    body_out = (ya * 0.55 + yb * 0.3 + yc * 0.2 + yd * 0.15) * 1.1;\n}\n\nfold_d = 1 + eff_scar * 4;\nfractured = body_out;\nif (eff_scar > 0.01) {\n    biased = body_out + pressure * 0.3;\n    folded = asin(sin(biased * fold_d * 1.5707963)) * 0.6366197;\n    fractured = body_out * (1 - eff_scar) + folded * eff_scar;\n}\n\nfb_source = body_out * (1 - eff_stress) + fractured * eff_stress;\nfb_state = fb_source;\n\nenv_rate = 1.0 / max(eff_decay * samplerate / 1000, 1);\nmain_env = main_env * (1 - env_rate);\n\nbl_env = halo_env * eff_mist;\nout_env = max(main_env, bl_env);\nraw_out = fractured * out_env * 3;\nout1 = tanh(raw_out) * 0.95;",
                                    "fontface": 0,
                                    "fontname": "<Monospaced>",
                                    "fontsize": 12.0,
                                    "id": "g-cb",
                                    "maxclass": "codebox",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 50.0, 50.0, 700.0, 450.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "g-out",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 50.0, 520.0, 35.0, 22.0 ],
                                    "text": "out 1"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "g-out", 0 ],
                                    "source": [ "g-cb", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "g-cb", 0 ],
                                    "source": [ "g-in", 0 ]
                                }
                            }
                        ],
                        "editing_bgcolor": [ 0.65, 0.65, 0.65, 1.0 ]
                    },
                    "patching_rect": [ 225.0, 642.0, 36.0, 22.0 ],
                    "text": "gen~"
                }
            },
            {
                "box": {
                    "id": "vl-1",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 225.0, 672.0, 34.0, 22.0 ],
                    "text": "*~ 1."
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "vlf-1",
                    "maxclass": "flonum",
                    "maximum": 2.0,
                    "minimum": 0.0,
                    "numdecimalplaces": 2,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 270.0, 672.0, 45.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 157.0, 276.0, 45.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "vlr-1",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 320.0, 672.0, 95.0, 22.0 ],
                    "text": "receive v1_level"
                }
            },
            {
                "box": {
                    "id": "vls-1",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 320.0, 695.0, 41.0, 22.0 ],
                    "text": "set $1"
                }
            },
            {
                "box": {
                    "id": "vld-1",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 270.0, 695.0, 29.5, 22.0 ],
                    "text": "0.7"
                }
            },
            {
                "box": {
                    "id": "vs-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 225.0, 720.0, 81.0, 22.0 ],
                    "text": "send~ v1_out"
                }
            },
            {
                "box": {
                    "id": "vlk-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 270.0, 720.0, 125.0, 22.0 ],
                    "text": "prepend voice_level 1"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 11.0,
                    "id": "vn-2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 375.0, 560.0, 48.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 239.0, 224.0, 48.0, 19.0 ],
                    "text": "SHARD"
                }
            },
            {
                "box": {
                    "id": "vb-2",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 435.0, 582.0, 24.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 251.0, 246.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "vc-2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 375.0, 582.0, 39.0, 22.0 ],
                    "text": "click~"
                }
            },
            {
                "box": {
                    "id": "vr-2",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 375.0, 612.0, 77.0, 22.0 ],
                    "text": "receive v2_p"
                }
            },
            {
                "box": {
                    "id": "vg-2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 0,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "dsp.gen",
                        "rect": [ 0.0, 0.0, 800.0, 600.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "g-in",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 50.0, 14.0, 30.0, 22.0 ],
                                    "text": "in 1"
                                }
                            },
                            {
                                "box": {
                                    "code": "Param pitch(60);\nParam decay_ms(200);\nParam exciter_type(0);\nParam body_type(0);\nParam stress(0.3);\nParam bloom(0.3);\nParam scar(0);\nParam weight(0.5);\nParam mist(0.2);\nParam heat_macro(0.3);\nParam drift_param(0);\nParam density_param(0.5);\nParam flam_pitch_off(0);\nParam flam_vel(1);\nParam flam_pitch_gate(0);\nParam lfo_pitch_off(0);\nParam lfo_stress_off(0);\nParam lfo_bloom_off(0);\nParam lfo_decay_off(0);\nParam lfo_mist_off(0);\nParam lfo_heat_off(0);\nParam lfo_drift_off(0);\nParam lfo_density_off(0);\n\nHistory prev_trig(0);\nHistory pressure(0);\nHistory heat_state(0);\nHistory fatigue(0);\nHistory exc_car_phase(0);\nHistory exc_mod_phase(0);\nHistory exc_env(0);\nHistory noise_filt(0);\nHistory ry1_a(0);\nHistory ry2_a(0);\nHistory ry1_b(0);\nHistory ry2_b(0);\nHistory ry1_c(0);\nHistory ry2_c(0);\nHistory ry1_d(0);\nHistory ry2_d(0);\nHistory comb_lp(0);\nHistory halo_env(0);\nHistory main_env(0);\nHistory pitch_env(0);\nHistory fb_state(0);\nHistory fb_hp(0);\nHistory cav_lp(0);\nHistory fb_lfo_phase(0);\nHistory fb_lp2(0);\nHistory flam_p_env(0);\nDelay comb_d(8820);\nDelay cav_d(8820);\n\ntrig_on = (in1 > 0.5) * (prev_trig <= 0.5);\nvel = in1 * flam_vel;\nprev_trig = in1;\n\nif (trig_on) {\n    pressure = min(pressure + vel * (0.3 + stress * 0.7) * (1 - pressure), 1);\n    fatigue = min(fatigue + 0.02 * (1 - fatigue), 1);\n    exc_env = 1;\n    halo_env = vel * mist;\n    main_env = vel;\n    pitch_env = vel;\n    flam_p_env = flam_pitch_off;\n}\n\np_decay = 0.00002 + (1 - stress) * 0.00008;\npressure = pressure * (1 - p_decay);\nheat_state = heat_state + (pressure - heat_state) * 0.0002;\nheat_state = heat_state * (1 - 0.00005);\nfatigue = fatigue * (1 - 0.000002);\nstiffness = fatigue * 0.6 + pressure * 0.4;\n\neff_stress = clamp(stress + lfo_stress_off, 0, 1);\neff_bloom = clamp(bloom + lfo_bloom_off, 0, 1);\neff_mist = clamp(mist + lfo_mist_off, 0, 1);\neff_heat = clamp(heat_macro + lfo_heat_off + heat_state * 0.5, 0, 1);\neff_drift = clamp(drift_param + lfo_drift_off, 0, 1);\neff_density = clamp(density_param + lfo_density_off, 0, 1);\neff_decay_ms = clamp(decay_ms + lfo_decay_off, 5, 80);\neff_scar = clamp(scar + pressure * eff_stress, 0, 1);\n\nfp_rate = exp(-(flam_pitch_gate * 8)) * 0.15;\nflam_p_env = flam_p_env * (1 - fp_rate);\n\np_env_rate = 0.002 + weight * 0.008;\npitch_env = pitch_env * (1 - p_env_rate);\np_sweep = pitch_env * weight * 24;\np_mod = pitch + lfo_pitch_off + flam_p_env + p_sweep + noise() * pressure * eff_drift * 2;\nbase_freq = mtof(clamp(p_mod, 10, 130));\nw_scale = 1 - weight * 0.35;\nbody_freq = max(base_freq * w_scale, 25);\n\ne_decay = 0.0005 + eff_density * 0.003;\nexc_env = exc_env * (1 - e_decay);\n\nexciter_out = 0;\nif (exciter_type < 0.5) {\n    fm_r = 1.41 + eff_heat * 3;\n    mf = base_freq * fm_r;\n    fm_idx = (12 + eff_heat * 18) * exc_env;\n    exc_mod_phase = wrap(exc_mod_phase + mf / samplerate, 0, 1);\n    mod_sig = sin(exc_mod_phase * twopi) * fm_idx;\n    exc_car_phase = wrap(exc_car_phase + base_freq / samplerate, 0, 1);\n    exciter_out = sin(exc_car_phase * twopi + mod_sig) * exc_env * 1.5;\n} else {\n    n = noise();\n    cutoff = base_freq * (3 + eff_heat * 12);\n    coeff = clamp(1 - exp(-twopi * cutoff / samplerate), 0.001, 0.999);\n    noise_filt = noise_filt + (n - noise_filt) * coeff;\n    exciter_out = noise_filt * 6 * exc_env;\n}\n\nfb_lfo_rate = 0.3 + (1 - eff_bloom) * 7.7;\nfb_lfo_depth_raw = clamp((eff_mist - 0.3) / 0.7, 0, 1);\nfb_lfo_phase = wrap(fb_lfo_phase + fb_lfo_rate / samplerate, 0, 1);\nfb_lfo = sin(fb_lfo_phase * twopi);\nfb_gain = eff_mist * (0.5 + eff_stress * 0.5) * (1 + fb_lfo * fb_lfo_depth_raw * 0.15);\nfb_gain = clamp(fb_gain, 0, 0.95);\nhp_cut_base = 80 + (1 - weight) * 2400;\nhp_cut = hp_cut_base * (1 + fb_lfo * fb_lfo_depth_raw * 0.7);\nhp_c = clamp(1 - exp(-twopi * hp_cut / samplerate), 0.001, 0.999);\nfb_lp = fb_hp + (fb_state - fb_hp) * hp_c;\nfb_hp = fb_lp;\nfb_hpf = fb_state - fb_lp;\nlp2_cut = 800 + eff_bloom * 10000 + fb_lfo * fb_lfo_depth_raw * 3000;\nlp2_c = clamp(1 - exp(-twopi * lp2_cut / samplerate), 0.001, 0.999);\nfb_lp2 = fb_lp2 + (fb_hpf - fb_lp2) * lp2_c;\nfb_ltd = tanh(fb_lp2 * 2.5) * 0.6;\nbl_rate = 0.000001 + (1 - eff_bloom) * 0.0003;\nhalo_env = halo_env * (1 - bl_rate);\nfb_sig = fb_ltd * fb_gain * halo_env;\nbody_input = exciter_out + fb_sig;\n\neff_decay = eff_decay_ms * eff_decay_ms * 2.5;\ndecay_norm = clamp(eff_decay / 16000, 0, 1);\neff_Q = clamp(0.985 + decay_norm * 0.014 - fatigue * 0.15, 0.85, 0.9995);\n\nbody_out = 0;\nif (body_type < 0.5) {\n    w1 = twopi * body_freq * 1.0 / samplerate;\n    r1 = eff_Q;\n    ya = body_input + 2 * r1 * cos(w1) * ry1_a - r1 * r1 * ry2_a;\n    ry2_a = ry1_a; ry1_a = ya;\n    w2 = twopi * body_freq * (1.347 + stiffness * 0.2) / samplerate;\n    r2 = eff_Q * 0.995;\n    yb = body_input + 2 * r2 * cos(w2) * ry1_b - r2 * r2 * ry2_b;\n    ry2_b = ry1_b; ry1_b = yb;\n    w3 = twopi * body_freq * (1.891 + stiffness * 0.25) / samplerate;\n    r3 = eff_Q * 0.99;\n    yc = body_input + 2 * r3 * cos(w3) * ry1_c - r3 * r3 * ry2_c;\n    ry2_c = ry1_c; ry1_c = yc;\n    w4 = twopi * body_freq * (2.534 + stiffness * 0.35) / samplerate;\n    r4 = eff_Q * 0.985;\n    yd = body_input + 2 * r4 * cos(w4) * ry1_d - r4 * r4 * ry2_d;\n    ry2_d = ry1_d; ry1_d = yd;\n    body_out = (ya + yb * 0.8 + yc * 0.55 + yd * 0.4) * 0.35;\n} else if (body_type < 1.5) {\n    d_samps = clamp(samplerate / base_freq, 2, 8000);\n    fb = eff_Q * 0.92;\n    delayed = comb_d.read(d_samps);\n    d_coeff = 0.25 + fatigue * 0.35;\n    comb_lp = comb_lp + (delayed - comb_lp) * d_coeff;\n    comb_d.write(body_input + comb_lp * fb);\n    body_out = delayed * 1.3;\n} else if (body_type < 2.5) {\n    cav_len = clamp(samplerate / base_freq, 2, 8000);\n    cav_fb = eff_Q * (0.88 + pressure * 0.1);\n    cav_fb = clamp(cav_fb, 0, 0.996);\n    cav_del = cav_d.read(cav_len);\n    cav_cut = 0.15 + (1 - pressure) * 0.35 + eff_heat * 0.3;\n    cav_lp = cav_lp + (cav_del - cav_lp) * cav_cut;\n    cav_d.write(body_input + cav_lp * cav_fb);\n    w1 = twopi * body_freq * 1.0 / samplerate;\n    r1 = eff_Q * 0.97;\n    ya = cav_del + 2 * r1 * cos(w1) * ry1_a - r1 * r1 * ry2_a;\n    ry2_a = ry1_a; ry1_a = ya;\n    body_out = (cav_del * 0.35 + ya * 0.65) * 1.2;\n} else {\n    mem_r1 = 1.0;\n    mem_r2 = 1.594;\n    mem_r3 = 2.136;\n    mem_r4 = 2.296;\n    w1 = twopi * body_freq * mem_r1 / samplerate;\n    r1 = eff_Q * 0.999;\n    ya = body_input + 2 * r1 * cos(w1) * ry1_a - r1 * r1 * ry2_a;\n    ry2_a = ry1_a; ry1_a = ya;\n    w2 = twopi * body_freq * mem_r2 / samplerate;\n    r2 = eff_Q * 0.995;\n    yb = body_input + 2 * r2 * cos(w2) * ry1_b - r2 * r2 * ry2_b;\n    ry2_b = ry1_b; ry1_b = yb;\n    w3 = twopi * body_freq * mem_r3 / samplerate;\n    r3 = eff_Q * 0.99;\n    yc = body_input + 2 * r3 * cos(w3) * ry1_c - r3 * r3 * ry2_c;\n    ry2_c = ry1_c; ry1_c = yc;\n    w4 = twopi * body_freq * mem_r4 / samplerate;\n    r4 = eff_Q * 0.985;\n    yd = body_input + 2 * r4 * cos(w4) * ry1_d - r4 * r4 * ry2_d;\n    ry2_d = ry1_d; ry1_d = yd;\n    body_out = (ya * 0.55 + yb * 0.3 + yc * 0.2 + yd * 0.15) * 1.1;\n}\n\nfold_d = 1 + eff_scar * 4;\nfractured = body_out;\nif (eff_scar > 0.01) {\n    biased = body_out + pressure * 0.3;\n    folded = asin(sin(biased * fold_d * 1.5707963)) * 0.6366197;\n    fractured = body_out * (1 - eff_scar) + folded * eff_scar;\n}\n\nfb_source = body_out * (1 - eff_stress) + fractured * eff_stress;\nfb_state = fb_source;\n\nenv_rate = 1.0 / max(eff_decay * samplerate / 1000, 1);\nmain_env = main_env * (1 - env_rate);\n\nbl_env = halo_env * eff_mist;\nout_env = max(main_env, bl_env);\nraw_out = fractured * out_env * 3;\nout1 = tanh(raw_out) * 0.95;",
                                    "fontface": 0,
                                    "fontname": "<Monospaced>",
                                    "fontsize": 12.0,
                                    "id": "g-cb",
                                    "maxclass": "codebox",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 50.0, 50.0, 700.0, 450.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "g-out",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 50.0, 520.0, 35.0, 22.0 ],
                                    "text": "out 1"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "g-out", 0 ],
                                    "source": [ "g-cb", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "g-cb", 0 ],
                                    "source": [ "g-in", 0 ]
                                }
                            }
                        ],
                        "editing_bgcolor": [ 0.65, 0.65, 0.65, 1.0 ]
                    },
                    "patching_rect": [ 375.0, 642.0, 36.0, 22.0 ],
                    "text": "gen~"
                }
            },
            {
                "box": {
                    "id": "vl-2",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 375.0, 672.0, 34.0, 22.0 ],
                    "text": "*~ 1."
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "vlf-2",
                    "maxclass": "flonum",
                    "maximum": 2.0,
                    "minimum": 0.0,
                    "numdecimalplaces": 2,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 420.0, 672.0, 45.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 236.0, 276.0, 45.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "vlr-2",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 470.0, 672.0, 95.0, 22.0 ],
                    "text": "receive v2_level"
                }
            },
            {
                "box": {
                    "id": "vls-2",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 470.0, 695.0, 41.0, 22.0 ],
                    "text": "set $1"
                }
            },
            {
                "box": {
                    "id": "vld-2",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 420.0, 695.0, 29.5, 22.0 ],
                    "text": "0.6"
                }
            },
            {
                "box": {
                    "id": "vs-2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 375.0, 720.0, 81.0, 22.0 ],
                    "text": "send~ v2_out"
                }
            },
            {
                "box": {
                    "id": "vlk-2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 420.0, 720.0, 125.0, 22.0 ],
                    "text": "prepend voice_level 2"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 11.0,
                    "id": "vn-3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 525.0, 560.0, 40.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 316.5, 224.0, 40.0, 19.0 ],
                    "text": "HUSK"
                }
            },
            {
                "box": {
                    "id": "vb-3",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 585.0, 582.0, 24.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 324.5, 246.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "vc-3",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 525.0, 582.0, 39.0, 22.0 ],
                    "text": "click~"
                }
            },
            {
                "box": {
                    "id": "vr-3",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 525.0, 612.0, 77.0, 22.0 ],
                    "text": "receive v3_p"
                }
            },
            {
                "box": {
                    "id": "vg-3",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 0,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "dsp.gen",
                        "rect": [ 0.0, 0.0, 800.0, 600.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "g-in",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 50.0, 14.0, 30.0, 22.0 ],
                                    "text": "in 1"
                                }
                            },
                            {
                                "box": {
                                    "code": "Param pitch(60);\nParam decay_ms(200);\nParam exciter_type(0);\nParam body_type(0);\nParam stress(0.3);\nParam bloom(0.3);\nParam scar(0);\nParam weight(0.5);\nParam mist(0.2);\nParam heat_macro(0.3);\nParam drift_param(0);\nParam density_param(0.5);\nParam flam_pitch_off(0);\nParam flam_vel(1);\nParam flam_pitch_gate(0);\nParam lfo_pitch_off(0);\nParam lfo_stress_off(0);\nParam lfo_bloom_off(0);\nParam lfo_decay_off(0);\nParam lfo_mist_off(0);\nParam lfo_heat_off(0);\nParam lfo_drift_off(0);\nParam lfo_density_off(0);\n\nHistory prev_trig(0);\nHistory pressure(0);\nHistory heat_state(0);\nHistory fatigue(0);\nHistory exc_car_phase(0);\nHistory exc_mod_phase(0);\nHistory exc_env(0);\nHistory noise_filt(0);\nHistory ry1_a(0);\nHistory ry2_a(0);\nHistory ry1_b(0);\nHistory ry2_b(0);\nHistory ry1_c(0);\nHistory ry2_c(0);\nHistory ry1_d(0);\nHistory ry2_d(0);\nHistory comb_lp(0);\nHistory halo_env(0);\nHistory main_env(0);\nHistory pitch_env(0);\nHistory fb_state(0);\nHistory fb_hp(0);\nHistory cav_lp(0);\nHistory fb_lfo_phase(0);\nHistory fb_lp2(0);\nHistory flam_p_env(0);\nDelay comb_d(8820);\nDelay cav_d(8820);\n\ntrig_on = (in1 > 0.5) * (prev_trig <= 0.5);\nvel = in1 * flam_vel;\nprev_trig = in1;\n\nif (trig_on) {\n    pressure = min(pressure + vel * (0.3 + stress * 0.7) * (1 - pressure), 1);\n    fatigue = min(fatigue + 0.02 * (1 - fatigue), 1);\n    exc_env = 1;\n    halo_env = vel * mist;\n    main_env = vel;\n    pitch_env = vel;\n    flam_p_env = flam_pitch_off;\n}\n\np_decay = 0.00002 + (1 - stress) * 0.00008;\npressure = pressure * (1 - p_decay);\nheat_state = heat_state + (pressure - heat_state) * 0.0002;\nheat_state = heat_state * (1 - 0.00005);\nfatigue = fatigue * (1 - 0.000002);\nstiffness = fatigue * 0.6 + pressure * 0.4;\n\neff_stress = clamp(stress + lfo_stress_off, 0, 1);\neff_bloom = clamp(bloom + lfo_bloom_off, 0, 1);\neff_mist = clamp(mist + lfo_mist_off, 0, 1);\neff_heat = clamp(heat_macro + lfo_heat_off + heat_state * 0.5, 0, 1);\neff_drift = clamp(drift_param + lfo_drift_off, 0, 1);\neff_density = clamp(density_param + lfo_density_off, 0, 1);\neff_decay_ms = clamp(decay_ms + lfo_decay_off, 5, 80);\neff_scar = clamp(scar + pressure * eff_stress, 0, 1);\n\nfp_rate = exp(-(flam_pitch_gate * 8)) * 0.15;\nflam_p_env = flam_p_env * (1 - fp_rate);\n\np_env_rate = 0.002 + weight * 0.008;\npitch_env = pitch_env * (1 - p_env_rate);\np_sweep = pitch_env * weight * 24;\np_mod = pitch + lfo_pitch_off + flam_p_env + p_sweep + noise() * pressure * eff_drift * 2;\nbase_freq = mtof(clamp(p_mod, 10, 130));\nw_scale = 1 - weight * 0.35;\nbody_freq = max(base_freq * w_scale, 25);\n\ne_decay = 0.0005 + eff_density * 0.003;\nexc_env = exc_env * (1 - e_decay);\n\nexciter_out = 0;\nif (exciter_type < 0.5) {\n    fm_r = 1.41 + eff_heat * 3;\n    mf = base_freq * fm_r;\n    fm_idx = (12 + eff_heat * 18) * exc_env;\n    exc_mod_phase = wrap(exc_mod_phase + mf / samplerate, 0, 1);\n    mod_sig = sin(exc_mod_phase * twopi) * fm_idx;\n    exc_car_phase = wrap(exc_car_phase + base_freq / samplerate, 0, 1);\n    exciter_out = sin(exc_car_phase * twopi + mod_sig) * exc_env * 1.5;\n} else {\n    n = noise();\n    cutoff = base_freq * (3 + eff_heat * 12);\n    coeff = clamp(1 - exp(-twopi * cutoff / samplerate), 0.001, 0.999);\n    noise_filt = noise_filt + (n - noise_filt) * coeff;\n    exciter_out = noise_filt * 6 * exc_env;\n}\n\nfb_lfo_rate = 0.3 + (1 - eff_bloom) * 7.7;\nfb_lfo_depth_raw = clamp((eff_mist - 0.3) / 0.7, 0, 1);\nfb_lfo_phase = wrap(fb_lfo_phase + fb_lfo_rate / samplerate, 0, 1);\nfb_lfo = sin(fb_lfo_phase * twopi);\nfb_gain = eff_mist * (0.5 + eff_stress * 0.5) * (1 + fb_lfo * fb_lfo_depth_raw * 0.15);\nfb_gain = clamp(fb_gain, 0, 0.95);\nhp_cut_base = 80 + (1 - weight) * 2400;\nhp_cut = hp_cut_base * (1 + fb_lfo * fb_lfo_depth_raw * 0.7);\nhp_c = clamp(1 - exp(-twopi * hp_cut / samplerate), 0.001, 0.999);\nfb_lp = fb_hp + (fb_state - fb_hp) * hp_c;\nfb_hp = fb_lp;\nfb_hpf = fb_state - fb_lp;\nlp2_cut = 800 + eff_bloom * 10000 + fb_lfo * fb_lfo_depth_raw * 3000;\nlp2_c = clamp(1 - exp(-twopi * lp2_cut / samplerate), 0.001, 0.999);\nfb_lp2 = fb_lp2 + (fb_hpf - fb_lp2) * lp2_c;\nfb_ltd = tanh(fb_lp2 * 2.5) * 0.6;\nbl_rate = 0.000001 + (1 - eff_bloom) * 0.0003;\nhalo_env = halo_env * (1 - bl_rate);\nfb_sig = fb_ltd * fb_gain * halo_env;\nbody_input = exciter_out + fb_sig;\n\neff_decay = eff_decay_ms * eff_decay_ms * 2.5;\ndecay_norm = clamp(eff_decay / 16000, 0, 1);\neff_Q = clamp(0.985 + decay_norm * 0.014 - fatigue * 0.15, 0.85, 0.9995);\n\nbody_out = 0;\nif (body_type < 0.5) {\n    w1 = twopi * body_freq * 1.0 / samplerate;\n    r1 = eff_Q;\n    ya = body_input + 2 * r1 * cos(w1) * ry1_a - r1 * r1 * ry2_a;\n    ry2_a = ry1_a; ry1_a = ya;\n    w2 = twopi * body_freq * (1.347 + stiffness * 0.2) / samplerate;\n    r2 = eff_Q * 0.995;\n    yb = body_input + 2 * r2 * cos(w2) * ry1_b - r2 * r2 * ry2_b;\n    ry2_b = ry1_b; ry1_b = yb;\n    w3 = twopi * body_freq * (1.891 + stiffness * 0.25) / samplerate;\n    r3 = eff_Q * 0.99;\n    yc = body_input + 2 * r3 * cos(w3) * ry1_c - r3 * r3 * ry2_c;\n    ry2_c = ry1_c; ry1_c = yc;\n    w4 = twopi * body_freq * (2.534 + stiffness * 0.35) / samplerate;\n    r4 = eff_Q * 0.985;\n    yd = body_input + 2 * r4 * cos(w4) * ry1_d - r4 * r4 * ry2_d;\n    ry2_d = ry1_d; ry1_d = yd;\n    body_out = (ya + yb * 0.8 + yc * 0.55 + yd * 0.4) * 0.35;\n} else if (body_type < 1.5) {\n    d_samps = clamp(samplerate / base_freq, 2, 8000);\n    fb = eff_Q * 0.92;\n    delayed = comb_d.read(d_samps);\n    d_coeff = 0.25 + fatigue * 0.35;\n    comb_lp = comb_lp + (delayed - comb_lp) * d_coeff;\n    comb_d.write(body_input + comb_lp * fb);\n    body_out = delayed * 1.3;\n} else if (body_type < 2.5) {\n    cav_len = clamp(samplerate / base_freq, 2, 8000);\n    cav_fb = eff_Q * (0.88 + pressure * 0.1);\n    cav_fb = clamp(cav_fb, 0, 0.996);\n    cav_del = cav_d.read(cav_len);\n    cav_cut = 0.15 + (1 - pressure) * 0.35 + eff_heat * 0.3;\n    cav_lp = cav_lp + (cav_del - cav_lp) * cav_cut;\n    cav_d.write(body_input + cav_lp * cav_fb);\n    w1 = twopi * body_freq * 1.0 / samplerate;\n    r1 = eff_Q * 0.97;\n    ya = cav_del + 2 * r1 * cos(w1) * ry1_a - r1 * r1 * ry2_a;\n    ry2_a = ry1_a; ry1_a = ya;\n    body_out = (cav_del * 0.35 + ya * 0.65) * 1.2;\n} else {\n    mem_r1 = 1.0;\n    mem_r2 = 1.594;\n    mem_r3 = 2.136;\n    mem_r4 = 2.296;\n    w1 = twopi * body_freq * mem_r1 / samplerate;\n    r1 = eff_Q * 0.999;\n    ya = body_input + 2 * r1 * cos(w1) * ry1_a - r1 * r1 * ry2_a;\n    ry2_a = ry1_a; ry1_a = ya;\n    w2 = twopi * body_freq * mem_r2 / samplerate;\n    r2 = eff_Q * 0.995;\n    yb = body_input + 2 * r2 * cos(w2) * ry1_b - r2 * r2 * ry2_b;\n    ry2_b = ry1_b; ry1_b = yb;\n    w3 = twopi * body_freq * mem_r3 / samplerate;\n    r3 = eff_Q * 0.99;\n    yc = body_input + 2 * r3 * cos(w3) * ry1_c - r3 * r3 * ry2_c;\n    ry2_c = ry1_c; ry1_c = yc;\n    w4 = twopi * body_freq * mem_r4 / samplerate;\n    r4 = eff_Q * 0.985;\n    yd = body_input + 2 * r4 * cos(w4) * ry1_d - r4 * r4 * ry2_d;\n    ry2_d = ry1_d; ry1_d = yd;\n    body_out = (ya * 0.55 + yb * 0.3 + yc * 0.2 + yd * 0.15) * 1.1;\n}\n\nfold_d = 1 + eff_scar * 4;\nfractured = body_out;\nif (eff_scar > 0.01) {\n    biased = body_out + pressure * 0.3;\n    folded = asin(sin(biased * fold_d * 1.5707963)) * 0.6366197;\n    fractured = body_out * (1 - eff_scar) + folded * eff_scar;\n}\n\nfb_source = body_out * (1 - eff_stress) + fractured * eff_stress;\nfb_state = fb_source;\n\nenv_rate = 1.0 / max(eff_decay * samplerate / 1000, 1);\nmain_env = main_env * (1 - env_rate);\n\nbl_env = halo_env * eff_mist;\nout_env = max(main_env, bl_env);\nraw_out = fractured * out_env * 3;\nout1 = tanh(raw_out) * 0.95;",
                                    "fontface": 0,
                                    "fontname": "<Monospaced>",
                                    "fontsize": 12.0,
                                    "id": "g-cb",
                                    "maxclass": "codebox",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 50.0, 50.0, 700.0, 450.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "g-out",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 50.0, 520.0, 35.0, 22.0 ],
                                    "text": "out 1"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "g-out", 0 ],
                                    "source": [ "g-cb", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "g-cb", 0 ],
                                    "source": [ "g-in", 0 ]
                                }
                            }
                        ],
                        "editing_bgcolor": [ 0.65, 0.65, 0.65, 1.0 ]
                    },
                    "patching_rect": [ 525.0, 642.0, 36.0, 22.0 ],
                    "text": "gen~"
                }
            },
            {
                "box": {
                    "id": "vl-3",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 525.0, 672.0, 34.0, 22.0 ],
                    "text": "*~ 1."
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "vlf-3",
                    "maxclass": "flonum",
                    "maximum": 2.0,
                    "minimum": 0.0,
                    "numdecimalplaces": 2,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 570.0, 672.0, 45.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 309.5, 276.0, 45.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "vlr-3",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 620.0, 672.0, 95.0, 22.0 ],
                    "text": "receive v3_level"
                }
            },
            {
                "box": {
                    "id": "vls-3",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 620.0, 695.0, 41.0, 22.0 ],
                    "text": "set $1"
                }
            },
            {
                "box": {
                    "id": "vld-3",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 570.0, 695.0, 32.0, 22.0 ],
                    "text": "0.65"
                }
            },
            {
                "box": {
                    "id": "vs-3",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 525.0, 720.0, 81.0, 22.0 ],
                    "text": "send~ v3_out"
                }
            },
            {
                "box": {
                    "id": "vlk-3",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 570.0, 720.0, 125.0, 22.0 ],
                    "text": "prepend voice_level 3"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 11.0,
                    "id": "vn-4",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 675.0, 560.0, 43.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 390.5, 224.0, 43.0, 19.0 ],
                    "text": "FAULT"
                }
            },
            {
                "box": {
                    "id": "vb-4",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 735.0, 582.0, 24.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 399.5, 246.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "vc-4",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 675.0, 582.0, 39.0, 22.0 ],
                    "text": "click~"
                }
            },
            {
                "box": {
                    "id": "vr-4",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 675.0, 612.0, 77.0, 22.0 ],
                    "text": "receive v4_p"
                }
            },
            {
                "box": {
                    "id": "vg-4",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 0,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "dsp.gen",
                        "rect": [ 0.0, 0.0, 800.0, 600.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "g-in",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 50.0, 14.0, 30.0, 22.0 ],
                                    "text": "in 1"
                                }
                            },
                            {
                                "box": {
                                    "code": "Param pitch(60);\nParam decay_ms(200);\nParam exciter_type(0);\nParam body_type(0);\nParam stress(0.3);\nParam bloom(0.3);\nParam scar(0);\nParam weight(0.5);\nParam mist(0.2);\nParam heat_macro(0.3);\nParam drift_param(0);\nParam density_param(0.5);\nParam flam_pitch_off(0);\nParam flam_vel(1);\nParam flam_pitch_gate(0);\nParam lfo_pitch_off(0);\nParam lfo_stress_off(0);\nParam lfo_bloom_off(0);\nParam lfo_decay_off(0);\nParam lfo_mist_off(0);\nParam lfo_heat_off(0);\nParam lfo_drift_off(0);\nParam lfo_density_off(0);\n\nHistory prev_trig(0);\nHistory pressure(0);\nHistory heat_state(0);\nHistory fatigue(0);\nHistory exc_car_phase(0);\nHistory exc_mod_phase(0);\nHistory exc_env(0);\nHistory noise_filt(0);\nHistory ry1_a(0);\nHistory ry2_a(0);\nHistory ry1_b(0);\nHistory ry2_b(0);\nHistory ry1_c(0);\nHistory ry2_c(0);\nHistory ry1_d(0);\nHistory ry2_d(0);\nHistory comb_lp(0);\nHistory halo_env(0);\nHistory main_env(0);\nHistory pitch_env(0);\nHistory fb_state(0);\nHistory fb_hp(0);\nHistory cav_lp(0);\nHistory fb_lfo_phase(0);\nHistory fb_lp2(0);\nHistory flam_p_env(0);\nDelay comb_d(8820);\nDelay cav_d(8820);\n\ntrig_on = (in1 > 0.5) * (prev_trig <= 0.5);\nvel = in1 * flam_vel;\nprev_trig = in1;\n\nif (trig_on) {\n    pressure = min(pressure + vel * (0.3 + stress * 0.7) * (1 - pressure), 1);\n    fatigue = min(fatigue + 0.02 * (1 - fatigue), 1);\n    exc_env = 1;\n    halo_env = vel * mist;\n    main_env = vel;\n    pitch_env = vel;\n    flam_p_env = flam_pitch_off;\n}\n\np_decay = 0.00002 + (1 - stress) * 0.00008;\npressure = pressure * (1 - p_decay);\nheat_state = heat_state + (pressure - heat_state) * 0.0002;\nheat_state = heat_state * (1 - 0.00005);\nfatigue = fatigue * (1 - 0.000002);\nstiffness = fatigue * 0.6 + pressure * 0.4;\n\neff_stress = clamp(stress + lfo_stress_off, 0, 1);\neff_bloom = clamp(bloom + lfo_bloom_off, 0, 1);\neff_mist = clamp(mist + lfo_mist_off, 0, 1);\neff_heat = clamp(heat_macro + lfo_heat_off + heat_state * 0.5, 0, 1);\neff_drift = clamp(drift_param + lfo_drift_off, 0, 1);\neff_density = clamp(density_param + lfo_density_off, 0, 1);\neff_decay_ms = clamp(decay_ms + lfo_decay_off, 5, 80);\neff_scar = clamp(scar + pressure * eff_stress, 0, 1);\n\nfp_rate = exp(-(flam_pitch_gate * 8)) * 0.15;\nflam_p_env = flam_p_env * (1 - fp_rate);\n\np_env_rate = 0.002 + weight * 0.008;\npitch_env = pitch_env * (1 - p_env_rate);\np_sweep = pitch_env * weight * 24;\np_mod = pitch + lfo_pitch_off + flam_p_env + p_sweep + noise() * pressure * eff_drift * 2;\nbase_freq = mtof(clamp(p_mod, 10, 130));\nw_scale = 1 - weight * 0.35;\nbody_freq = max(base_freq * w_scale, 25);\n\ne_decay = 0.0005 + eff_density * 0.003;\nexc_env = exc_env * (1 - e_decay);\n\nexciter_out = 0;\nif (exciter_type < 0.5) {\n    fm_r = 1.41 + eff_heat * 3;\n    mf = base_freq * fm_r;\n    fm_idx = (12 + eff_heat * 18) * exc_env;\n    exc_mod_phase = wrap(exc_mod_phase + mf / samplerate, 0, 1);\n    mod_sig = sin(exc_mod_phase * twopi) * fm_idx;\n    exc_car_phase = wrap(exc_car_phase + base_freq / samplerate, 0, 1);\n    exciter_out = sin(exc_car_phase * twopi + mod_sig) * exc_env * 1.5;\n} else {\n    n = noise();\n    cutoff = base_freq * (3 + eff_heat * 12);\n    coeff = clamp(1 - exp(-twopi * cutoff / samplerate), 0.001, 0.999);\n    noise_filt = noise_filt + (n - noise_filt) * coeff;\n    exciter_out = noise_filt * 6 * exc_env;\n}\n\nfb_lfo_rate = 0.3 + (1 - eff_bloom) * 7.7;\nfb_lfo_depth_raw = clamp((eff_mist - 0.3) / 0.7, 0, 1);\nfb_lfo_phase = wrap(fb_lfo_phase + fb_lfo_rate / samplerate, 0, 1);\nfb_lfo = sin(fb_lfo_phase * twopi);\nfb_gain = eff_mist * (0.5 + eff_stress * 0.5) * (1 + fb_lfo * fb_lfo_depth_raw * 0.15);\nfb_gain = clamp(fb_gain, 0, 0.95);\nhp_cut_base = 80 + (1 - weight) * 2400;\nhp_cut = hp_cut_base * (1 + fb_lfo * fb_lfo_depth_raw * 0.7);\nhp_c = clamp(1 - exp(-twopi * hp_cut / samplerate), 0.001, 0.999);\nfb_lp = fb_hp + (fb_state - fb_hp) * hp_c;\nfb_hp = fb_lp;\nfb_hpf = fb_state - fb_lp;\nlp2_cut = 800 + eff_bloom * 10000 + fb_lfo * fb_lfo_depth_raw * 3000;\nlp2_c = clamp(1 - exp(-twopi * lp2_cut / samplerate), 0.001, 0.999);\nfb_lp2 = fb_lp2 + (fb_hpf - fb_lp2) * lp2_c;\nfb_ltd = tanh(fb_lp2 * 2.5) * 0.6;\nbl_rate = 0.000001 + (1 - eff_bloom) * 0.0003;\nhalo_env = halo_env * (1 - bl_rate);\nfb_sig = fb_ltd * fb_gain * halo_env;\nbody_input = exciter_out + fb_sig;\n\neff_decay = eff_decay_ms * eff_decay_ms * 2.5;\ndecay_norm = clamp(eff_decay / 16000, 0, 1);\neff_Q = clamp(0.985 + decay_norm * 0.014 - fatigue * 0.15, 0.85, 0.9995);\n\nbody_out = 0;\nif (body_type < 0.5) {\n    w1 = twopi * body_freq * 1.0 / samplerate;\n    r1 = eff_Q;\n    ya = body_input + 2 * r1 * cos(w1) * ry1_a - r1 * r1 * ry2_a;\n    ry2_a = ry1_a; ry1_a = ya;\n    w2 = twopi * body_freq * (1.347 + stiffness * 0.2) / samplerate;\n    r2 = eff_Q * 0.995;\n    yb = body_input + 2 * r2 * cos(w2) * ry1_b - r2 * r2 * ry2_b;\n    ry2_b = ry1_b; ry1_b = yb;\n    w3 = twopi * body_freq * (1.891 + stiffness * 0.25) / samplerate;\n    r3 = eff_Q * 0.99;\n    yc = body_input + 2 * r3 * cos(w3) * ry1_c - r3 * r3 * ry2_c;\n    ry2_c = ry1_c; ry1_c = yc;\n    w4 = twopi * body_freq * (2.534 + stiffness * 0.35) / samplerate;\n    r4 = eff_Q * 0.985;\n    yd = body_input + 2 * r4 * cos(w4) * ry1_d - r4 * r4 * ry2_d;\n    ry2_d = ry1_d; ry1_d = yd;\n    body_out = (ya + yb * 0.8 + yc * 0.55 + yd * 0.4) * 0.35;\n} else if (body_type < 1.5) {\n    d_samps = clamp(samplerate / base_freq, 2, 8000);\n    fb = eff_Q * 0.92;\n    delayed = comb_d.read(d_samps);\n    d_coeff = 0.25 + fatigue * 0.35;\n    comb_lp = comb_lp + (delayed - comb_lp) * d_coeff;\n    comb_d.write(body_input + comb_lp * fb);\n    body_out = delayed * 1.3;\n} else if (body_type < 2.5) {\n    cav_len = clamp(samplerate / base_freq, 2, 8000);\n    cav_fb = eff_Q * (0.88 + pressure * 0.1);\n    cav_fb = clamp(cav_fb, 0, 0.996);\n    cav_del = cav_d.read(cav_len);\n    cav_cut = 0.15 + (1 - pressure) * 0.35 + eff_heat * 0.3;\n    cav_lp = cav_lp + (cav_del - cav_lp) * cav_cut;\n    cav_d.write(body_input + cav_lp * cav_fb);\n    w1 = twopi * body_freq * 1.0 / samplerate;\n    r1 = eff_Q * 0.97;\n    ya = cav_del + 2 * r1 * cos(w1) * ry1_a - r1 * r1 * ry2_a;\n    ry2_a = ry1_a; ry1_a = ya;\n    body_out = (cav_del * 0.35 + ya * 0.65) * 1.2;\n} else {\n    mem_r1 = 1.0;\n    mem_r2 = 1.594;\n    mem_r3 = 2.136;\n    mem_r4 = 2.296;\n    w1 = twopi * body_freq * mem_r1 / samplerate;\n    r1 = eff_Q * 0.999;\n    ya = body_input + 2 * r1 * cos(w1) * ry1_a - r1 * r1 * ry2_a;\n    ry2_a = ry1_a; ry1_a = ya;\n    w2 = twopi * body_freq * mem_r2 / samplerate;\n    r2 = eff_Q * 0.995;\n    yb = body_input + 2 * r2 * cos(w2) * ry1_b - r2 * r2 * ry2_b;\n    ry2_b = ry1_b; ry1_b = yb;\n    w3 = twopi * body_freq * mem_r3 / samplerate;\n    r3 = eff_Q * 0.99;\n    yc = body_input + 2 * r3 * cos(w3) * ry1_c - r3 * r3 * ry2_c;\n    ry2_c = ry1_c; ry1_c = yc;\n    w4 = twopi * body_freq * mem_r4 / samplerate;\n    r4 = eff_Q * 0.985;\n    yd = body_input + 2 * r4 * cos(w4) * ry1_d - r4 * r4 * ry2_d;\n    ry2_d = ry1_d; ry1_d = yd;\n    body_out = (ya * 0.55 + yb * 0.3 + yc * 0.2 + yd * 0.15) * 1.1;\n}\n\nfold_d = 1 + eff_scar * 4;\nfractured = body_out;\nif (eff_scar > 0.01) {\n    biased = body_out + pressure * 0.3;\n    folded = asin(sin(biased * fold_d * 1.5707963)) * 0.6366197;\n    fractured = body_out * (1 - eff_scar) + folded * eff_scar;\n}\n\nfb_source = body_out * (1 - eff_stress) + fractured * eff_stress;\nfb_state = fb_source;\n\nenv_rate = 1.0 / max(eff_decay * samplerate / 1000, 1);\nmain_env = main_env * (1 - env_rate);\n\nbl_env = halo_env * eff_mist;\nout_env = max(main_env, bl_env);\nraw_out = fractured * out_env * 3;\nout1 = tanh(raw_out) * 0.95;",
                                    "fontface": 0,
                                    "fontname": "<Monospaced>",
                                    "fontsize": 12.0,
                                    "id": "g-cb",
                                    "maxclass": "codebox",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 50.0, 50.0, 700.0, 450.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "g-out",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 50.0, 520.0, 35.0, 22.0 ],
                                    "text": "out 1"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "g-out", 0 ],
                                    "source": [ "g-cb", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "g-cb", 0 ],
                                    "source": [ "g-in", 0 ]
                                }
                            }
                        ],
                        "editing_bgcolor": [ 0.65, 0.65, 0.65, 1.0 ]
                    },
                    "patching_rect": [ 675.0, 642.0, 36.0, 22.0 ],
                    "text": "gen~"
                }
            },
            {
                "box": {
                    "id": "vl-4",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 675.0, 672.0, 34.0, 22.0 ],
                    "text": "*~ 1."
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "vlf-4",
                    "maxclass": "flonum",
                    "maximum": 2.0,
                    "minimum": 0.0,
                    "numdecimalplaces": 2,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 720.0, 672.0, 45.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 384.5, 276.0, 45.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "vlr-4",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 770.0, 672.0, 95.0, 22.0 ],
                    "text": "receive v4_level"
                }
            },
            {
                "box": {
                    "id": "vls-4",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 770.0, 695.0, 41.0, 22.0 ],
                    "text": "set $1"
                }
            },
            {
                "box": {
                    "id": "vld-4",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 720.0, 695.0, 32.0, 22.0 ],
                    "text": "0.75"
                }
            },
            {
                "box": {
                    "id": "vs-4",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 675.0, 720.0, 81.0, 22.0 ],
                    "text": "send~ v4_out"
                }
            },
            {
                "box": {
                    "id": "vlk-4",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 720.0, 720.0, 125.0, 22.0 ],
                    "text": "prepend voice_level 4"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 11.0,
                    "id": "vn-5",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 825.0, 560.0, 40.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 470.0, 224.0, 40.0, 19.0 ],
                    "text": "HALO"
                }
            },
            {
                "box": {
                    "id": "vb-5",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 885.0, 582.0, 24.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 478.0, 250.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "vc-5",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 825.0, 582.0, 39.0, 22.0 ],
                    "text": "click~"
                }
            },
            {
                "box": {
                    "id": "vr-5",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 825.0, 612.0, 77.0, 22.0 ],
                    "text": "receive v5_p"
                }
            },
            {
                "box": {
                    "id": "vg-5",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 0,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "dsp.gen",
                        "rect": [ 0.0, 0.0, 800.0, 600.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "g-in",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 50.0, 14.0, 30.0, 22.0 ],
                                    "text": "in 1"
                                }
                            },
                            {
                                "box": {
                                    "code": "Param pitch(60);\nParam decay_ms(200);\nParam exciter_type(0);\nParam body_type(0);\nParam stress(0.3);\nParam bloom(0.3);\nParam scar(0);\nParam weight(0.5);\nParam mist(0.2);\nParam heat_macro(0.3);\nParam drift_param(0);\nParam density_param(0.5);\nParam flam_pitch_off(0);\nParam flam_vel(1);\nParam flam_pitch_gate(0);\nParam lfo_pitch_off(0);\nParam lfo_stress_off(0);\nParam lfo_bloom_off(0);\nParam lfo_decay_off(0);\nParam lfo_mist_off(0);\nParam lfo_heat_off(0);\nParam lfo_drift_off(0);\nParam lfo_density_off(0);\n\nHistory prev_trig(0);\nHistory pressure(0);\nHistory heat_state(0);\nHistory fatigue(0);\nHistory exc_car_phase(0);\nHistory exc_mod_phase(0);\nHistory exc_env(0);\nHistory noise_filt(0);\nHistory ry1_a(0);\nHistory ry2_a(0);\nHistory ry1_b(0);\nHistory ry2_b(0);\nHistory ry1_c(0);\nHistory ry2_c(0);\nHistory ry1_d(0);\nHistory ry2_d(0);\nHistory comb_lp(0);\nHistory halo_env(0);\nHistory main_env(0);\nHistory pitch_env(0);\nHistory fb_state(0);\nHistory fb_hp(0);\nHistory cav_lp(0);\nHistory fb_lfo_phase(0);\nHistory fb_lp2(0);\nHistory flam_p_env(0);\nDelay comb_d(8820);\nDelay cav_d(8820);\n\ntrig_on = (in1 > 0.5) * (prev_trig <= 0.5);\nvel = in1 * flam_vel;\nprev_trig = in1;\n\nif (trig_on) {\n    pressure = min(pressure + vel * (0.3 + stress * 0.7) * (1 - pressure), 1);\n    fatigue = min(fatigue + 0.02 * (1 - fatigue), 1);\n    exc_env = 1;\n    halo_env = vel * mist;\n    main_env = vel;\n    pitch_env = vel;\n    flam_p_env = flam_pitch_off;\n}\n\np_decay = 0.00002 + (1 - stress) * 0.00008;\npressure = pressure * (1 - p_decay);\nheat_state = heat_state + (pressure - heat_state) * 0.0002;\nheat_state = heat_state * (1 - 0.00005);\nfatigue = fatigue * (1 - 0.000002);\nstiffness = fatigue * 0.6 + pressure * 0.4;\n\neff_stress = clamp(stress + lfo_stress_off, 0, 1);\neff_bloom = clamp(bloom + lfo_bloom_off, 0, 1);\neff_mist = clamp(mist + lfo_mist_off, 0, 1);\neff_heat = clamp(heat_macro + lfo_heat_off + heat_state * 0.5, 0, 1);\neff_drift = clamp(drift_param + lfo_drift_off, 0, 1);\neff_density = clamp(density_param + lfo_density_off, 0, 1);\neff_decay_ms = clamp(decay_ms + lfo_decay_off, 5, 80);\neff_scar = clamp(scar + pressure * eff_stress, 0, 1);\n\nfp_rate = exp(-(flam_pitch_gate * 8)) * 0.15;\nflam_p_env = flam_p_env * (1 - fp_rate);\n\np_env_rate = 0.002 + weight * 0.008;\npitch_env = pitch_env * (1 - p_env_rate);\np_sweep = pitch_env * weight * 24;\np_mod = pitch + lfo_pitch_off + flam_p_env + p_sweep + noise() * pressure * eff_drift * 2;\nbase_freq = mtof(clamp(p_mod, 10, 130));\nw_scale = 1 - weight * 0.35;\nbody_freq = max(base_freq * w_scale, 25);\n\ne_decay = 0.0005 + eff_density * 0.003;\nexc_env = exc_env * (1 - e_decay);\n\nexciter_out = 0;\nif (exciter_type < 0.5) {\n    fm_r = 1.41 + eff_heat * 3;\n    mf = base_freq * fm_r;\n    fm_idx = (12 + eff_heat * 18) * exc_env;\n    exc_mod_phase = wrap(exc_mod_phase + mf / samplerate, 0, 1);\n    mod_sig = sin(exc_mod_phase * twopi) * fm_idx;\n    exc_car_phase = wrap(exc_car_phase + base_freq / samplerate, 0, 1);\n    exciter_out = sin(exc_car_phase * twopi + mod_sig) * exc_env * 1.5;\n} else {\n    n = noise();\n    cutoff = base_freq * (3 + eff_heat * 12);\n    coeff = clamp(1 - exp(-twopi * cutoff / samplerate), 0.001, 0.999);\n    noise_filt = noise_filt + (n - noise_filt) * coeff;\n    exciter_out = noise_filt * 6 * exc_env;\n}\n\nfb_lfo_rate = 0.3 + (1 - eff_bloom) * 7.7;\nfb_lfo_depth_raw = clamp((eff_mist - 0.3) / 0.7, 0, 1);\nfb_lfo_phase = wrap(fb_lfo_phase + fb_lfo_rate / samplerate, 0, 1);\nfb_lfo = sin(fb_lfo_phase * twopi);\nfb_gain = eff_mist * (0.5 + eff_stress * 0.5) * (1 + fb_lfo * fb_lfo_depth_raw * 0.15);\nfb_gain = clamp(fb_gain, 0, 0.95);\nhp_cut_base = 80 + (1 - weight) * 2400;\nhp_cut = hp_cut_base * (1 + fb_lfo * fb_lfo_depth_raw * 0.7);\nhp_c = clamp(1 - exp(-twopi * hp_cut / samplerate), 0.001, 0.999);\nfb_lp = fb_hp + (fb_state - fb_hp) * hp_c;\nfb_hp = fb_lp;\nfb_hpf = fb_state - fb_lp;\nlp2_cut = 800 + eff_bloom * 10000 + fb_lfo * fb_lfo_depth_raw * 3000;\nlp2_c = clamp(1 - exp(-twopi * lp2_cut / samplerate), 0.001, 0.999);\nfb_lp2 = fb_lp2 + (fb_hpf - fb_lp2) * lp2_c;\nfb_ltd = tanh(fb_lp2 * 2.5) * 0.6;\nbl_rate = 0.000001 + (1 - eff_bloom) * 0.0003;\nhalo_env = halo_env * (1 - bl_rate);\nfb_sig = fb_ltd * fb_gain * halo_env;\nbody_input = exciter_out + fb_sig;\n\neff_decay = eff_decay_ms * eff_decay_ms * 2.5;\ndecay_norm = clamp(eff_decay / 16000, 0, 1);\neff_Q = clamp(0.985 + decay_norm * 0.014 - fatigue * 0.15, 0.85, 0.9995);\n\nbody_out = 0;\nif (body_type < 0.5) {\n    w1 = twopi * body_freq * 1.0 / samplerate;\n    r1 = eff_Q;\n    ya = body_input + 2 * r1 * cos(w1) * ry1_a - r1 * r1 * ry2_a;\n    ry2_a = ry1_a; ry1_a = ya;\n    w2 = twopi * body_freq * (1.347 + stiffness * 0.2) / samplerate;\n    r2 = eff_Q * 0.995;\n    yb = body_input + 2 * r2 * cos(w2) * ry1_b - r2 * r2 * ry2_b;\n    ry2_b = ry1_b; ry1_b = yb;\n    w3 = twopi * body_freq * (1.891 + stiffness * 0.25) / samplerate;\n    r3 = eff_Q * 0.99;\n    yc = body_input + 2 * r3 * cos(w3) * ry1_c - r3 * r3 * ry2_c;\n    ry2_c = ry1_c; ry1_c = yc;\n    w4 = twopi * body_freq * (2.534 + stiffness * 0.35) / samplerate;\n    r4 = eff_Q * 0.985;\n    yd = body_input + 2 * r4 * cos(w4) * ry1_d - r4 * r4 * ry2_d;\n    ry2_d = ry1_d; ry1_d = yd;\n    body_out = (ya + yb * 0.8 + yc * 0.55 + yd * 0.4) * 0.35;\n} else if (body_type < 1.5) {\n    d_samps = clamp(samplerate / base_freq, 2, 8000);\n    fb = eff_Q * 0.92;\n    delayed = comb_d.read(d_samps);\n    d_coeff = 0.25 + fatigue * 0.35;\n    comb_lp = comb_lp + (delayed - comb_lp) * d_coeff;\n    comb_d.write(body_input + comb_lp * fb);\n    body_out = delayed * 1.3;\n} else if (body_type < 2.5) {\n    cav_len = clamp(samplerate / base_freq, 2, 8000);\n    cav_fb = eff_Q * (0.88 + pressure * 0.1);\n    cav_fb = clamp(cav_fb, 0, 0.996);\n    cav_del = cav_d.read(cav_len);\n    cav_cut = 0.15 + (1 - pressure) * 0.35 + eff_heat * 0.3;\n    cav_lp = cav_lp + (cav_del - cav_lp) * cav_cut;\n    cav_d.write(body_input + cav_lp * cav_fb);\n    w1 = twopi * body_freq * 1.0 / samplerate;\n    r1 = eff_Q * 0.97;\n    ya = cav_del + 2 * r1 * cos(w1) * ry1_a - r1 * r1 * ry2_a;\n    ry2_a = ry1_a; ry1_a = ya;\n    body_out = (cav_del * 0.35 + ya * 0.65) * 1.2;\n} else {\n    mem_r1 = 1.0;\n    mem_r2 = 1.594;\n    mem_r3 = 2.136;\n    mem_r4 = 2.296;\n    w1 = twopi * body_freq * mem_r1 / samplerate;\n    r1 = eff_Q * 0.999;\n    ya = body_input + 2 * r1 * cos(w1) * ry1_a - r1 * r1 * ry2_a;\n    ry2_a = ry1_a; ry1_a = ya;\n    w2 = twopi * body_freq * mem_r2 / samplerate;\n    r2 = eff_Q * 0.995;\n    yb = body_input + 2 * r2 * cos(w2) * ry1_b - r2 * r2 * ry2_b;\n    ry2_b = ry1_b; ry1_b = yb;\n    w3 = twopi * body_freq * mem_r3 / samplerate;\n    r3 = eff_Q * 0.99;\n    yc = body_input + 2 * r3 * cos(w3) * ry1_c - r3 * r3 * ry2_c;\n    ry2_c = ry1_c; ry1_c = yc;\n    w4 = twopi * body_freq * mem_r4 / samplerate;\n    r4 = eff_Q * 0.985;\n    yd = body_input + 2 * r4 * cos(w4) * ry1_d - r4 * r4 * ry2_d;\n    ry2_d = ry1_d; ry1_d = yd;\n    body_out = (ya * 0.55 + yb * 0.3 + yc * 0.2 + yd * 0.15) * 1.1;\n}\n\nfold_d = 1 + eff_scar * 4;\nfractured = body_out;\nif (eff_scar > 0.01) {\n    biased = body_out + pressure * 0.3;\n    folded = asin(sin(biased * fold_d * 1.5707963)) * 0.6366197;\n    fractured = body_out * (1 - eff_scar) + folded * eff_scar;\n}\n\nfb_source = body_out * (1 - eff_stress) + fractured * eff_stress;\nfb_state = fb_source;\n\nenv_rate = 1.0 / max(eff_decay * samplerate / 1000, 1);\nmain_env = main_env * (1 - env_rate);\n\nbl_env = halo_env * eff_mist;\nout_env = max(main_env, bl_env);\nraw_out = fractured * out_env * 3;\nout1 = tanh(raw_out) * 0.95;",
                                    "fontface": 0,
                                    "fontname": "<Monospaced>",
                                    "fontsize": 12.0,
                                    "id": "g-cb",
                                    "maxclass": "codebox",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 50.0, 50.0, 700.0, 450.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "g-out",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 50.0, 520.0, 35.0, 22.0 ],
                                    "text": "out 1"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "g-out", 0 ],
                                    "source": [ "g-cb", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "g-cb", 0 ],
                                    "source": [ "g-in", 0 ]
                                }
                            }
                        ],
                        "editing_bgcolor": [ 0.65, 0.65, 0.65, 1.0 ]
                    },
                    "patching_rect": [ 825.0, 642.0, 36.0, 22.0 ],
                    "text": "gen~"
                }
            },
            {
                "box": {
                    "id": "vl-5",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 825.0, 672.0, 34.0, 22.0 ],
                    "text": "*~ 1."
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "vlf-5",
                    "maxclass": "flonum",
                    "maximum": 2.0,
                    "minimum": 0.0,
                    "numdecimalplaces": 2,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 870.0, 672.0, 45.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 463.0, 280.0, 45.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "vlr-5",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 920.0, 672.0, 95.0, 22.0 ],
                    "text": "receive v5_level"
                }
            },
            {
                "box": {
                    "id": "vls-5",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 920.0, 695.0, 41.0, 22.0 ],
                    "text": "set $1"
                }
            },
            {
                "box": {
                    "id": "vld-5",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 870.0, 695.0, 32.0, 22.0 ],
                    "text": "0.55"
                }
            },
            {
                "box": {
                    "id": "vs-5",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 825.0, 720.0, 81.0, 22.0 ],
                    "text": "send~ v5_out"
                }
            },
            {
                "box": {
                    "id": "vlk-5",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 870.0, 720.0, 125.0, 22.0 ],
                    "text": "prepend voice_level 5"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 14.0,
                    "id": "sec-mx",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 765.0, 53.0, 23.0 ],
                    "text": "MIXER",
                    "textcolor": [ 0.3, 0.3, 0.3, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "mr-0",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 75.0, 780.0, 94.0, 22.0 ],
                    "text": "receive~ v0_out"
                }
            },
            {
                "box": {
                    "id": "mp-rcv-0",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 75.0, 802.0, 90.0, 22.0 ],
                    "text": "receive v0_pan"
                }
            },
            {
                "box": {
                    "id": "mp-lfo-0",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 75.0, 824.0, 109.0, 22.0 ],
                    "text": "receive v0_pan_lfo"
                }
            },
            {
                "box": {
                    "id": "mp-sum-0",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 75.0, 846.0, 29.5, 22.0 ],
                    "text": "+ 0."
                }
            },
            {
                "box": {
                    "id": "mp-clip-0",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 75.0, 868.0, 53.0, 22.0 ],
                    "text": "clip 0. 1."
                }
            },
            {
                "box": {
                    "id": "mp-cos-0",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 75.0, 890.0, 101.0, 22.0 ],
                    "text": "expr sqrt(1. - $f1)"
                }
            },
            {
                "box": {
                    "id": "mp-sin-0",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 75.0, 912.0, 80.0, 22.0 ],
                    "text": "expr sqrt($f1)"
                }
            },
            {
                "box": {
                    "id": "mp-l-0",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 75.0, 934.0, 40.0, 22.0 ],
                    "text": "*~ 0.7"
                }
            },
            {
                "box": {
                    "id": "mp-r-0",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 125.0, 934.0, 40.0, 22.0 ],
                    "text": "*~ 0.7"
                }
            },
            {
                "box": {
                    "id": "mr-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 195.0, 780.0, 94.0, 22.0 ],
                    "text": "receive~ v1_out"
                }
            },
            {
                "box": {
                    "id": "mp-rcv-1",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 195.0, 802.0, 90.0, 22.0 ],
                    "text": "receive v1_pan"
                }
            },
            {
                "box": {
                    "id": "mp-lfo-1",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 195.0, 824.0, 109.0, 22.0 ],
                    "text": "receive v1_pan_lfo"
                }
            },
            {
                "box": {
                    "id": "mp-sum-1",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 195.0, 846.0, 29.5, 22.0 ],
                    "text": "+ 0."
                }
            },
            {
                "box": {
                    "id": "mp-clip-1",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 195.0, 868.0, 53.0, 22.0 ],
                    "text": "clip 0. 1."
                }
            },
            {
                "box": {
                    "id": "mp-cos-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 195.0, 890.0, 101.0, 22.0 ],
                    "text": "expr sqrt(1. - $f1)"
                }
            },
            {
                "box": {
                    "id": "mp-sin-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 195.0, 912.0, 80.0, 22.0 ],
                    "text": "expr sqrt($f1)"
                }
            },
            {
                "box": {
                    "id": "mp-l-1",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 195.0, 934.0, 40.0, 22.0 ],
                    "text": "*~ 0.7"
                }
            },
            {
                "box": {
                    "id": "mp-r-1",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 245.0, 934.0, 40.0, 22.0 ],
                    "text": "*~ 0.7"
                }
            },
            {
                "box": {
                    "id": "mr-2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 315.0, 780.0, 94.0, 22.0 ],
                    "text": "receive~ v2_out"
                }
            },
            {
                "box": {
                    "id": "mp-rcv-2",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 315.0, 802.0, 90.0, 22.0 ],
                    "text": "receive v2_pan"
                }
            },
            {
                "box": {
                    "id": "mp-lfo-2",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 315.0, 824.0, 109.0, 22.0 ],
                    "text": "receive v2_pan_lfo"
                }
            },
            {
                "box": {
                    "id": "mp-sum-2",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 315.0, 846.0, 29.5, 22.0 ],
                    "text": "+ 0."
                }
            },
            {
                "box": {
                    "id": "mp-clip-2",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 315.0, 868.0, 53.0, 22.0 ],
                    "text": "clip 0. 1."
                }
            },
            {
                "box": {
                    "id": "mp-cos-2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 315.0, 890.0, 101.0, 22.0 ],
                    "text": "expr sqrt(1. - $f1)"
                }
            },
            {
                "box": {
                    "id": "mp-sin-2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 315.0, 912.0, 80.0, 22.0 ],
                    "text": "expr sqrt($f1)"
                }
            },
            {
                "box": {
                    "id": "mp-l-2",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 315.0, 934.0, 40.0, 22.0 ],
                    "text": "*~ 0.7"
                }
            },
            {
                "box": {
                    "id": "mp-r-2",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 365.0, 934.0, 40.0, 22.0 ],
                    "text": "*~ 0.7"
                }
            },
            {
                "box": {
                    "id": "mr-3",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 435.0, 780.0, 94.0, 22.0 ],
                    "text": "receive~ v3_out"
                }
            },
            {
                "box": {
                    "id": "mp-rcv-3",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 435.0, 802.0, 90.0, 22.0 ],
                    "text": "receive v3_pan"
                }
            },
            {
                "box": {
                    "id": "mp-lfo-3",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 435.0, 824.0, 109.0, 22.0 ],
                    "text": "receive v3_pan_lfo"
                }
            },
            {
                "box": {
                    "id": "mp-sum-3",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 435.0, 846.0, 29.5, 22.0 ],
                    "text": "+ 0."
                }
            },
            {
                "box": {
                    "id": "mp-clip-3",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 435.0, 868.0, 53.0, 22.0 ],
                    "text": "clip 0. 1."
                }
            },
            {
                "box": {
                    "id": "mp-cos-3",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 435.0, 890.0, 101.0, 22.0 ],
                    "text": "expr sqrt(1. - $f1)"
                }
            },
            {
                "box": {
                    "id": "mp-sin-3",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 435.0, 912.0, 80.0, 22.0 ],
                    "text": "expr sqrt($f1)"
                }
            },
            {
                "box": {
                    "id": "mp-l-3",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 435.0, 934.0, 40.0, 22.0 ],
                    "text": "*~ 0.7"
                }
            },
            {
                "box": {
                    "id": "mp-r-3",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 485.0, 934.0, 40.0, 22.0 ],
                    "text": "*~ 0.7"
                }
            },
            {
                "box": {
                    "id": "mr-4",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 555.0, 780.0, 94.0, 22.0 ],
                    "text": "receive~ v4_out"
                }
            },
            {
                "box": {
                    "id": "mp-rcv-4",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 555.0, 802.0, 90.0, 22.0 ],
                    "text": "receive v4_pan"
                }
            },
            {
                "box": {
                    "id": "mp-lfo-4",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 555.0, 824.0, 109.0, 22.0 ],
                    "text": "receive v4_pan_lfo"
                }
            },
            {
                "box": {
                    "id": "mp-sum-4",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 555.0, 846.0, 29.5, 22.0 ],
                    "text": "+ 0."
                }
            },
            {
                "box": {
                    "id": "mp-clip-4",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 555.0, 868.0, 53.0, 22.0 ],
                    "text": "clip 0. 1."
                }
            },
            {
                "box": {
                    "id": "mp-cos-4",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 555.0, 890.0, 101.0, 22.0 ],
                    "text": "expr sqrt(1. - $f1)"
                }
            },
            {
                "box": {
                    "id": "mp-sin-4",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 555.0, 912.0, 80.0, 22.0 ],
                    "text": "expr sqrt($f1)"
                }
            },
            {
                "box": {
                    "id": "mp-l-4",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 555.0, 934.0, 40.0, 22.0 ],
                    "text": "*~ 0.7"
                }
            },
            {
                "box": {
                    "id": "mp-r-4",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 605.0, 934.0, 40.0, 22.0 ],
                    "text": "*~ 0.7"
                }
            },
            {
                "box": {
                    "id": "mr-5",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 675.0, 780.0, 94.0, 22.0 ],
                    "text": "receive~ v5_out"
                }
            },
            {
                "box": {
                    "id": "mp-rcv-5",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 675.0, 802.0, 90.0, 22.0 ],
                    "text": "receive v5_pan"
                }
            },
            {
                "box": {
                    "id": "mp-lfo-5",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 675.0, 824.0, 109.0, 22.0 ],
                    "text": "receive v5_pan_lfo"
                }
            },
            {
                "box": {
                    "id": "mp-sum-5",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 675.0, 846.0, 29.5, 22.0 ],
                    "text": "+ 0."
                }
            },
            {
                "box": {
                    "id": "mp-clip-5",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 675.0, 868.0, 53.0, 22.0 ],
                    "text": "clip 0. 1."
                }
            },
            {
                "box": {
                    "id": "mp-cos-5",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 675.0, 890.0, 101.0, 22.0 ],
                    "text": "expr sqrt(1. - $f1)"
                }
            },
            {
                "box": {
                    "id": "mp-sin-5",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 675.0, 912.0, 80.0, 22.0 ],
                    "text": "expr sqrt($f1)"
                }
            },
            {
                "box": {
                    "id": "mp-l-5",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 675.0, 934.0, 40.0, 22.0 ],
                    "text": "*~ 0.7"
                }
            },
            {
                "box": {
                    "id": "mp-r-5",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 725.0, 934.0, 40.0, 22.0 ],
                    "text": "*~ 0.7"
                }
            },
            {
                "box": {
                    "id": "mx-l-0",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 75.0, 961.0, 29.5, 22.0 ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "id": "mx-l-1",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 195.0, 961.0, 29.5, 22.0 ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "id": "mx-l-2",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 315.0, 961.0, 29.5, 22.0 ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "id": "mx-l-3",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 435.0, 961.0, 29.5, 22.0 ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "id": "mx-l-4",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 555.0, 961.0, 29.5, 22.0 ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "id": "mx-r-0",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 125.0, 961.0, 29.5, 22.0 ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "id": "mx-r-1",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 245.0, 961.0, 29.5, 22.0 ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "id": "mx-r-2",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 365.0, 961.0, 29.5, 22.0 ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "id": "mx-r-3",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 485.0, 961.0, 29.5, 22.0 ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "id": "mx-r-4",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 605.0, 961.0, 29.5, 22.0 ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "id": "mx-sig1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 73.5, 1057.0, 44.0, 22.0 ],
                    "text": "sig~ 1."
                }
            },
            {
                "box": {
                    "id": "mx-gain",
                    "maxclass": "gain~",
                    "multichannelvariant": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "orientation": 1,
                    "outlettype": [ "signal", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 128.5, 1057.0, 400.0, 30.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 801.0, 363.0, 131.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "mx-mulL",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 73.5, 1093.0, 29.5, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "mx-mulR",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 548.5, 1093.0, 29.5, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "mx-limL",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 73.5, 1120.0, 64.0, 22.0 ],
                    "text": "clip~ -1. 1."
                }
            },
            {
                "box": {
                    "id": "mx-limR",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 548.5, 1120.0, 64.0, 22.0 ],
                    "text": "clip~ -1. 1."
                }
            },
            {
                "box": {
                    "id": "mx-meter",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 73.5, 1148.0, 500.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 801.0, 397.0, 127.0, 12.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.8901960784313725, 1.0, 0.1568627450980392, 1.0 ],
                    "fgcolor": [ 0.3568627450980392, 1.0, 0.43529411764705883, 1.0 ],
                    "gridcolor": [ 0.20415044284896, 0.204150386084683, 0.204150400918096, 0.0 ],
                    "id": "mx-scope",
                    "maxclass": "scope~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 598.5, 1057.0, 200.0, 56.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 621.0, 181.0, 312.0, 153.0 ]
                }
            },
            {
                "box": {
                    "id": "mx-dac",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 73.5, 1172.0, 55.0, 22.0 ],
                    "text": "dac~ 1 2"
                }
            },
            {
                "box": {
                    "id": "out-at",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 215.0, 1171.0, 24.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 972.0, 150.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontname": "Helvetica",
                    "id": "out-al",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 245.0, 1173.0, 98.0, 21.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 900.0, 126.0, 98.0, 21.0 ],
                    "text": "AUDIO ON/OFF"
                }
            },
            {
                "box": {
                    "id": "out-as",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [ "bang", "bang", "" ],
                    "patching_rect": [ 215.0, 1203.0, 44.0, 22.0 ],
                    "text": "sel 0 1"
                }
            },
            {
                "box": {
                    "id": "out-ms",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 215.0, 1233.0, 31.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 972.0, 181.0, 31.0, 22.0 ],
                    "text": "stop"
                }
            },
            {
                "box": {
                    "id": "out-mw",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 260.0, 1233.0, 72.0, 22.0 ],
                    "text": "startwindow"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 14.0,
                    "id": "sec-ed",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 48.5, 1216.0, 109.0, 23.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 59.0, 328.0, 109.0, 23.0 ],
                    "text": "VOICE EDITOR",
                    "textcolor": [ 0.3, 0.3, 0.3, 1.0 ]
                }
            },
            {
                "box": {
                    "activebgcolor": [ 0.089792420291703, 0.089792385133236, 0.089792394259233, 1.0 ],
                    "activebgoncolor": [ 0.250980392156863, 0.203921568627451, 0.937254901960784, 1.0 ],
                    "focusbordercolor": [ 0.8, 0.8, 0.8, 1.0 ],
                    "id": "vc-tab",
                    "inactivetextoncolor": [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
                    "maxclass": "live.tab",
                    "num_lines_patching": 6,
                    "num_lines_presentation": 6,
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 1252.0, 1057.0, 85.0, 175.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 69.0, 584.0, 64.0, 161.0 ],
                    "saved_attribute_attributes": {
                        "activebgcolor": {
                            "expression": "themecolor.live_contrast_frame"
                        },
                        "activebgoncolor": {
                            "expression": "themecolor.live_midi_assignment"
                        },
                        "focusbordercolor": {
                            "expression": "themecolor.live_dial_needle"
                        },
                        "inactivetextoncolor": {
                            "expression": "themecolor.live_numbox_triangle"
                        },
                        "valueof": {
                            "parameter_enum": [ "MASS", "VEIN", "SHARD", "HUSK", "FAULT", "HALO" ],
                            "parameter_longname": "voice_select",
                            "parameter_mmax": 5,
                            "parameter_modmode": 0,
                            "parameter_shortname": "voice",
                            "parameter_type": 2,
                            "parameter_unitstyle": 9
                        }
                    },
                    "varname": "live.tab"
                }
            },
            {
                "box": {
                    "id": "vc-js",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 8,
                    "outlettype": [ "", "", "", "", "", "", "", "" ],
                    "patching_rect": [ 75.0, 1278.0, 92.5, 22.0 ],
                    "saved_object_attributes": {
                        "filename": "voicectrl.js",
                        "parameter_enable": 0
                    },
                    "text": "js voicectrl.js"
                }
            },
            {
                "box": {
                    "id": "vc-initmsg",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1360.0, 1206.0, 29.5, 22.0 ],
                    "text": "init"
                }
            },
            {
                "box": {
                    "id": "vp-0",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 75.0, 1319.0, 64.0, 22.0 ],
                    "text": "send v0_p"
                }
            },
            {
                "box": {
                    "id": "vp-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 225.0, 1319.0, 64.0, 22.0 ],
                    "text": "send v1_p"
                }
            },
            {
                "box": {
                    "id": "vp-2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 375.0, 1319.0, 64.0, 22.0 ],
                    "text": "send v2_p"
                }
            },
            {
                "box": {
                    "id": "vp-3",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 525.0, 1319.0, 64.0, 22.0 ],
                    "text": "send v3_p"
                }
            },
            {
                "box": {
                    "id": "vp-4",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 675.0, 1319.0, 64.0, 22.0 ],
                    "text": "send v4_p"
                }
            },
            {
                "box": {
                    "id": "vp-5",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 825.0, 1319.0, 64.0, 22.0 ],
                    "text": "send v5_p"
                }
            },
            {
                "box": {
                    "id": "vc-route",
                    "maxclass": "newobj",
                    "numinlets": 14,
                    "numoutlets": 14,
                    "outlettype": [ "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
                    "patching_rect": [ 75.0, 1349.0, 646.0, 22.0 ],
                    "text": "route stress bloom scar weight mist heat_macro drift_param density_param pitch decay_ms exciter_type body_type pan"
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "dl-0",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 25.0, 1378.0, 49.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 59.0, 365.0, 49.0, 18.0 ],
                    "text": "STRESS"
                }
            },
            {
                "box": {
                    "id": "dd-0",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 35.0, 1396.0, 40.0, 40.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 69.0, 383.0, 40.0, 40.0 ]
                }
            },
            {
                "box": {
                    "id": "ds-0",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 35.0, 1440.0, 41.0, 22.0 ],
                    "text": "set $1"
                }
            },
            {
                "box": {
                    "id": "dp-0",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 35.0, 1468.0, 88.0, 22.0 ],
                    "text": "prepend stress"
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "dl-1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 108.0, 1378.0, 45.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 142.0, 365.0, 45.0, 18.0 ],
                    "text": "BLOOM"
                }
            },
            {
                "box": {
                    "id": "dd-1",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 118.0, 1396.0, 40.0, 40.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 152.0, 383.0, 40.0, 40.0 ]
                }
            },
            {
                "box": {
                    "id": "ds-1",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 118.0, 1440.0, 41.0, 22.0 ],
                    "text": "set $1"
                }
            },
            {
                "box": {
                    "id": "dp-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 118.0, 1468.0, 89.0, 22.0 ],
                    "text": "prepend bloom"
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "dl-2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 191.0, 1378.0, 36.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 225.0, 365.0, 36.0, 18.0 ],
                    "text": "SCAR"
                }
            },
            {
                "box": {
                    "id": "dd-2",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 201.0, 1396.0, 40.0, 40.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 235.0, 383.0, 40.0, 40.0 ]
                }
            },
            {
                "box": {
                    "id": "ds-2",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 201.0, 1440.0, 41.0, 22.0 ],
                    "text": "set $1"
                }
            },
            {
                "box": {
                    "id": "dp-2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 201.0, 1468.0, 79.0, 22.0 ],
                    "text": "prepend scar"
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "dl-3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 274.0, 1378.0, 48.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 308.0, 365.0, 48.0, 18.0 ],
                    "text": "WEIGHT"
                }
            },
            {
                "box": {
                    "id": "dd-3",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 284.0, 1396.0, 40.0, 40.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 318.0, 383.0, 40.0, 40.0 ]
                }
            },
            {
                "box": {
                    "id": "ds-3",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 284.0, 1440.0, 41.0, 22.0 ],
                    "text": "set $1"
                }
            },
            {
                "box": {
                    "id": "dp-3",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 284.0, 1468.0, 91.0, 22.0 ],
                    "text": "prepend weight"
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "dl-4",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 357.0, 1378.0, 32.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 391.0, 365.0, 32.0, 18.0 ],
                    "text": "MIST"
                }
            },
            {
                "box": {
                    "id": "dd-4",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 367.0, 1396.0, 40.0, 40.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 401.0, 383.0, 40.0, 40.0 ]
                }
            },
            {
                "box": {
                    "id": "ds-4",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 367.0, 1440.0, 41.0, 22.0 ],
                    "text": "set $1"
                }
            },
            {
                "box": {
                    "id": "dp-4",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 367.0, 1468.0, 78.0, 22.0 ],
                    "text": "prepend mist"
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "dl-5",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 440.0, 1378.0, 34.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 474.0, 365.0, 34.0, 18.0 ],
                    "text": "HEAT"
                }
            },
            {
                "box": {
                    "id": "dd-5",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 450.0, 1396.0, 40.0, 40.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 484.0, 383.0, 40.0, 40.0 ]
                }
            },
            {
                "box": {
                    "id": "ds-5",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 450.0, 1440.0, 41.0, 22.0 ],
                    "text": "set $1"
                }
            },
            {
                "box": {
                    "id": "dp-5",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 450.0, 1468.0, 119.0, 22.0 ],
                    "text": "prepend heat_macro"
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "dl-6",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 523.0, 1378.0, 38.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 59.0, 431.0, 38.0, 18.0 ],
                    "text": "DRIFT"
                }
            },
            {
                "box": {
                    "id": "dd-6",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 533.0, 1396.0, 40.0, 40.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 69.0, 449.0, 40.0, 40.0 ]
                }
            },
            {
                "box": {
                    "id": "ds-6",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 533.0, 1440.0, 41.0, 22.0 ],
                    "text": "set $1"
                }
            },
            {
                "box": {
                    "id": "dp-6",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 533.0, 1468.0, 117.0, 22.0 ],
                    "text": "prepend drift_param"
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "dl-7",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 606.0, 1378.0, 52.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 142.0, 431.0, 52.0, 18.0 ],
                    "text": "DENSITY"
                }
            },
            {
                "box": {
                    "id": "dd-7",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 616.0, 1396.0, 40.0, 40.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 152.0, 449.0, 40.0, 40.0 ]
                }
            },
            {
                "box": {
                    "id": "ds-7",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 616.0, 1440.0, 41.0, 22.0 ],
                    "text": "set $1"
                }
            },
            {
                "box": {
                    "id": "dp-7",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 616.0, 1468.0, 135.0, 22.0 ],
                    "text": "prepend density_param"
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "dl-8",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 689.0, 1378.0, 38.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 225.0, 431.0, 38.0, 18.0 ],
                    "text": "PITCH"
                }
            },
            {
                "box": {
                    "id": "dd-8",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 699.0, 1396.0, 40.0, 40.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 235.0, 449.0, 40.0, 40.0 ]
                }
            },
            {
                "box": {
                    "id": "ds-8",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 699.0, 1440.0, 41.0, 22.0 ],
                    "text": "set $1"
                }
            },
            {
                "box": {
                    "id": "dp-8",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 699.0, 1468.0, 81.0, 22.0 ],
                    "text": "prepend pitch"
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "dl-9",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 772.0, 1378.0, 42.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 308.0, 431.0, 42.0, 18.0 ],
                    "text": "DECAY"
                }
            },
            {
                "box": {
                    "id": "dd-9",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 782.0, 1396.0, 40.0, 40.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 318.0, 449.0, 40.0, 40.0 ]
                }
            },
            {
                "box": {
                    "id": "ds-9",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 782.0, 1440.0, 41.0, 22.0 ],
                    "text": "set $1"
                }
            },
            {
                "box": {
                    "id": "dp-9",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 782.0, 1468.0, 111.0, 22.0 ],
                    "text": "prepend decay_ms"
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "dl-10",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 855.0, 1378.0, 52.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 391.0, 431.0, 52.0, 18.0 ],
                    "text": "EXCITER"
                }
            },
            {
                "box": {
                    "id": "dd-10",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 865.0, 1396.0, 40.0, 40.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 401.0, 449.0, 40.0, 40.0 ]
                }
            },
            {
                "box": {
                    "id": "ds-10",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 865.0, 1440.0, 41.0, 22.0 ],
                    "text": "set $1"
                }
            },
            {
                "box": {
                    "id": "dp-10",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 865.0, 1468.0, 121.0, 22.0 ],
                    "text": "prepend exciter_type"
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "dl-11",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 938.0, 1378.0, 37.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 474.0, 431.0, 37.0, 18.0 ],
                    "text": "BODY"
                }
            },
            {
                "box": {
                    "id": "dd-11",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 948.0, 1396.0, 40.0, 40.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 484.0, 449.0, 40.0, 40.0 ]
                }
            },
            {
                "box": {
                    "id": "ds-11",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 948.0, 1440.0, 41.0, 22.0 ],
                    "text": "set $1"
                }
            },
            {
                "box": {
                    "id": "dp-11",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 948.0, 1468.0, 111.0, 22.0 ],
                    "text": "prepend body_type"
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "dl-12",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1021.0, 1378.0, 28.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 557.0, 431.0, 28.0, 18.0 ],
                    "text": "PAN"
                }
            },
            {
                "box": {
                    "id": "dd-12",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1031.0, 1396.0, 40.0, 40.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 567.0, 449.0, 40.0, 40.0 ]
                }
            },
            {
                "box": {
                    "id": "ds-12",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1031.0, 1440.0, 41.0, 22.0 ],
                    "text": "set $1"
                }
            },
            {
                "box": {
                    "id": "dp-12",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1031.0, 1468.0, 76.0, 22.0 ],
                    "text": "prepend pan"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 14.0,
                    "id": "sec-fl",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 15.0, 1535.0, 105.0, 23.0 ],
                    "text": "FLAM ENGINE",
                    "textcolor": [ 0.3, 0.3, 0.3, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "fl-tp-0",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 75.0, 1507.0, 83.0, 22.0 ],
                    "text": "prepend trig 0"
                }
            },
            {
                "box": {
                    "id": "fl-tp-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 225.0, 1507.0, 83.0, 22.0 ],
                    "text": "prepend trig 1"
                }
            },
            {
                "box": {
                    "id": "fl-tp-2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 375.0, 1507.0, 83.0, 22.0 ],
                    "text": "prepend trig 2"
                }
            },
            {
                "box": {
                    "id": "fl-tp-3",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 525.0, 1507.0, 83.0, 22.0 ],
                    "text": "prepend trig 3"
                }
            },
            {
                "box": {
                    "id": "fl-tp-4",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 675.0, 1507.0, 83.0, 22.0 ],
                    "text": "prepend trig 4"
                }
            },
            {
                "box": {
                    "id": "fl-tp-5",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 825.0, 1507.0, 83.0, 22.0 ],
                    "text": "prepend trig 5"
                }
            },
            {
                "box": {
                    "id": "fl-js",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 7,
                    "outlettype": [ "", "", "", "", "", "", "" ],
                    "patching_rect": [ 75.0, 1592.0, 91.0, 22.0 ],
                    "saved_object_attributes": {
                        "filename": "flamengine.js",
                        "parameter_enable": 0
                    },
                    "text": "js flamengine.js"
                }
            },
            {
                "box": {
                    "id": "fl-snd-0",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 75.0, 1617.0, 74.0, 22.0 ],
                    "text": "send v0_trig"
                }
            },
            {
                "box": {
                    "id": "fl-snd-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 196.83333333333331, 1655.0, 74.0, 22.0 ],
                    "text": "send v1_trig"
                }
            },
            {
                "box": {
                    "id": "fl-snd-2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 375.0, 1617.0, 74.0, 22.0 ],
                    "text": "send v2_trig"
                }
            },
            {
                "box": {
                    "id": "fl-snd-3",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 525.0, 1617.0, 74.0, 22.0 ],
                    "text": "send v3_trig"
                }
            },
            {
                "box": {
                    "id": "fl-snd-4",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 675.0, 1617.0, 74.0, 22.0 ],
                    "text": "send v4_trig"
                }
            },
            {
                "box": {
                    "id": "fl-snd-5",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 825.0, 1617.0, 74.0, 22.0 ],
                    "text": "send v5_trig"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "fl-master-lbl",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 15.0, 1647.0, 63.0, 20.0 ],
                    "text": "MASTER:"
                }
            },
            {
                "box": {
                    "id": "fl-m-sub",
                    "items": [ "OFF", ",", "1/32", ",", "1/48", ",", "1/64", ",", "1/96" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 85.0, 1647.0, 75.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "fl-m-sub-p",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 196.83333333333331, 1682.0, 159.0, 22.0 ],
                    "text": "prepend master_subdivision"
                }
            },
            {
                "box": {
                    "id": "fl-m-prob",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 108.0, 1743.0, 40.0, 40.0 ]
                }
            },
            {
                "box": {
                    "id": "fl-m-prob-p",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 171.0, 1747.0, 154.0, 22.0 ],
                    "text": "prepend master_probability"
                }
            },
            {
                "box": {
                    "fontsize": 9.0,
                    "id": "fl-m-prob-l",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 374.5, 1657.5, 34.0, 17.0 ],
                    "text": "PROB"
                }
            },
            {
                "box": {
                    "id": "fl-m-hum",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 551.0, 1655.0, 40.0, 40.0 ]
                }
            },
            {
                "box": {
                    "id": "fl-m-hum-p",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 586.0, 1660.0, 151.0, 22.0 ],
                    "text": "prepend master_humanize"
                }
            },
            {
                "box": {
                    "fontsize": 9.0,
                    "id": "fl-m-hum-l",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 551.0, 1688.0, 41.0, 17.0 ],
                    "text": "HUMAN"
                }
            },
            {
                "box": {
                    "id": "fl-m-burst",
                    "maxclass": "number",
                    "maximum": 8,
                    "minimum": 1,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 974.0, 1688.0, 40.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "fl-m-burst-p",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1019.0, 1688.0, 126.0, 22.0 ],
                    "text": "prepend master_burst"
                }
            },
            {
                "box": {
                    "fontsize": 9.0,
                    "id": "fl-m-burst-l",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 974.0, 1713.0, 39.0, 17.0 ],
                    "text": "BURST"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 9.0,
                    "id": "fl-master-lbl2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 375.0, 1728.0, 38.0, 17.0 ],
                    "text": "PITCH:"
                }
            },
            {
                "box": {
                    "id": "fl-m-pitch",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 420.0, 1742.0, 40.0, 40.0 ]
                }
            },
            {
                "box": {
                    "id": "fl-m-pitch-p",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 455.0, 1728.0, 155.0, 22.0 ],
                    "text": "prepend master_pitch_mod"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 9.0,
                    "id": "fl-master-lbl3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 600.0, 1728.0, 48.0, 17.0 ],
                    "text": "VDECAY:"
                }
            },
            {
                "box": {
                    "id": "fl-m-vdecay",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 660.0, 1742.0, 40.0, 40.0 ]
                }
            },
            {
                "box": {
                    "id": "fl-m-vdecay-p",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 695.0, 1728.0, 153.0, 22.0 ],
                    "text": "prepend master_vel_decay"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 10.0,
                    "id": "fl-vl-0",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 75.0, 1777.0, 37.0, 18.0 ],
                    "text": "MASS"
                }
            },
            {
                "box": {
                    "id": "fl-subdivision-0",
                    "items": [ "OFF", ",", "1/32", ",", "1/48", ",", "1/64", ",", "1/96" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 75.0, 1795.0, 75.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "fl-subdivision-p-0",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 153.0, 1795.0, 125.0, 22.0 ],
                    "text": "prepend subdivision 0"
                }
            },
            {
                "box": {
                    "id": "fl-probability-0",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 75.0, 1820.0, 40.0, 40.0 ]
                }
            },
            {
                "box": {
                    "id": "fl-probability-p-0",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 154.0, 1828.0, 121.0, 22.0 ],
                    "text": "prepend probability 0"
                }
            },
            {
                "box": {
                    "id": "fl-humanize-0",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 75.0, 1858.0, 40.0, 40.0 ]
                }
            },
            {
                "box": {
                    "id": "fl-humanize-p-0",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 155.0, 1862.0, 118.0, 22.0 ],
                    "text": "prepend humanize 0"
                }
            },
            {
                "box": {
                    "id": "fl-burst-0",
                    "maxclass": "number",
                    "maximum": 8,
                    "minimum": 1,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 75.0, 1896.0, 40.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "fl-burst-p-0",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 155.0, 1896.0, 93.0, 22.0 ],
                    "text": "prepend burst 0"
                }
            },
            {
                "box": {
                    "id": "fl-pitch_mod-0",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 75.0, 1924.0, 40.0, 40.0 ]
                }
            },
            {
                "box": {
                    "id": "fl-pitch_mod-p-0",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 155.0, 1928.0, 121.0, 22.0 ],
                    "text": "prepend pitch_mod 0"
                }
            },
            {
                "box": {
                    "id": "fl-vel_decay-0",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 75.0, 1962.0, 40.0, 40.0 ]
                }
            },
            {
                "box": {
                    "id": "fl-vel_decay-p-0",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 155.0, 1966.0, 120.0, 22.0 ],
                    "text": "prepend vel_decay 0"
                }
            },
            {
                "box": {
                    "fontsize": 9.0,
                    "id": "fl-lbl-0",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 15.0, 1797.0, 42.0, 17.0 ],
                    "text": "SUBDIV"
                }
            },
            {
                "box": {
                    "fontsize": 9.0,
                    "id": "fl-lbl-1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 15.0, 1822.0, 45.0, 17.0 ],
                    "text": "PROB %"
                }
            },
            {
                "box": {
                    "fontsize": 9.0,
                    "id": "fl-lbl-2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 15.0, 1860.0, 41.0, 17.0 ],
                    "text": "HUMAN"
                }
            },
            {
                "box": {
                    "fontsize": 9.0,
                    "id": "fl-lbl-3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 15.0, 1898.0, 39.0, 17.0 ],
                    "text": "BURST"
                }
            },
            {
                "box": {
                    "fontsize": 9.0,
                    "id": "fl-lbl-4",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 15.0, 1926.0, 35.0, 17.0 ],
                    "text": "PITCH"
                }
            },
            {
                "box": {
                    "fontsize": 9.0,
                    "id": "fl-lbl-5",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 15.0, 1964.0, 45.0, 17.0 ],
                    "text": "VDECAY"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 10.0,
                    "id": "fl-vl-1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 424.0, 1777.0, 32.0, 18.0 ],
                    "text": "VEIN"
                }
            },
            {
                "box": {
                    "id": "fl-subdivision-1",
                    "items": [ "OFF", ",", "1/32", ",", "1/48", ",", "1/64", ",", "1/96" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 424.0, 1795.0, 75.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "fl-subdivision-p-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 504.0, 1795.0, 125.0, 22.0 ],
                    "text": "prepend subdivision 1"
                }
            },
            {
                "box": {
                    "id": "fl-probability-1",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 424.0, 1820.0, 40.0, 40.0 ]
                }
            },
            {
                "box": {
                    "id": "fl-probability-p-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 459.0, 1824.0, 121.0, 22.0 ],
                    "text": "prepend probability 1"
                }
            },
            {
                "box": {
                    "id": "fl-humanize-1",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 424.0, 1858.0, 40.0, 40.0 ]
                }
            },
            {
                "box": {
                    "id": "fl-humanize-p-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 459.0, 1862.0, 118.0, 22.0 ],
                    "text": "prepend humanize 1"
                }
            },
            {
                "box": {
                    "id": "fl-burst-1",
                    "maxclass": "number",
                    "maximum": 8,
                    "minimum": 1,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 424.0, 1896.0, 40.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "fl-burst-p-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 469.0, 1896.0, 93.0, 22.0 ],
                    "text": "prepend burst 1"
                }
            },
            {
                "box": {
                    "id": "fl-pitch_mod-1",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 424.0, 1924.0, 40.0, 40.0 ]
                }
            },
            {
                "box": {
                    "id": "fl-pitch_mod-p-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 459.0, 1928.0, 121.0, 22.0 ],
                    "text": "prepend pitch_mod 1"
                }
            },
            {
                "box": {
                    "id": "fl-vel_decay-1",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 424.0, 1962.0, 40.0, 40.0 ]
                }
            },
            {
                "box": {
                    "id": "fl-vel_decay-p-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 459.0, 1966.0, 120.0, 22.0 ],
                    "text": "prepend vel_decay 1"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 10.0,
                    "id": "fl-vl-2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 574.0, 1777.0, 44.0, 18.0 ],
                    "text": "SHARD"
                }
            },
            {
                "box": {
                    "id": "fl-subdivision-2",
                    "items": [ "OFF", ",", "1/32", ",", "1/48", ",", "1/64", ",", "1/96" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 574.0, 1795.0, 75.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "fl-subdivision-p-2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 654.0, 1795.0, 125.0, 22.0 ],
                    "text": "prepend subdivision 2"
                }
            },
            {
                "box": {
                    "id": "fl-probability-2",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 574.0, 1820.0, 40.0, 40.0 ]
                }
            },
            {
                "box": {
                    "id": "fl-probability-p-2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 609.0, 1824.0, 121.0, 22.0 ],
                    "text": "prepend probability 2"
                }
            },
            {
                "box": {
                    "id": "fl-humanize-2",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 574.0, 1858.0, 40.0, 40.0 ]
                }
            },
            {
                "box": {
                    "id": "fl-humanize-p-2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 609.0, 1862.0, 118.0, 22.0 ],
                    "text": "prepend humanize 2"
                }
            },
            {
                "box": {
                    "id": "fl-burst-2",
                    "maxclass": "number",
                    "maximum": 8,
                    "minimum": 1,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 574.0, 1896.0, 40.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "fl-burst-p-2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 619.0, 1896.0, 93.0, 22.0 ],
                    "text": "prepend burst 2"
                }
            },
            {
                "box": {
                    "id": "fl-pitch_mod-2",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 574.0, 1924.0, 40.0, 40.0 ]
                }
            },
            {
                "box": {
                    "id": "fl-pitch_mod-p-2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 609.0, 1928.0, 121.0, 22.0 ],
                    "text": "prepend pitch_mod 2"
                }
            },
            {
                "box": {
                    "id": "fl-vel_decay-2",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 574.0, 1962.0, 40.0, 40.0 ]
                }
            },
            {
                "box": {
                    "id": "fl-vel_decay-p-2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 609.0, 1966.0, 120.0, 22.0 ],
                    "text": "prepend vel_decay 2"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 10.0,
                    "id": "fl-vl-3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 724.0, 1777.0, 37.0, 18.0 ],
                    "text": "HUSK"
                }
            },
            {
                "box": {
                    "id": "fl-subdivision-3",
                    "items": [ "OFF", ",", "1/32", ",", "1/48", ",", "1/64", ",", "1/96" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 724.0, 1795.0, 75.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "fl-subdivision-p-3",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 815.0, 1795.0, 125.0, 22.0 ],
                    "text": "prepend subdivision 3"
                }
            },
            {
                "box": {
                    "id": "fl-probability-3",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 724.0, 1820.0, 40.0, 40.0 ]
                }
            },
            {
                "box": {
                    "id": "fl-probability-p-3",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 812.0, 1824.0, 121.0, 22.0 ],
                    "text": "prepend probability 3"
                }
            },
            {
                "box": {
                    "id": "fl-humanize-3",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 724.0, 1858.0, 40.0, 40.0 ]
                }
            },
            {
                "box": {
                    "id": "fl-humanize-p-3",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 812.0, 1862.0, 118.0, 22.0 ],
                    "text": "prepend humanize 3"
                }
            },
            {
                "box": {
                    "id": "fl-burst-3",
                    "maxclass": "number",
                    "maximum": 8,
                    "minimum": 1,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 724.0, 1896.0, 40.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "fl-burst-p-3",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 813.0, 1898.0, 93.0, 22.0 ],
                    "text": "prepend burst 3"
                }
            },
            {
                "box": {
                    "id": "fl-pitch_mod-3",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 724.0, 1924.0, 40.0, 40.0 ]
                }
            },
            {
                "box": {
                    "id": "fl-pitch_mod-p-3",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 812.0, 1932.0, 121.0, 22.0 ],
                    "text": "prepend pitch_mod 3"
                }
            },
            {
                "box": {
                    "id": "fl-vel_decay-3",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 724.0, 1962.0, 40.0, 40.0 ]
                }
            },
            {
                "box": {
                    "id": "fl-vel_decay-p-3",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 812.0, 1966.0, 120.0, 22.0 ],
                    "text": "prepend vel_decay 3"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 10.0,
                    "id": "fl-vl-4",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 969.0, 1777.0, 40.0, 18.0 ],
                    "text": "FAULT"
                }
            },
            {
                "box": {
                    "id": "fl-subdivision-4",
                    "items": [ "OFF", ",", "1/32", ",", "1/48", ",", "1/64", ",", "1/96" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 959.0, 1795.0, 75.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "fl-subdivision-p-4",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1043.0, 1797.0, 125.0, 22.0 ],
                    "text": "prepend subdivision 4"
                }
            },
            {
                "box": {
                    "id": "fl-probability-4",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 981.0, 1824.0, 40.0, 40.0 ]
                }
            },
            {
                "box": {
                    "id": "fl-probability-p-4",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1045.0, 1826.0, 121.0, 22.0 ],
                    "text": "prepend probability 4"
                }
            },
            {
                "box": {
                    "id": "fl-humanize-4",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 981.0, 1862.0, 40.0, 40.0 ]
                }
            },
            {
                "box": {
                    "id": "fl-humanize-p-4",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1045.0, 1864.0, 118.0, 22.0 ],
                    "text": "prepend humanize 4"
                }
            },
            {
                "box": {
                    "id": "fl-burst-4",
                    "maxclass": "number",
                    "maximum": 8,
                    "minimum": 1,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 981.0, 1900.0, 40.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "fl-burst-p-4",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1045.0, 1898.0, 93.0, 22.0 ],
                    "text": "prepend burst 4"
                }
            },
            {
                "box": {
                    "id": "fl-pitch_mod-4",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 981.0, 1928.0, 40.0, 40.0 ]
                }
            },
            {
                "box": {
                    "id": "fl-pitch_mod-p-4",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1045.0, 1930.0, 121.0, 22.0 ],
                    "text": "prepend pitch_mod 4"
                }
            },
            {
                "box": {
                    "id": "fl-vel_decay-4",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 981.0, 1966.0, 40.0, 40.0 ]
                }
            },
            {
                "box": {
                    "id": "fl-vel_decay-p-4",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1045.0, 1968.0, 120.0, 22.0 ],
                    "text": "prepend vel_decay 4"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 10.0,
                    "id": "fl-vl-5",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1205.0, 1779.0, 37.0, 18.0 ],
                    "text": "HALO"
                }
            },
            {
                "box": {
                    "id": "fl-subdivision-5",
                    "items": [ "OFF", ",", "1/32", ",", "1/48", ",", "1/64", ",", "1/96" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1205.0, 1797.0, 75.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "fl-subdivision-p-5",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1285.0, 1797.0, 125.0, 22.0 ],
                    "text": "prepend subdivision 5"
                }
            },
            {
                "box": {
                    "id": "fl-probability-5",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1205.0, 1822.0, 40.0, 40.0 ]
                }
            },
            {
                "box": {
                    "id": "fl-probability-p-5",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1240.0, 1826.0, 121.0, 22.0 ],
                    "text": "prepend probability 5"
                }
            },
            {
                "box": {
                    "id": "fl-humanize-5",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1205.0, 1860.0, 40.0, 40.0 ]
                }
            },
            {
                "box": {
                    "id": "fl-humanize-p-5",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1240.0, 1864.0, 118.0, 22.0 ],
                    "text": "prepend humanize 5"
                }
            },
            {
                "box": {
                    "id": "fl-burst-5",
                    "maxclass": "number",
                    "maximum": 8,
                    "minimum": 1,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1205.0, 1898.0, 40.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "fl-burst-p-5",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1250.0, 1898.0, 93.0, 22.0 ],
                    "text": "prepend burst 5"
                }
            },
            {
                "box": {
                    "id": "fl-pitch_mod-5",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1205.0, 1926.0, 40.0, 40.0 ]
                }
            },
            {
                "box": {
                    "id": "fl-pitch_mod-p-5",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1240.0, 1930.0, 121.0, 22.0 ],
                    "text": "prepend pitch_mod 5"
                }
            },
            {
                "box": {
                    "id": "fl-vel_decay-5",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1205.0, 1964.0, 40.0, 40.0 ]
                }
            },
            {
                "box": {
                    "id": "fl-vel_decay-p-5",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1240.0, 1968.0, 120.0, 22.0 ],
                    "text": "prepend vel_decay 5"
                }
            },
            {
                "box": {
                    "id": "fl-sctl-0",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 75.0, 2005.0, 47.0, 22.0 ],
                    "text": "s fl_ctrl"
                }
            },
            {
                "box": {
                    "id": "fl-sctl-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 424.0, 2005.0, 47.0, 22.0 ],
                    "text": "s fl_ctrl"
                }
            },
            {
                "box": {
                    "id": "fl-sctl-2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 574.0, 2005.0, 47.0, 22.0 ],
                    "text": "s fl_ctrl"
                }
            },
            {
                "box": {
                    "id": "fl-sctl-3",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 724.0, 2005.0, 47.0, 22.0 ],
                    "text": "s fl_ctrl"
                }
            },
            {
                "box": {
                    "id": "fl-sctl-4",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 981.0, 2009.0, 47.0, 22.0 ],
                    "text": "s fl_ctrl"
                }
            },
            {
                "box": {
                    "id": "fl-sctl-5",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1205.0, 2007.0, 47.0, 22.0 ],
                    "text": "s fl_ctrl"
                }
            },
            {
                "box": {
                    "id": "fl-r1",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 930.0, 1617.0, 44.0, 22.0 ],
                    "text": "r fl_ctrl"
                }
            },
            {
                "box": {
                    "id": "fl-r2",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 75.0, 2052.0, 44.0, 22.0 ],
                    "text": "r fl_ctrl"
                }
            },
            {
                "box": {
                    "id": "fl-km-notify",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 75.0, 2077.0, 119.0, 22.0 ],
                    "text": "prepend flam_param"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 14.0,
                    "id": "sec-gr",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 2049.0, 70.0, 23.0 ],
                    "text": "GROOVE",
                    "textcolor": [ 0.3, 0.3, 0.3, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "gr-swing",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 75.0, 2064.0, 40.0, 40.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "gr-swing-l",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 75.0, 2106.0, 49.0, 20.0 ],
                    "text": "SWING"
                }
            },
            {
                "box": {
                    "id": "gr-swing-p",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 120.0, 2074.0, 87.0, 22.0 ],
                    "text": "prepend swing"
                }
            },
            {
                "box": {
                    "id": "gr-master",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 225.0, 2064.0, 40.0, 40.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "gr-master-l",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 225.0, 2106.0, 75.0, 20.0 ],
                    "text": "M.GROOVE"
                }
            },
            {
                "box": {
                    "id": "gr-master-p",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 270.0, 2074.0, 136.0, 22.0 ],
                    "text": "prepend master_groove"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 10.0,
                    "id": "gr-vl-0",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 75.0, 2134.0, 37.0, 18.0 ],
                    "text": "MASS"
                }
            },
            {
                "box": {
                    "id": "gr-off-0",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 75.0, 2152.0, 40.0, 40.0 ]
                }
            },
            {
                "box": {
                    "id": "gr-def-0",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 110.0, 2156.0, 29.5, 22.0 ],
                    "text": "64"
                }
            },
            {
                "box": {
                    "id": "gr-off-p-0",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 110.0, 2138.0, 103.0, 22.0 ],
                    "text": "prepend groove 0"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 10.0,
                    "id": "gr-vl-1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 225.0, 2134.0, 32.0, 18.0 ],
                    "text": "VEIN"
                }
            },
            {
                "box": {
                    "id": "gr-off-1",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 225.0, 2152.0, 40.0, 40.0 ]
                }
            },
            {
                "box": {
                    "id": "gr-def-1",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 260.0, 2156.0, 29.5, 22.0 ],
                    "text": "64"
                }
            },
            {
                "box": {
                    "id": "gr-off-p-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 260.0, 2138.0, 103.0, 22.0 ],
                    "text": "prepend groove 1"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 10.0,
                    "id": "gr-vl-2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 375.0, 2134.0, 44.0, 18.0 ],
                    "text": "SHARD"
                }
            },
            {
                "box": {
                    "id": "gr-off-2",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 375.0, 2152.0, 40.0, 40.0 ]
                }
            },
            {
                "box": {
                    "id": "gr-def-2",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 410.0, 2156.0, 29.5, 22.0 ],
                    "text": "64"
                }
            },
            {
                "box": {
                    "id": "gr-off-p-2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 410.0, 2138.0, 103.0, 22.0 ],
                    "text": "prepend groove 2"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 10.0,
                    "id": "gr-vl-3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 525.0, 2134.0, 37.0, 18.0 ],
                    "text": "HUSK"
                }
            },
            {
                "box": {
                    "id": "gr-off-3",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 525.0, 2152.0, 40.0, 40.0 ]
                }
            },
            {
                "box": {
                    "id": "gr-def-3",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 560.0, 2156.0, 29.5, 22.0 ],
                    "text": "64"
                }
            },
            {
                "box": {
                    "id": "gr-off-p-3",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 560.0, 2138.0, 103.0, 22.0 ],
                    "text": "prepend groove 3"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 10.0,
                    "id": "gr-vl-4",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 675.0, 2134.0, 40.0, 18.0 ],
                    "text": "FAULT"
                }
            },
            {
                "box": {
                    "id": "gr-off-4",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 675.0, 2152.0, 40.0, 40.0 ]
                }
            },
            {
                "box": {
                    "id": "gr-def-4",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 710.0, 2156.0, 29.5, 22.0 ],
                    "text": "64"
                }
            },
            {
                "box": {
                    "id": "gr-off-p-4",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 710.0, 2138.0, 103.0, 22.0 ],
                    "text": "prepend groove 4"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 10.0,
                    "id": "gr-vl-5",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 825.0, 2134.0, 37.0, 18.0 ],
                    "text": "HALO"
                }
            },
            {
                "box": {
                    "id": "gr-off-5",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 825.0, 2152.0, 40.0, 40.0 ]
                }
            },
            {
                "box": {
                    "id": "gr-def-5",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 860.0, 2156.0, 29.5, 22.0 ],
                    "text": "64"
                }
            },
            {
                "box": {
                    "id": "gr-off-p-5",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 860.0, 2138.0, 103.0, 22.0 ],
                    "text": "prepend groove 5"
                }
            },
            {
                "box": {
                    "id": "gr-hint",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 75.0, 2189.0, 294.0, 20.0 ],
                    "text": "Center=straight. Left=push back. Right=push forward."
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 14.0,
                    "id": "sec-lfo",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 19.0, 2221.0, 94.0, 23.0 ],
                    "text": "LFO ENGINE",
                    "textcolor": [ 0.3, 0.3, 0.3, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "lfo-js",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 64.0, 2236.0, 81.0, 22.0 ],
                    "saved_object_attributes": {
                        "filename": "lfoengine.js",
                        "parameter_enable": 0
                    },
                    "text": "js lfoengine.js"
                }
            },
            {
                "box": {
                    "id": "lfo-g-rate",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 64.0, 2266.0, 40.0, 40.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 9.0,
                    "id": "lfo-g-rate-l",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 64.0, 2298.0, 32.0, 17.0 ],
                    "text": "RATE"
                }
            },
            {
                "box": {
                    "id": "lfo-g-rate-p",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 99.0, 2270.0, 120.0, 22.0 ],
                    "text": "prepend master_rate"
                }
            },
            {
                "box": {
                    "id": "lfo-g-depth",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 214.0, 2266.0, 40.0, 40.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 9.0,
                    "id": "lfo-g-depth-l",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 214.0, 2298.0, 39.0, 17.0 ],
                    "text": "DEPTH"
                }
            },
            {
                "box": {
                    "id": "lfo-g-depth-p",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 249.0, 2270.0, 129.0, 22.0 ],
                    "text": "prepend master_depth"
                }
            },
            {
                "box": {
                    "id": "lfo-g-K",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 379.0, 2266.0, 40.0, 40.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 9.0,
                    "id": "lfo-g-K-l",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 379.0, 2298.0, 46.0, 17.0 ],
                    "text": "COUPLE"
                }
            },
            {
                "box": {
                    "id": "lfo-g-K-p",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 414.0, 2270.0, 101.0, 22.0 ],
                    "text": "prepend coupling"
                }
            },
            {
                "box": {
                    "id": "lfo-g-topo",
                    "items": [ "All-to-all", ",", "Legba", ",", "Carrefour", ",", "Ferraille", ",", "Ogou", ",", "Ring", ",", "Marassa", ",", "Damballah", ",", "Erzulie", ",", "Baron", ",", "Simbi", ",", "Ayizan", ",", "Gran Bwa" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 529.0, 2270.0, 100.0, 22.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 9.0,
                    "id": "lfo-g-topo-l",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 529.0, 2292.0, 59.0, 17.0 ],
                    "text": "TOPOLOGY"
                }
            },
            {
                "box": {
                    "id": "lfo-g-topo-p",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 634.0, 2270.0, 101.0, 22.0 ],
                    "text": "prepend topology"
                }
            },
            {
                "box": {
                    "id": "lfo-g-rho",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 779.0, 2266.0, 40.0, 40.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 9.0,
                    "id": "lfo-g-rho-l",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 779.0, 2298.0, 41.0, 17.0 ],
                    "text": "CHAOS"
                }
            },
            {
                "box": {
                    "id": "lfo-g-rho-p",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 814.0, 2270.0, 112.0, 22.0 ],
                    "text": "prepend chaos_rho"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 10.0,
                    "id": "lfo-vl-0",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 64.0, 2311.0, 37.0, 18.0 ],
                    "text": "MASS"
                }
            },
            {
                "box": {
                    "id": "lfo-rate-0",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 64.0, 2329.0, 40.0, 40.0 ]
                }
            },
            {
                "box": {
                    "id": "lfo-rate-p-0",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 99.0, 2333.0, 106.0, 22.0 ],
                    "text": "prepend lfo_rate 0"
                }
            },
            {
                "box": {
                    "id": "lfo-depth-0",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 64.0, 2367.0, 40.0, 40.0 ]
                }
            },
            {
                "box": {
                    "id": "lfo-depth-p-0",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 99.0, 2371.0, 115.0, 22.0 ],
                    "text": "prepend lfo_depth 0"
                }
            },
            {
                "box": {
                    "id": "lfo-shape-0",
                    "items": [ "Sine", ",", "Triangle", ",", "Saw Up", ",", "Saw Down", ",", "Square", ",", "S&H", ",", "Lorenz X", ",", "Lorenz Y", ",", "Myombo 2", ",", "Myombo 3", ",", "Chased Chick", ",", "Hunted Bird", ",", "Lion Stom", ",", "Ancestor" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 64.0, 2405.0, 100.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "lfo-shape-p-0",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 169.0, 2405.0, 118.0, 22.0 ],
                    "text": "prepend lfo_shape 0"
                }
            },
            {
                "box": {
                    "id": "lfo-dest-0",
                    "items": [ "OFF", ",", "Pan", ",", "Pitch", ",", "Stress", ",", "Bloom", ",", "Decay", ",", "Mist", ",", "Heat", ",", "Drift", ",", "Density" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 64.0, 2431.0, 100.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "lfo-dest-p-0",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 169.0, 2431.0, 108.0, 22.0 ],
                    "text": "prepend lfo_dest 0"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 10.0,
                    "id": "lfo-vl-1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 214.0, 2311.0, 32.0, 18.0 ],
                    "text": "VEIN"
                }
            },
            {
                "box": {
                    "id": "lfo-rate-1",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 214.0, 2329.0, 40.0, 40.0 ]
                }
            },
            {
                "box": {
                    "id": "lfo-rate-p-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 249.0, 2333.0, 106.0, 22.0 ],
                    "text": "prepend lfo_rate 1"
                }
            },
            {
                "box": {
                    "id": "lfo-depth-1",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 214.0, 2367.0, 40.0, 40.0 ]
                }
            },
            {
                "box": {
                    "id": "lfo-depth-p-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 249.0, 2371.0, 115.0, 22.0 ],
                    "text": "prepend lfo_depth 1"
                }
            },
            {
                "box": {
                    "id": "lfo-shape-1",
                    "items": [ "Sine", ",", "Triangle", ",", "Saw Up", ",", "Saw Down", ",", "Square", ",", "S&H", ",", "Lorenz X", ",", "Lorenz Y", ",", "Myombo 2", ",", "Myombo 3", ",", "Chased Chick", ",", "Hunted Bird", ",", "Lion Stom", ",", "Ancestor" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 214.0, 2405.0, 100.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "lfo-shape-p-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 319.0, 2405.0, 118.0, 22.0 ],
                    "text": "prepend lfo_shape 1"
                }
            },
            {
                "box": {
                    "id": "lfo-dest-1",
                    "items": [ "OFF", ",", "Pan", ",", "Pitch", ",", "Stress", ",", "Bloom", ",", "Decay", ",", "Mist", ",", "Heat", ",", "Drift", ",", "Density" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 214.0, 2431.0, 100.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "lfo-dest-p-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 319.0, 2431.0, 108.0, 22.0 ],
                    "text": "prepend lfo_dest 1"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 10.0,
                    "id": "lfo-vl-2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 364.0, 2311.0, 44.0, 18.0 ],
                    "text": "SHARD"
                }
            },
            {
                "box": {
                    "id": "lfo-rate-2",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 364.0, 2329.0, 40.0, 40.0 ]
                }
            },
            {
                "box": {
                    "id": "lfo-rate-p-2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 399.0, 2333.0, 106.0, 22.0 ],
                    "text": "prepend lfo_rate 2"
                }
            },
            {
                "box": {
                    "id": "lfo-depth-2",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 364.0, 2367.0, 40.0, 40.0 ]
                }
            },
            {
                "box": {
                    "id": "lfo-depth-p-2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 399.0, 2371.0, 115.0, 22.0 ],
                    "text": "prepend lfo_depth 2"
                }
            },
            {
                "box": {
                    "id": "lfo-shape-2",
                    "items": [ "Sine", ",", "Triangle", ",", "Saw Up", ",", "Saw Down", ",", "Square", ",", "S&H", ",", "Lorenz X", ",", "Lorenz Y", ",", "Myombo 2", ",", "Myombo 3", ",", "Chased Chick", ",", "Hunted Bird", ",", "Lion Stom", ",", "Ancestor" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 364.0, 2405.0, 100.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "lfo-shape-p-2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 469.0, 2405.0, 118.0, 22.0 ],
                    "text": "prepend lfo_shape 2"
                }
            },
            {
                "box": {
                    "id": "lfo-dest-2",
                    "items": [ "OFF", ",", "Pan", ",", "Pitch", ",", "Stress", ",", "Bloom", ",", "Decay", ",", "Mist", ",", "Heat", ",", "Drift", ",", "Density" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 364.0, 2431.0, 100.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "lfo-dest-p-2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 469.0, 2431.0, 108.0, 22.0 ],
                    "text": "prepend lfo_dest 2"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 10.0,
                    "id": "lfo-vl-3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 514.0, 2311.0, 37.0, 18.0 ],
                    "text": "HUSK"
                }
            },
            {
                "box": {
                    "id": "lfo-rate-3",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 514.0, 2329.0, 40.0, 40.0 ]
                }
            },
            {
                "box": {
                    "id": "lfo-rate-p-3",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 549.0, 2333.0, 106.0, 22.0 ],
                    "text": "prepend lfo_rate 3"
                }
            },
            {
                "box": {
                    "id": "lfo-depth-3",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 514.0, 2367.0, 40.0, 40.0 ]
                }
            },
            {
                "box": {
                    "id": "lfo-depth-p-3",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 549.0, 2371.0, 115.0, 22.0 ],
                    "text": "prepend lfo_depth 3"
                }
            },
            {
                "box": {
                    "id": "lfo-shape-3",
                    "items": [ "Sine", ",", "Triangle", ",", "Saw Up", ",", "Saw Down", ",", "Square", ",", "S&H", ",", "Lorenz X", ",", "Lorenz Y", ",", "Myombo 2", ",", "Myombo 3", ",", "Chased Chick", ",", "Hunted Bird", ",", "Lion Stom", ",", "Ancestor" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 514.0, 2405.0, 100.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "lfo-shape-p-3",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 619.0, 2405.0, 118.0, 22.0 ],
                    "text": "prepend lfo_shape 3"
                }
            },
            {
                "box": {
                    "id": "lfo-dest-3",
                    "items": [ "OFF", ",", "Pan", ",", "Pitch", ",", "Stress", ",", "Bloom", ",", "Decay", ",", "Mist", ",", "Heat", ",", "Drift", ",", "Density" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 514.0, 2431.0, 100.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "lfo-dest-p-3",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 619.0, 2431.0, 108.0, 22.0 ],
                    "text": "prepend lfo_dest 3"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 10.0,
                    "id": "lfo-vl-4",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 664.0, 2311.0, 40.0, 18.0 ],
                    "text": "FAULT"
                }
            },
            {
                "box": {
                    "id": "lfo-rate-4",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 664.0, 2329.0, 40.0, 40.0 ]
                }
            },
            {
                "box": {
                    "id": "lfo-rate-p-4",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 699.0, 2333.0, 106.0, 22.0 ],
                    "text": "prepend lfo_rate 4"
                }
            },
            {
                "box": {
                    "id": "lfo-depth-4",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 664.0, 2367.0, 40.0, 40.0 ]
                }
            },
            {
                "box": {
                    "id": "lfo-depth-p-4",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 699.0, 2371.0, 115.0, 22.0 ],
                    "text": "prepend lfo_depth 4"
                }
            },
            {
                "box": {
                    "id": "lfo-shape-4",
                    "items": [ "Sine", ",", "Triangle", ",", "Saw Up", ",", "Saw Down", ",", "Square", ",", "S&H", ",", "Lorenz X", ",", "Lorenz Y", ",", "Myombo 2", ",", "Myombo 3", ",", "Chased Chick", ",", "Hunted Bird", ",", "Lion Stom", ",", "Ancestor" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 664.0, 2405.0, 100.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "lfo-shape-p-4",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 769.0, 2405.0, 118.0, 22.0 ],
                    "text": "prepend lfo_shape 4"
                }
            },
            {
                "box": {
                    "id": "lfo-dest-4",
                    "items": [ "OFF", ",", "Pan", ",", "Pitch", ",", "Stress", ",", "Bloom", ",", "Decay", ",", "Mist", ",", "Heat", ",", "Drift", ",", "Density" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 664.0, 2431.0, 100.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "lfo-dest-p-4",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 769.0, 2431.0, 108.0, 22.0 ],
                    "text": "prepend lfo_dest 4"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 10.0,
                    "id": "lfo-vl-5",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 814.0, 2311.0, 37.0, 18.0 ],
                    "text": "HALO"
                }
            },
            {
                "box": {
                    "id": "lfo-rate-5",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 814.0, 2329.0, 40.0, 40.0 ]
                }
            },
            {
                "box": {
                    "id": "lfo-rate-p-5",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 849.0, 2333.0, 106.0, 22.0 ],
                    "text": "prepend lfo_rate 5"
                }
            },
            {
                "box": {
                    "id": "lfo-depth-5",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 814.0, 2367.0, 40.0, 40.0 ]
                }
            },
            {
                "box": {
                    "id": "lfo-depth-p-5",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 849.0, 2371.0, 115.0, 22.0 ],
                    "text": "prepend lfo_depth 5"
                }
            },
            {
                "box": {
                    "id": "lfo-shape-5",
                    "items": [ "Sine", ",", "Triangle", ",", "Saw Up", ",", "Saw Down", ",", "Square", ",", "S&H", ",", "Lorenz X", ",", "Lorenz Y", ",", "Myombo 2", ",", "Myombo 3", ",", "Chased Chick", ",", "Hunted Bird", ",", "Lion Stom", ",", "Ancestor" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 814.0, 2405.0, 100.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "lfo-shape-p-5",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 919.0, 2405.0, 118.0, 22.0 ],
                    "text": "prepend lfo_shape 5"
                }
            },
            {
                "box": {
                    "id": "lfo-dest-5",
                    "items": [ "OFF", ",", "Pan", ",", "Pitch", ",", "Stress", ",", "Bloom", ",", "Decay", ",", "Mist", ",", "Heat", ",", "Drift", ",", "Density" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 814.0, 2431.0, 100.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "lfo-dest-p-5",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 919.0, 2431.0, 108.0, 22.0 ],
                    "text": "prepend lfo_dest 5"
                }
            },
            {
                "box": {
                    "fontsize": 9.0,
                    "id": "lfo-lbl-rate",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 4.0, 2333.0, 32.0, 17.0 ],
                    "text": "RATE"
                }
            },
            {
                "box": {
                    "fontsize": 9.0,
                    "id": "lfo-lbl-depth",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 4.0, 2371.0, 39.0, 17.0 ],
                    "text": "DEPTH"
                }
            },
            {
                "box": {
                    "fontsize": 9.0,
                    "id": "lfo-lbl-shape",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 4.0, 2405.0, 39.0, 17.0 ],
                    "text": "SHAPE"
                }
            },
            {
                "box": {
                    "fontsize": 9.0,
                    "id": "lfo-lbl-dest",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 4.0, 2431.0, 33.0, 17.0 ],
                    "text": "DEST"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 14.0,
                    "id": "sec-km",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 2468.0, 40.0, 23.0 ],
                    "text": "KITS",
                    "textcolor": [ 0.3, 0.3, 0.3, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "km-js",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 8,
                    "outlettype": [ "", "", "", "", "", "", "", "" ],
                    "patching_rect": [ 75.0, 2483.0, 92.5, 22.0 ],
                    "saved_object_attributes": {
                        "filename": "kitmanager.js",
                        "parameter_enable": 0
                    },
                    "text": "js kitmanager.js"
                }
            },
            {
                "box": {
                    "id": "km-init",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 855.0, 2483.0, 73.0, 22.0 ],
                    "text": "init_defaults"
                }
            },
            {
                "box": {
                    "id": "km-lvl-route",
                    "maxclass": "newobj",
                    "numinlets": 7,
                    "numoutlets": 7,
                    "outlettype": [ "", "", "", "", "", "", "" ],
                    "patching_rect": [ 75.0, 2513.0, 96.0, 22.0 ],
                    "text": "route 0 1 2 3 4 5"
                }
            },
            {
                "box": {
                    "id": "km-lvl-snd-0",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 75.0, 2538.0, 82.0, 22.0 ],
                    "text": "send v0_level"
                }
            },
            {
                "box": {
                    "id": "km-lvl-snd-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 195.0, 2538.0, 82.0, 22.0 ],
                    "text": "send v1_level"
                }
            },
            {
                "box": {
                    "id": "km-lvl-snd-2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 315.0, 2538.0, 82.0, 22.0 ],
                    "text": "send v2_level"
                }
            },
            {
                "box": {
                    "id": "km-lvl-snd-3",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 435.0, 2538.0, 82.0, 22.0 ],
                    "text": "send v3_level"
                }
            },
            {
                "box": {
                    "id": "km-lvl-snd-4",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 555.0, 2538.0, 82.0, 22.0 ],
                    "text": "send v4_level"
                }
            },
            {
                "box": {
                    "id": "km-lvl-snd-5",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 675.0, 2538.0, 82.0, 22.0 ],
                    "text": "send v5_level"
                }
            },
            {
                "box": {
                    "id": "km-pcell",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 75.0, 2513.0, 118.0, 22.0 ],
                    "text": "prepend pattern_cell"
                }
            },
            {
                "box": {
                    "id": "km-len-0",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 75.0, 2563.0, 133.0, 22.0 ],
                    "text": "prepend voice_length 0"
                }
            },
            {
                "box": {
                    "id": "km-len-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 195.0, 2563.0, 133.0, 22.0 ],
                    "text": "prepend voice_length 1"
                }
            },
            {
                "box": {
                    "id": "km-len-2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 315.0, 2563.0, 133.0, 22.0 ],
                    "text": "prepend voice_length 2"
                }
            },
            {
                "box": {
                    "id": "km-len-3",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 435.0, 2563.0, 133.0, 22.0 ],
                    "text": "prepend voice_length 3"
                }
            },
            {
                "box": {
                    "id": "km-len-4",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 555.0, 2563.0, 133.0, 22.0 ],
                    "text": "prepend voice_length 4"
                }
            },
            {
                "box": {
                    "id": "km-len-5",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 675.0, 2563.0, 133.0, 22.0 ],
                    "text": "prepend voice_length 5"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "km-sv-lbl",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 75.0, 2593.0, 44.0, 20.0 ],
                    "text": "SAVE:"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "km-ld-lbl",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 75.0, 2623.0, 46.0, 20.0 ],
                    "text": "LOAD:"
                }
            },
            {
                "box": {
                    "id": "km-sv-0",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 125.0, 2593.0, 44.0, 22.0 ],
                    "text": "save 0"
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "km-nm-0",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 173.0, 2593.0, 19.0, 18.0 ],
                    "text": "---"
                }
            },
            {
                "box": {
                    "id": "km-ld-0",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 125.0, 2623.0, 41.0, 22.0 ],
                    "text": "load 0"
                }
            },
            {
                "box": {
                    "id": "km-sv-1",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 230.0, 2593.0, 44.0, 22.0 ],
                    "text": "save 1"
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "km-nm-1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 278.0, 2593.0, 19.0, 18.0 ],
                    "text": "---"
                }
            },
            {
                "box": {
                    "id": "km-ld-1",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 230.0, 2623.0, 41.0, 22.0 ],
                    "text": "load 1"
                }
            },
            {
                "box": {
                    "id": "km-sv-2",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 335.0, 2593.0, 44.0, 22.0 ],
                    "text": "save 2"
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "km-nm-2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 383.0, 2593.0, 19.0, 18.0 ],
                    "text": "---"
                }
            },
            {
                "box": {
                    "id": "km-ld-2",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 335.0, 2623.0, 41.0, 22.0 ],
                    "text": "load 2"
                }
            },
            {
                "box": {
                    "id": "km-sv-3",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 440.0, 2593.0, 44.0, 22.0 ],
                    "text": "save 3"
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "km-nm-3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 488.0, 2593.0, 19.0, 18.0 ],
                    "text": "---"
                }
            },
            {
                "box": {
                    "id": "km-ld-3",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 440.0, 2623.0, 41.0, 22.0 ],
                    "text": "load 3"
                }
            },
            {
                "box": {
                    "id": "km-sv-4",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 545.0, 2593.0, 44.0, 22.0 ],
                    "text": "save 4"
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "km-nm-4",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 593.0, 2593.0, 19.0, 18.0 ],
                    "text": "---"
                }
            },
            {
                "box": {
                    "id": "km-ld-4",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 545.0, 2623.0, 41.0, 22.0 ],
                    "text": "load 4"
                }
            },
            {
                "box": {
                    "id": "km-sv-5",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 650.0, 2593.0, 44.0, 22.0 ],
                    "text": "save 5"
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "km-nm-5",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 698.0, 2593.0, 19.0, 18.0 ],
                    "text": "---"
                }
            },
            {
                "box": {
                    "id": "km-ld-5",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 650.0, 2623.0, 41.0, 22.0 ],
                    "text": "load 5"
                }
            },
            {
                "box": {
                    "id": "km-sv-6",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 755.0, 2593.0, 44.0, 22.0 ],
                    "text": "save 6"
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "km-nm-6",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 803.0, 2593.0, 19.0, 18.0 ],
                    "text": "---"
                }
            },
            {
                "box": {
                    "id": "km-ld-6",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 755.0, 2623.0, 41.0, 22.0 ],
                    "text": "load 6"
                }
            },
            {
                "box": {
                    "id": "km-sv-7",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 860.0, 2593.0, 44.0, 22.0 ],
                    "text": "save 7"
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "km-nm-7",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 908.0, 2593.0, 19.0, 18.0 ],
                    "text": "---"
                }
            },
            {
                "box": {
                    "id": "km-ld-7",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 860.0, 2623.0, 41.0, 22.0 ],
                    "text": "load 7"
                }
            },
            {
                "box": {
                    "id": "km-status-route",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 75.0, 2653.0, 123.0, 22.0 ],
                    "text": "route status kit_name"
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "km-status",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 285.0, 2653.0, 300.0, 19.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 14.0,
                    "id": "sec-mi",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 2686.0, 84.0, 23.0 ],
                    "text": "MIDI INPUT",
                    "textcolor": [ 0.3, 0.3, 0.3, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "midi-in",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "int", "int" ],
                    "patching_rect": [ 75.0, 2718.0, 41.0, 22.0 ],
                    "text": "notein"
                }
            },
            {
                "box": {
                    "id": "midi-strip",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "int", "int" ],
                    "patching_rect": [ 75.0, 2748.0, 55.0, 22.0 ],
                    "text": "stripnote"
                }
            },
            {
                "box": {
                    "id": "midi-sel",
                    "maxclass": "newobj",
                    "numinlets": 7,
                    "numoutlets": 7,
                    "outlettype": [ "bang", "bang", "bang", "bang", "bang", "bang", "" ],
                    "patching_rect": [ 75.0, 2778.0, 140.0, 22.0 ],
                    "text": "select 36 38 40 41 43 45"
                }
            },
            {
                "box": {
                    "id": "mt-0",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 255.0, 2778.0, 74.0, 22.0 ],
                    "text": "send v0_trig"
                }
            },
            {
                "box": {
                    "id": "mt-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 375.0, 2778.0, 74.0, 22.0 ],
                    "text": "send v1_trig"
                }
            },
            {
                "box": {
                    "id": "mt-2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 495.0, 2778.0, 74.0, 22.0 ],
                    "text": "send v2_trig"
                }
            },
            {
                "box": {
                    "id": "mt-3",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 615.0, 2778.0, 74.0, 22.0 ],
                    "text": "send v3_trig"
                }
            },
            {
                "box": {
                    "id": "mt-4",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 735.0, 2778.0, 74.0, 22.0 ],
                    "text": "send v4_trig"
                }
            },
            {
                "box": {
                    "id": "mt-5",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 855.0, 2778.0, 74.0, 22.0 ],
                    "text": "send v5_trig"
                }
            },
            {
                "box": {
                    "id": "vt-0",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 135.0, 605.0, 87.0, 22.0 ],
                    "text": "receive v0_trig"
                }
            },
            {
                "box": {
                    "id": "vt-1",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 285.0, 605.0, 87.0, 22.0 ],
                    "text": "receive v1_trig"
                }
            },
            {
                "box": {
                    "id": "vt-2",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 435.0, 605.0, 87.0, 22.0 ],
                    "text": "receive v2_trig"
                }
            },
            {
                "box": {
                    "id": "vt-3",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 585.0, 605.0, 87.0, 22.0 ],
                    "text": "receive v3_trig"
                }
            },
            {
                "box": {
                    "id": "vt-4",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 735.0, 605.0, 87.0, 22.0 ],
                    "text": "receive v4_trig"
                }
            },
            {
                "box": {
                    "id": "vt-5",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 885.0, 605.0, 87.0, 22.0 ],
                    "text": "receive v5_trig"
                }
            },
            {
                "box": {
                    "id": "midi-hint",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 75.0, 2808.0, 336.0, 20.0 ],
                    "text": "C2=Mass  D2=Vein  E2=Shard  F2=Husk  G2=Fault  A2=Halo"
                }
            },
            {
                "box": {
                    "id": "h1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 75.0, 2838.0, 259.0, 20.0 ],
                    "text": "Click grid to edit patterns. Toggle PLAY to start."
                }
            },
            {
                "box": {
                    "id": "h2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 75.0, 2856.0, 274.0, 20.0 ],
                    "text": "Repeated hits build pressure. Silence cools down."
                }
            },
            {
                "box": {
                    "id": "h3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 75.0, 2874.0, 311.0, 20.0 ],
                    "text": "Select voice tab to edit macros. MIDI pads trigger voices."
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 0.5490196078431373, 0.3843137254901961, 0.9058823529411765, 1.0 ],
                    "id": "obj-1",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1046.0, 424.0, 128.0, 128.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 32.0, 110.0, 990.0, 679.0 ],
                    "proportion": 0.5
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "dp-0", 0 ],
                    "source": [ "dd-0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dp-1", 0 ],
                    "source": [ "dd-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dp-10", 0 ],
                    "source": [ "dd-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dp-11", 0 ],
                    "source": [ "dd-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dp-12", 0 ],
                    "source": [ "dd-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dp-2", 0 ],
                    "source": [ "dd-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dp-3", 0 ],
                    "source": [ "dd-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dp-4", 0 ],
                    "source": [ "dd-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dp-5", 0 ],
                    "source": [ "dd-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dp-6", 0 ],
                    "source": [ "dd-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dp-7", 0 ],
                    "source": [ "dd-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dp-8", 0 ],
                    "source": [ "dd-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dp-9", 0 ],
                    "source": [ "dd-9", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vc-js", 1 ],
                    "source": [ "dp-0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vc-js", 1 ],
                    "source": [ "dp-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vc-js", 1 ],
                    "source": [ "dp-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vc-js", 1 ],
                    "midpoints": [ 957.5, 1500.0, 1012.5, 1500.0, 1012.5, 1268.0, 158.0, 1268.0 ],
                    "source": [ "dp-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vc-js", 1 ],
                    "midpoints": [ 1040.5, 1500.0, 1018.0, 1500.0, 1018.0, 1268.0, 158.0, 1268.0 ],
                    "source": [ "dp-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vc-js", 1 ],
                    "source": [ "dp-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vc-js", 1 ],
                    "source": [ "dp-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vc-js", 1 ],
                    "source": [ "dp-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vc-js", 1 ],
                    "source": [ "dp-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vc-js", 1 ],
                    "source": [ "dp-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vc-js", 1 ],
                    "source": [ "dp-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vc-js", 1 ],
                    "source": [ "dp-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vc-js", 1 ],
                    "source": [ "dp-9", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dd-0", 0 ],
                    "source": [ "ds-0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dd-1", 0 ],
                    "source": [ "ds-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dd-10", 0 ],
                    "source": [ "ds-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dd-11", 0 ],
                    "source": [ "ds-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dd-12", 0 ],
                    "source": [ "ds-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dd-2", 0 ],
                    "source": [ "ds-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dd-3", 0 ],
                    "source": [ "ds-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dd-4", 0 ],
                    "source": [ "ds-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dd-5", 0 ],
                    "source": [ "ds-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dd-6", 0 ],
                    "source": [ "ds-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dd-7", 0 ],
                    "source": [ "ds-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dd-8", 0 ],
                    "source": [ "ds-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dd-9", 0 ],
                    "source": [ "ds-9", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-burst-p-0", 0 ],
                    "source": [ "fl-burst-0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-burst-p-1", 0 ],
                    "source": [ "fl-burst-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-burst-p-2", 0 ],
                    "source": [ "fl-burst-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-burst-p-3", 0 ],
                    "source": [ "fl-burst-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-burst-p-4", 0 ],
                    "source": [ "fl-burst-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-burst-p-5", 0 ],
                    "source": [ "fl-burst-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-sctl-0", 0 ],
                    "source": [ "fl-burst-p-0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-sctl-1", 0 ],
                    "source": [ "fl-burst-p-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-sctl-2", 0 ],
                    "source": [ "fl-burst-p-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-sctl-3", 0 ],
                    "source": [ "fl-burst-p-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-sctl-4", 0 ],
                    "source": [ "fl-burst-p-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-sctl-5", 0 ],
                    "source": [ "fl-burst-p-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-humanize-p-0", 0 ],
                    "source": [ "fl-humanize-0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-humanize-p-1", 0 ],
                    "source": [ "fl-humanize-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-humanize-p-2", 0 ],
                    "source": [ "fl-humanize-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-humanize-p-3", 0 ],
                    "source": [ "fl-humanize-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-humanize-p-4", 0 ],
                    "source": [ "fl-humanize-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-humanize-p-5", 0 ],
                    "source": [ "fl-humanize-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-sctl-0", 0 ],
                    "source": [ "fl-humanize-p-0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-sctl-1", 0 ],
                    "source": [ "fl-humanize-p-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-sctl-2", 0 ],
                    "source": [ "fl-humanize-p-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-sctl-3", 0 ],
                    "source": [ "fl-humanize-p-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-sctl-4", 0 ],
                    "source": [ "fl-humanize-p-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-sctl-5", 0 ],
                    "source": [ "fl-humanize-p-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-snd-0", 0 ],
                    "source": [ "fl-js", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-snd-1", 0 ],
                    "source": [ "fl-js", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-snd-2", 0 ],
                    "source": [ "fl-js", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-snd-3", 0 ],
                    "source": [ "fl-js", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-snd-4", 0 ],
                    "source": [ "fl-js", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-snd-5", 0 ],
                    "source": [ "fl-js", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "km-js", 0 ],
                    "source": [ "fl-km-notify", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-m-burst-p", 0 ],
                    "source": [ "fl-m-burst", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-js", 1 ],
                    "midpoints": [ 1028.5, 1720.0, 1157.25, 1720.0, 1157.25, 1582.0, 120.5, 1582.0 ],
                    "source": [ "fl-m-burst-p", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-m-hum-p", 0 ],
                    "source": [ "fl-m-hum", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-js", 1 ],
                    "source": [ "fl-m-hum-p", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-m-pitch-p", 0 ],
                    "source": [ "fl-m-pitch", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-js", 1 ],
                    "source": [ "fl-m-pitch-p", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-m-prob-p", 0 ],
                    "source": [ "fl-m-prob", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-js", 1 ],
                    "source": [ "fl-m-prob-p", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-m-sub-p", 0 ],
                    "source": [ "fl-m-sub", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-js", 1 ],
                    "source": [ "fl-m-sub-p", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-m-vdecay-p", 0 ],
                    "source": [ "fl-m-vdecay", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-js", 1 ],
                    "source": [ "fl-m-vdecay-p", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-pitch_mod-p-0", 0 ],
                    "source": [ "fl-pitch_mod-0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-pitch_mod-p-1", 0 ],
                    "source": [ "fl-pitch_mod-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-pitch_mod-p-2", 0 ],
                    "source": [ "fl-pitch_mod-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-pitch_mod-p-3", 0 ],
                    "source": [ "fl-pitch_mod-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-pitch_mod-p-4", 0 ],
                    "source": [ "fl-pitch_mod-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-pitch_mod-p-5", 0 ],
                    "source": [ "fl-pitch_mod-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-sctl-0", 0 ],
                    "source": [ "fl-pitch_mod-p-0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-sctl-1", 0 ],
                    "source": [ "fl-pitch_mod-p-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-sctl-2", 0 ],
                    "source": [ "fl-pitch_mod-p-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-sctl-3", 0 ],
                    "source": [ "fl-pitch_mod-p-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-sctl-4", 0 ],
                    "source": [ "fl-pitch_mod-p-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-sctl-5", 0 ],
                    "source": [ "fl-pitch_mod-p-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-probability-p-0", 0 ],
                    "source": [ "fl-probability-0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-probability-p-1", 0 ],
                    "source": [ "fl-probability-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-probability-p-2", 0 ],
                    "source": [ "fl-probability-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-probability-p-3", 0 ],
                    "source": [ "fl-probability-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-probability-p-4", 0 ],
                    "source": [ "fl-probability-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-probability-p-5", 0 ],
                    "source": [ "fl-probability-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-sctl-0", 0 ],
                    "source": [ "fl-probability-p-0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-sctl-1", 0 ],
                    "source": [ "fl-probability-p-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-sctl-2", 0 ],
                    "source": [ "fl-probability-p-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-sctl-3", 0 ],
                    "source": [ "fl-probability-p-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-sctl-4", 0 ],
                    "source": [ "fl-probability-p-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-sctl-5", 0 ],
                    "source": [ "fl-probability-p-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-js", 1 ],
                    "midpoints": [ 939.5, 1649.0, 1157.75, 1649.0, 1157.75, 1582.0, 120.5, 1582.0 ],
                    "source": [ "fl-r1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-km-notify", 0 ],
                    "source": [ "fl-r2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-subdivision-p-0", 0 ],
                    "source": [ "fl-subdivision-0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-subdivision-p-1", 0 ],
                    "source": [ "fl-subdivision-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-subdivision-p-2", 0 ],
                    "source": [ "fl-subdivision-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-subdivision-p-3", 0 ],
                    "source": [ "fl-subdivision-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-subdivision-p-4", 0 ],
                    "midpoints": [ 968.5, 1827.0, 784.5, 1827.0, 784.5, 1859.0, 1052.5, 1859.0 ],
                    "source": [ "fl-subdivision-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-subdivision-p-5", 0 ],
                    "source": [ "fl-subdivision-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-sctl-0", 0 ],
                    "source": [ "fl-subdivision-p-0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-sctl-1", 0 ],
                    "source": [ "fl-subdivision-p-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-sctl-2", 0 ],
                    "source": [ "fl-subdivision-p-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-sctl-3", 0 ],
                    "source": [ "fl-subdivision-p-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-sctl-4", 0 ],
                    "source": [ "fl-subdivision-p-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-sctl-5", 0 ],
                    "source": [ "fl-subdivision-p-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-js", 0 ],
                    "source": [ "fl-tp-0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-js", 0 ],
                    "midpoints": [ 234.5, 1560.5, 84.5, 1560.5 ],
                    "source": [ "fl-tp-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-js", 0 ],
                    "midpoints": [ 384.5, 1560.5, 84.5, 1560.5 ],
                    "source": [ "fl-tp-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-js", 0 ],
                    "midpoints": [ 534.5, 1560.5, 84.5, 1560.5 ],
                    "source": [ "fl-tp-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-js", 0 ],
                    "midpoints": [ 684.5, 1560.5, 84.5, 1560.5 ],
                    "source": [ "fl-tp-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-js", 0 ],
                    "midpoints": [ 834.5, 1560.5, 84.5, 1560.5 ],
                    "source": [ "fl-tp-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-vel_decay-p-0", 0 ],
                    "source": [ "fl-vel_decay-0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-vel_decay-p-1", 0 ],
                    "source": [ "fl-vel_decay-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-vel_decay-p-2", 0 ],
                    "source": [ "fl-vel_decay-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-vel_decay-p-3", 0 ],
                    "source": [ "fl-vel_decay-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-vel_decay-p-4", 0 ],
                    "source": [ "fl-vel_decay-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-vel_decay-p-5", 0 ],
                    "source": [ "fl-vel_decay-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-sctl-0", 0 ],
                    "source": [ "fl-vel_decay-p-0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-sctl-1", 0 ],
                    "source": [ "fl-vel_decay-p-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-sctl-2", 0 ],
                    "source": [ "fl-vel_decay-p-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-sctl-3", 0 ],
                    "source": [ "fl-vel_decay-p-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-sctl-4", 0 ],
                    "source": [ "fl-vel_decay-p-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-sctl-5", 0 ],
                    "source": [ "fl-vel_decay-p-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "gr-off-0", 0 ],
                    "source": [ "gr-def-0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "gr-off-1", 0 ],
                    "source": [ "gr-def-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "gr-off-2", 0 ],
                    "source": [ "gr-def-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "gr-off-3", 0 ],
                    "source": [ "gr-def-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "gr-off-4", 0 ],
                    "source": [ "gr-def-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "gr-off-5", 0 ],
                    "source": [ "gr-def-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "gr-master-p", 0 ],
                    "source": [ "gr-master", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-js", 1 ],
                    "source": [ "gr-master-p", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "gr-off-p-0", 0 ],
                    "source": [ "gr-off-0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "gr-off-p-1", 0 ],
                    "source": [ "gr-off-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "gr-off-p-2", 0 ],
                    "source": [ "gr-off-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "gr-off-p-3", 0 ],
                    "source": [ "gr-off-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "gr-off-p-4", 0 ],
                    "source": [ "gr-off-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "gr-off-p-5", 0 ],
                    "source": [ "gr-off-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-js", 1 ],
                    "source": [ "gr-off-p-0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-js", 1 ],
                    "source": [ "gr-off-p-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-js", 1 ],
                    "source": [ "gr-off-p-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-js", 1 ],
                    "source": [ "gr-off-p-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-js", 1 ],
                    "source": [ "gr-off-p-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-js", 1 ],
                    "source": [ "gr-off-p-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "gr-swing-p", 0 ],
                    "source": [ "gr-swing", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-js", 1 ],
                    "source": [ "gr-swing-p", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "km-js", 0 ],
                    "source": [ "km-init", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-js", 1 ],
                    "source": [ "km-js", 7 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-js", 1 ],
                    "source": [ "km-js", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "km-lvl-route", 0 ],
                    "source": [ "km-js", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "km-status-route", 0 ],
                    "source": [ "km-js", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lfo-js", 1 ],
                    "source": [ "km-js", 6 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sq-grid", 0 ],
                    "source": [ "km-js", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sq-js", 0 ],
                    "source": [ "km-js", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vc-js", 0 ],
                    "source": [ "km-js", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "km-js", 0 ],
                    "source": [ "km-ld-0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "km-js", 0 ],
                    "source": [ "km-ld-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "km-js", 0 ],
                    "source": [ "km-ld-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "km-js", 0 ],
                    "source": [ "km-ld-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "km-js", 0 ],
                    "source": [ "km-ld-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "km-js", 0 ],
                    "source": [ "km-ld-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "km-js", 0 ],
                    "source": [ "km-ld-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "km-js", 0 ],
                    "source": [ "km-ld-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "km-js", 0 ],
                    "source": [ "km-len-0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "km-js", 0 ],
                    "source": [ "km-len-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "km-js", 0 ],
                    "source": [ "km-len-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "km-js", 0 ],
                    "source": [ "km-len-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "km-js", 0 ],
                    "source": [ "km-len-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "km-js", 0 ],
                    "source": [ "km-len-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "km-lvl-snd-0", 0 ],
                    "source": [ "km-lvl-route", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "km-lvl-snd-1", 0 ],
                    "source": [ "km-lvl-route", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "km-lvl-snd-2", 0 ],
                    "source": [ "km-lvl-route", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "km-lvl-snd-3", 0 ],
                    "source": [ "km-lvl-route", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "km-lvl-snd-4", 0 ],
                    "source": [ "km-lvl-route", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "km-lvl-snd-5", 0 ],
                    "source": [ "km-lvl-route", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "km-js", 0 ],
                    "source": [ "km-pcell", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "km-js", 0 ],
                    "source": [ "km-sv-0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "km-js", 0 ],
                    "source": [ "km-sv-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "km-js", 0 ],
                    "source": [ "km-sv-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "km-js", 0 ],
                    "source": [ "km-sv-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "km-js", 0 ],
                    "source": [ "km-sv-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "km-js", 0 ],
                    "source": [ "km-sv-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "km-js", 0 ],
                    "source": [ "km-sv-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "km-js", 0 ],
                    "source": [ "km-sv-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "km-len-0", 0 ],
                    "order": 1,
                    "source": [ "len-0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lp-0", 0 ],
                    "order": 0,
                    "source": [ "len-0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "km-len-1", 0 ],
                    "order": 1,
                    "source": [ "len-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lp-1", 0 ],
                    "order": 0,
                    "source": [ "len-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "km-len-2", 0 ],
                    "order": 1,
                    "source": [ "len-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lp-2", 0 ],
                    "order": 0,
                    "source": [ "len-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "km-len-3", 0 ],
                    "order": 1,
                    "source": [ "len-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lp-3", 0 ],
                    "order": 0,
                    "source": [ "len-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "km-len-4", 0 ],
                    "order": 1,
                    "source": [ "len-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lp-4", 0 ],
                    "order": 0,
                    "source": [ "len-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "km-len-5", 0 ],
                    "order": 1,
                    "source": [ "len-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lp-5", 0 ],
                    "order": 0,
                    "source": [ "len-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lfo-depth-p-0", 0 ],
                    "source": [ "lfo-depth-0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lfo-depth-p-1", 0 ],
                    "source": [ "lfo-depth-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lfo-depth-p-2", 0 ],
                    "source": [ "lfo-depth-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lfo-depth-p-3", 0 ],
                    "source": [ "lfo-depth-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lfo-depth-p-4", 0 ],
                    "source": [ "lfo-depth-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lfo-depth-p-5", 0 ],
                    "source": [ "lfo-depth-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lfo-js", 1 ],
                    "source": [ "lfo-depth-p-0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lfo-js", 1 ],
                    "source": [ "lfo-depth-p-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lfo-js", 1 ],
                    "source": [ "lfo-depth-p-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lfo-js", 1 ],
                    "source": [ "lfo-depth-p-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lfo-js", 1 ],
                    "source": [ "lfo-depth-p-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lfo-js", 1 ],
                    "source": [ "lfo-depth-p-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lfo-dest-p-0", 0 ],
                    "source": [ "lfo-dest-0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lfo-dest-p-1", 0 ],
                    "source": [ "lfo-dest-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lfo-dest-p-2", 0 ],
                    "source": [ "lfo-dest-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lfo-dest-p-3", 0 ],
                    "source": [ "lfo-dest-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lfo-dest-p-4", 0 ],
                    "source": [ "lfo-dest-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lfo-dest-p-5", 0 ],
                    "source": [ "lfo-dest-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lfo-js", 1 ],
                    "source": [ "lfo-dest-p-0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lfo-js", 1 ],
                    "source": [ "lfo-dest-p-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lfo-js", 1 ],
                    "source": [ "lfo-dest-p-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lfo-js", 1 ],
                    "source": [ "lfo-dest-p-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lfo-js", 1 ],
                    "source": [ "lfo-dest-p-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lfo-js", 1 ],
                    "source": [ "lfo-dest-p-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lfo-g-K-p", 0 ],
                    "source": [ "lfo-g-K", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lfo-js", 1 ],
                    "source": [ "lfo-g-K-p", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lfo-g-depth-p", 0 ],
                    "source": [ "lfo-g-depth", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lfo-js", 1 ],
                    "source": [ "lfo-g-depth-p", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lfo-g-rate-p", 0 ],
                    "source": [ "lfo-g-rate", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lfo-js", 1 ],
                    "source": [ "lfo-g-rate-p", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lfo-g-rho-p", 0 ],
                    "source": [ "lfo-g-rho", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lfo-js", 1 ],
                    "source": [ "lfo-g-rho-p", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lfo-g-topo-p", 0 ],
                    "source": [ "lfo-g-topo", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lfo-js", 1 ],
                    "source": [ "lfo-g-topo-p", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lfo-rate-p-0", 0 ],
                    "source": [ "lfo-rate-0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lfo-rate-p-1", 0 ],
                    "source": [ "lfo-rate-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lfo-rate-p-2", 0 ],
                    "source": [ "lfo-rate-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lfo-rate-p-3", 0 ],
                    "source": [ "lfo-rate-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lfo-rate-p-4", 0 ],
                    "source": [ "lfo-rate-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lfo-rate-p-5", 0 ],
                    "source": [ "lfo-rate-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lfo-js", 1 ],
                    "source": [ "lfo-rate-p-0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lfo-js", 1 ],
                    "source": [ "lfo-rate-p-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lfo-js", 1 ],
                    "source": [ "lfo-rate-p-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lfo-js", 1 ],
                    "source": [ "lfo-rate-p-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lfo-js", 1 ],
                    "source": [ "lfo-rate-p-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lfo-js", 1 ],
                    "source": [ "lfo-rate-p-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lfo-shape-p-0", 0 ],
                    "source": [ "lfo-shape-0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lfo-shape-p-1", 0 ],
                    "source": [ "lfo-shape-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lfo-shape-p-2", 0 ],
                    "source": [ "lfo-shape-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lfo-shape-p-3", 0 ],
                    "source": [ "lfo-shape-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lfo-shape-p-4", 0 ],
                    "source": [ "lfo-shape-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lfo-shape-p-5", 0 ],
                    "source": [ "lfo-shape-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lfo-js", 1 ],
                    "source": [ "lfo-shape-p-0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lfo-js", 1 ],
                    "source": [ "lfo-shape-p-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lfo-js", 1 ],
                    "source": [ "lfo-shape-p-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lfo-js", 1 ],
                    "source": [ "lfo-shape-p-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lfo-js", 1 ],
                    "source": [ "lfo-shape-p-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lfo-js", 1 ],
                    "source": [ "lfo-shape-p-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "len-0", 0 ],
                    "source": [ "li-0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "len-1", 0 ],
                    "source": [ "li-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "len-2", 0 ],
                    "source": [ "li-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "len-3", 0 ],
                    "source": [ "li-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "len-4", 0 ],
                    "source": [ "li-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "len-5", 0 ],
                    "source": [ "li-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sq-js", 0 ],
                    "source": [ "lp-0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sq-js", 0 ],
                    "source": [ "lp-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sq-js", 0 ],
                    "source": [ "lp-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sq-js", 0 ],
                    "source": [ "lp-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sq-js", 0 ],
                    "source": [ "lp-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sq-js", 0 ],
                    "source": [ "lp-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "midi-strip", 1 ],
                    "source": [ "midi-in", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "midi-strip", 0 ],
                    "source": [ "midi-in", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mt-0", 0 ],
                    "source": [ "midi-sel", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mt-1", 0 ],
                    "source": [ "midi-sel", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mt-2", 0 ],
                    "source": [ "midi-sel", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mt-3", 0 ],
                    "source": [ "midi-sel", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mt-4", 0 ],
                    "source": [ "midi-sel", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mt-5", 0 ],
                    "source": [ "midi-sel", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "midi-sel", 0 ],
                    "source": [ "midi-strip", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mp-cos-0", 0 ],
                    "order": 1,
                    "source": [ "mp-clip-0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mp-sin-0", 0 ],
                    "order": 0,
                    "source": [ "mp-clip-0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mp-cos-1", 0 ],
                    "order": 1,
                    "source": [ "mp-clip-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mp-sin-1", 0 ],
                    "order": 0,
                    "source": [ "mp-clip-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mp-cos-2", 0 ],
                    "order": 1,
                    "source": [ "mp-clip-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mp-sin-2", 0 ],
                    "order": 0,
                    "source": [ "mp-clip-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mp-cos-3", 0 ],
                    "order": 1,
                    "source": [ "mp-clip-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mp-sin-3", 0 ],
                    "order": 0,
                    "source": [ "mp-clip-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mp-cos-4", 0 ],
                    "order": 1,
                    "source": [ "mp-clip-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mp-sin-4", 0 ],
                    "order": 0,
                    "source": [ "mp-clip-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mp-cos-5", 0 ],
                    "order": 1,
                    "source": [ "mp-clip-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mp-sin-5", 0 ],
                    "order": 0,
                    "source": [ "mp-clip-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mp-l-0", 1 ],
                    "source": [ "mp-cos-0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mp-l-1", 1 ],
                    "source": [ "mp-cos-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mp-l-2", 1 ],
                    "source": [ "mp-cos-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mp-l-3", 1 ],
                    "source": [ "mp-cos-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mp-l-4", 1 ],
                    "source": [ "mp-cos-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mp-l-5", 1 ],
                    "source": [ "mp-cos-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mx-l-0", 0 ],
                    "source": [ "mp-l-0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mx-l-0", 1 ],
                    "source": [ "mp-l-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mx-l-1", 1 ],
                    "source": [ "mp-l-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mx-l-2", 1 ],
                    "source": [ "mp-l-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mx-l-3", 1 ],
                    "source": [ "mp-l-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mx-l-4", 1 ],
                    "source": [ "mp-l-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mp-sum-0", 1 ],
                    "source": [ "mp-lfo-0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mp-sum-1", 1 ],
                    "source": [ "mp-lfo-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mp-sum-2", 1 ],
                    "source": [ "mp-lfo-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mp-sum-3", 1 ],
                    "source": [ "mp-lfo-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mp-sum-4", 1 ],
                    "source": [ "mp-lfo-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mp-sum-5", 1 ],
                    "source": [ "mp-lfo-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mx-r-0", 0 ],
                    "source": [ "mp-r-0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mx-r-0", 1 ],
                    "source": [ "mp-r-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mx-r-1", 1 ],
                    "source": [ "mp-r-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mx-r-2", 1 ],
                    "source": [ "mp-r-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mx-r-3", 1 ],
                    "source": [ "mp-r-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mx-r-4", 1 ],
                    "source": [ "mp-r-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mp-sum-0", 0 ],
                    "source": [ "mp-rcv-0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mp-sum-1", 0 ],
                    "source": [ "mp-rcv-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mp-sum-2", 0 ],
                    "source": [ "mp-rcv-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mp-sum-3", 0 ],
                    "source": [ "mp-rcv-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mp-sum-4", 0 ],
                    "source": [ "mp-rcv-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mp-sum-5", 0 ],
                    "source": [ "mp-rcv-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mp-r-0", 1 ],
                    "source": [ "mp-sin-0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mp-r-1", 1 ],
                    "source": [ "mp-sin-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mp-r-2", 1 ],
                    "source": [ "mp-sin-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mp-r-3", 1 ],
                    "source": [ "mp-sin-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mp-r-4", 1 ],
                    "source": [ "mp-sin-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mp-r-5", 1 ],
                    "source": [ "mp-sin-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mp-clip-0", 0 ],
                    "source": [ "mp-sum-0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mp-clip-1", 0 ],
                    "source": [ "mp-sum-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mp-clip-2", 0 ],
                    "source": [ "mp-sum-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mp-clip-3", 0 ],
                    "source": [ "mp-sum-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mp-clip-4", 0 ],
                    "source": [ "mp-sum-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mp-clip-5", 0 ],
                    "source": [ "mp-sum-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mp-l-0", 0 ],
                    "order": 1,
                    "source": [ "mr-0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mp-r-0", 0 ],
                    "order": 0,
                    "source": [ "mr-0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mp-l-1", 0 ],
                    "order": 1,
                    "source": [ "mr-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mp-r-1", 0 ],
                    "order": 0,
                    "source": [ "mr-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mp-l-2", 0 ],
                    "order": 1,
                    "source": [ "mr-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mp-r-2", 0 ],
                    "order": 0,
                    "source": [ "mr-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mp-l-3", 0 ],
                    "order": 1,
                    "source": [ "mr-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mp-r-3", 0 ],
                    "order": 0,
                    "source": [ "mr-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mp-l-4", 0 ],
                    "order": 1,
                    "source": [ "mr-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mp-r-4", 0 ],
                    "order": 0,
                    "source": [ "mr-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mp-l-5", 0 ],
                    "order": 1,
                    "source": [ "mr-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mp-r-5", 0 ],
                    "order": 0,
                    "source": [ "mr-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mx-mulL", 1 ],
                    "order": 1,
                    "source": [ "mx-gain", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mx-mulR", 1 ],
                    "order": 0,
                    "source": [ "mx-gain", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mx-l-1", 0 ],
                    "source": [ "mx-l-0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mx-l-2", 0 ],
                    "source": [ "mx-l-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mx-l-3", 0 ],
                    "source": [ "mx-l-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mx-l-4", 0 ],
                    "source": [ "mx-l-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mx-mulL", 0 ],
                    "source": [ "mx-l-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mx-dac", 0 ],
                    "order": 1,
                    "source": [ "mx-limL", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mx-meter", 0 ],
                    "order": 2,
                    "source": [ "mx-limL", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mx-scope", 0 ],
                    "order": 0,
                    "source": [ "mx-limL", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mx-dac", 1 ],
                    "order": 1,
                    "source": [ "mx-limR", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mx-scope", 1 ],
                    "order": 0,
                    "source": [ "mx-limR", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mx-limL", 0 ],
                    "source": [ "mx-mulL", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mx-limR", 0 ],
                    "source": [ "mx-mulR", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mx-r-1", 0 ],
                    "source": [ "mx-r-0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mx-r-2", 0 ],
                    "source": [ "mx-r-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mx-r-3", 0 ],
                    "source": [ "mx-r-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mx-r-4", 0 ],
                    "source": [ "mx-r-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mx-mulR", 0 ],
                    "source": [ "mx-r-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mx-gain", 0 ],
                    "source": [ "mx-sig1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "out-ms", 0 ],
                    "source": [ "out-as", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "out-mw", 0 ],
                    "source": [ "out-as", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "out-as", 0 ],
                    "source": [ "out-at", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mx-dac", 0 ],
                    "source": [ "out-ms", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mx-dac", 0 ],
                    "source": [ "out-mw", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "km-pcell", 0 ],
                    "order": 1,
                    "source": [ "sq-grid", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sq-js", 1 ],
                    "order": 0,
                    "source": [ "sq-grid", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sq-grid", 0 ],
                    "source": [ "sq-init", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-tp-0", 0 ],
                    "source": [ "sq-js", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-tp-1", 0 ],
                    "source": [ "sq-js", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-tp-2", 0 ],
                    "source": [ "sq-js", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-tp-3", 0 ],
                    "source": [ "sq-js", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-tp-4", 0 ],
                    "source": [ "sq-js", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-tp-5", 0 ],
                    "source": [ "sq-js", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sq-ind", 0 ],
                    "source": [ "sq-js", 7 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "tr-hz", 0 ],
                    "order": 1,
                    "source": [ "tr-bpm", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "tr-ms", 0 ],
                    "midpoints": [ 159.5, 203.5, 649.5, 203.5 ],
                    "order": 0,
                    "source": [ "tr-bpm", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "tr-bpm", 0 ],
                    "source": [ "tr-bpmi", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sq-js", 0 ],
                    "order": 1,
                    "source": [ "tr-cnt", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "tr-sn", 0 ],
                    "order": 0,
                    "source": [ "tr-cnt", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "tr-lt", 0 ],
                    "source": [ "tr-delta", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "tr-div-coll", 0 ],
                    "source": [ "tr-div", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "tr-div-t", 0 ],
                    "order": 1,
                    "source": [ "tr-div-coll", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "tr-rsig", 0 ],
                    "midpoints": [ 304.5, 176.0, 432.0, 176.0, 432.0, 134.0, 559.5, 134.0 ],
                    "order": 0,
                    "source": [ "tr-div-coll", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "tr-div", 0 ],
                    "midpoints": [ 589.5, 146.0, 618.0, 146.0, 618.0, 74.0, 304.5, 74.0 ],
                    "source": [ "tr-div-init", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "tr-div-coll", 0 ],
                    "source": [ "tr-div-load", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "tr-bpm", 0 ],
                    "source": [ "tr-div-t", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "tr-ms", 1 ],
                    "source": [ "tr-div-t", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "tr-gate", 1 ],
                    "source": [ "tr-edge", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "tr-cnt", 0 ],
                    "source": [ "tr-gate", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "tr-sig", 0 ],
                    "source": [ "tr-hz", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "gr-def-0", 0 ],
                    "order": 21,
                    "source": [ "tr-lb", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "gr-def-1", 0 ],
                    "order": 19,
                    "source": [ "tr-lb", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "gr-def-2", 0 ],
                    "order": 16,
                    "source": [ "tr-lb", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "gr-def-3", 0 ],
                    "order": 14,
                    "source": [ "tr-lb", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "gr-def-4", 0 ],
                    "order": 11,
                    "source": [ "tr-lb", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "gr-def-5", 0 ],
                    "order": 8,
                    "source": [ "tr-lb", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "km-init", 0 ],
                    "order": 9,
                    "source": [ "tr-lb", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "li-0", 0 ],
                    "order": 6,
                    "source": [ "tr-lb", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "li-1", 0 ],
                    "order": 5,
                    "source": [ "tr-lb", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "li-2", 0 ],
                    "order": 4,
                    "source": [ "tr-lb", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "li-3", 0 ],
                    "order": 3,
                    "source": [ "tr-lb", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "li-4", 0 ],
                    "order": 2,
                    "source": [ "tr-lb", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "li-5", 0 ],
                    "order": 1,
                    "source": [ "tr-lb", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sq-init", 0 ],
                    "order": 23,
                    "source": [ "tr-lb", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "tr-bpmi", 0 ],
                    "order": 22,
                    "source": [ "tr-lb", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "tr-div-init", 0 ],
                    "order": 12,
                    "source": [ "tr-lb", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "tr-div-load", 0 ],
                    "order": 17,
                    "source": [ "tr-lb", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "tr-od", 0 ],
                    "order": 24,
                    "source": [ "tr-lb", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vc-initmsg", 0 ],
                    "midpoints": [ 39.5, 760.0, 1369.5, 760.0 ],
                    "order": 0,
                    "source": [ "tr-lb", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vld-0", 0 ],
                    "order": 20,
                    "source": [ "tr-lb", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vld-1", 0 ],
                    "order": 18,
                    "source": [ "tr-lb", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vld-2", 0 ],
                    "order": 15,
                    "source": [ "tr-lb", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vld-3", 0 ],
                    "order": 13,
                    "source": [ "tr-lb", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vld-4", 0 ],
                    "order": 10,
                    "source": [ "tr-lb", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vld-5", 0 ],
                    "order": 7,
                    "source": [ "tr-lb", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "tr-edge", 0 ],
                    "source": [ "tr-lt", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fl-js", 2 ],
                    "order": 0,
                    "source": [ "tr-ms", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lfo-js", 0 ],
                    "order": 1,
                    "source": [ "tr-ms", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "tr-ms", 1 ],
                    "source": [ "tr-ms-def", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "tr-phasor", 0 ],
                    "source": [ "tr-mult", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "tr-delta", 0 ],
                    "source": [ "tr-phasor", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "tr-gate", 0 ],
                    "source": [ "tr-play", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "tr-mult", 1 ],
                    "source": [ "tr-rsig", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "tr-rsig", 0 ],
                    "midpoints": [ 690.5, 140.0, 559.5, 140.0 ],
                    "source": [ "tr-rsig-def", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "tr-mult", 0 ],
                    "source": [ "tr-sig", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vc-0", 0 ],
                    "source": [ "vb-0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vc-1", 0 ],
                    "source": [ "vb-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vc-2", 0 ],
                    "source": [ "vb-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vc-3", 0 ],
                    "source": [ "vb-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vc-4", 0 ],
                    "source": [ "vb-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vc-5", 0 ],
                    "source": [ "vb-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vg-0", 0 ],
                    "source": [ "vc-0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vg-1", 0 ],
                    "source": [ "vc-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vg-2", 0 ],
                    "source": [ "vc-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vg-3", 0 ],
                    "source": [ "vc-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vg-4", 0 ],
                    "source": [ "vc-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vg-5", 0 ],
                    "source": [ "vc-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vc-js", 0 ],
                    "midpoints": [ 1369.5, 1264.5, 84.5, 1264.5 ],
                    "source": [ "vc-initmsg", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "km-js", 0 ],
                    "source": [ "vc-js", 7 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vc-route", 0 ],
                    "source": [ "vc-js", 6 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vp-0", 0 ],
                    "source": [ "vc-js", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vp-1", 0 ],
                    "source": [ "vc-js", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vp-2", 0 ],
                    "source": [ "vc-js", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vp-3", 0 ],
                    "source": [ "vc-js", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vp-4", 0 ],
                    "source": [ "vc-js", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vp-5", 0 ],
                    "source": [ "vc-js", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "ds-0", 0 ],
                    "source": [ "vc-route", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "ds-1", 0 ],
                    "source": [ "vc-route", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "ds-10", 0 ],
                    "source": [ "vc-route", 10 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "ds-11", 0 ],
                    "source": [ "vc-route", 11 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "ds-12", 0 ],
                    "source": [ "vc-route", 12 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "ds-2", 0 ],
                    "source": [ "vc-route", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "ds-3", 0 ],
                    "source": [ "vc-route", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "ds-4", 0 ],
                    "source": [ "vc-route", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "ds-5", 0 ],
                    "source": [ "vc-route", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "ds-6", 0 ],
                    "source": [ "vc-route", 6 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "ds-7", 0 ],
                    "source": [ "vc-route", 7 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "ds-8", 0 ],
                    "source": [ "vc-route", 8 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "ds-9", 0 ],
                    "source": [ "vc-route", 9 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vc-js", 0 ],
                    "midpoints": [ 1261.5, 1266.5, 84.5, 1266.5 ],
                    "source": [ "vc-tab", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vl-0", 0 ],
                    "source": [ "vg-0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vl-1", 0 ],
                    "source": [ "vg-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vl-2", 0 ],
                    "source": [ "vg-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vl-3", 0 ],
                    "source": [ "vg-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vl-4", 0 ],
                    "source": [ "vg-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vl-5", 0 ],
                    "source": [ "vg-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vs-0", 0 ],
                    "source": [ "vl-0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vs-1", 0 ],
                    "source": [ "vl-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vs-2", 0 ],
                    "source": [ "vl-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vs-3", 0 ],
                    "source": [ "vl-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vs-4", 0 ],
                    "source": [ "vl-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vs-5", 0 ],
                    "source": [ "vl-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vlf-0", 0 ],
                    "source": [ "vld-0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vlf-1", 0 ],
                    "source": [ "vld-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vlf-2", 0 ],
                    "source": [ "vld-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vlf-3", 0 ],
                    "source": [ "vld-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vlf-4", 0 ],
                    "source": [ "vld-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vlf-5", 0 ],
                    "source": [ "vld-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vl-0", 1 ],
                    "order": 1,
                    "source": [ "vlf-0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vlk-0", 0 ],
                    "order": 0,
                    "source": [ "vlf-0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vl-1", 1 ],
                    "order": 1,
                    "source": [ "vlf-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vlk-1", 0 ],
                    "order": 0,
                    "source": [ "vlf-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vl-2", 1 ],
                    "order": 1,
                    "source": [ "vlf-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vlk-2", 0 ],
                    "order": 0,
                    "source": [ "vlf-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vl-3", 1 ],
                    "order": 1,
                    "source": [ "vlf-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vlk-3", 0 ],
                    "order": 0,
                    "source": [ "vlf-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vl-4", 1 ],
                    "order": 1,
                    "source": [ "vlf-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vlk-4", 0 ],
                    "order": 0,
                    "source": [ "vlf-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vl-5", 1 ],
                    "order": 1,
                    "source": [ "vlf-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vlk-5", 0 ],
                    "order": 0,
                    "source": [ "vlf-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "km-js", 0 ],
                    "source": [ "vlk-0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "km-js", 0 ],
                    "source": [ "vlk-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "km-js", 0 ],
                    "source": [ "vlk-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "km-js", 0 ],
                    "source": [ "vlk-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "km-js", 0 ],
                    "source": [ "vlk-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "km-js", 0 ],
                    "source": [ "vlk-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vls-0", 0 ],
                    "source": [ "vlr-0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vls-1", 0 ],
                    "source": [ "vlr-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vls-2", 0 ],
                    "source": [ "vlr-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vls-3", 0 ],
                    "source": [ "vlr-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vls-4", 0 ],
                    "source": [ "vlr-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vls-5", 0 ],
                    "source": [ "vlr-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vlf-0", 0 ],
                    "source": [ "vls-0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vlf-1", 0 ],
                    "source": [ "vls-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vlf-2", 0 ],
                    "source": [ "vls-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vlf-3", 0 ],
                    "source": [ "vls-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vlf-4", 0 ],
                    "source": [ "vls-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vlf-5", 0 ],
                    "source": [ "vls-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vg-0", 0 ],
                    "source": [ "vr-0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vg-1", 0 ],
                    "source": [ "vr-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vg-2", 0 ],
                    "source": [ "vr-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vg-3", 0 ],
                    "source": [ "vr-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vg-4", 0 ],
                    "source": [ "vr-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vg-5", 0 ],
                    "source": [ "vr-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vc-0", 0 ],
                    "source": [ "vt-0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vc-1", 0 ],
                    "source": [ "vt-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vc-2", 0 ],
                    "source": [ "vt-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vc-3", 0 ],
                    "source": [ "vt-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vc-4", 0 ],
                    "source": [ "vt-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vc-5", 0 ],
                    "source": [ "vt-5", 0 ]
                }
            }
        ],
        "parameters": {
            "vc-tab": [ "voice_select", "voice", 0 ],
            "inherited_shortname": 1
        },
        "autosave": 0
    }
}