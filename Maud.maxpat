{
	"patcher": {
		"fileversion": 1,
		"appversion": {
			"major": 9,
			"minor": 0,
			"revision": 0,
			"architecture": "x64",
			"modernui": 1
		},
		"classnamespace": "box",
		"rect": [
			40,
			60,
			1180,
			760
		],
		"bglocked": 0,
		"openinpresentation": 1,
		"bgcolor": [
			0.0,
			0.0,
			0.0,
			1.0
		],
		"default_fontsize": 12.0,
		"default_fontname": "Arial",
		"gridsize": [
			15.0,
			15.0
		],
		"gridsnaponopen": 1,
		"objectsnaponopen": 1,
		"statusbarvisible": 2,
		"toolbarvisible": 1,
		"description": "Maud - 6-Voice Polymetric Alien Percussion Groovebox",
		"boxes": [
			{
				"box": {
					"id": "title",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						30,
						15,
						300,
						20
					],
					"text": "MAUD",
					"fontsize": 18.0,
					"fontface": 1
				}
			},
			{
				"box": {
					"id": "sec-tr",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						30,
						55,
						101,
						20
					],
					"text": "TRANSPORT",
					"fontface": 1,
					"fontsize": 14.0,
					"textcolor": [
						0.3,
						0.3,
						0.3,
						1.0
					]
				}
			},
			{
				"box": {
					"id": "tr-lb",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						30,
						85,
						58,
						22
					],
					"outlettype": [
						"bang"
					],
					"text": "loadbang"
				}
			},
			{
				"box": {
					"id": "tr-od",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						30,
						115,
						340,
						22
					],
					"outlettype": [
						""
					],
					"text": ";max overdrive 1 \\; max sched_overdrive 1"
				}
			},
			{
				"box": {
					"id": "tr-bpmi",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						105,
						85,
						32,
						22
					],
					"outlettype": [
						""
					],
					"text": "120"
				}
			},
			{
				"box": {
					"id": "tr-bpm",
					"maxclass": "number",
					"numinlets": 1,
					"numoutlets": 2,
					"patching_rect": [
						150,
						85,
						50,
						22
					],
					"outlettype": [
						"",
						"bang"
					],
					"minimum": 30,
					"maximum": 300,
					"presentation": 1,
					"presentation_rect": [
						300,
						47,
						60,
						22
					]
				}
			},
			{
				"box": {
					"id": "tr-bl",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						210,
						85,
						30,
						20
					],
					"text": "BPM"
				}
			},
			{
				"box": {
					"id": "tr-div",
					"maxclass": "umenu",
					"numinlets": 1,
					"numoutlets": 2,
					"patching_rect": [
						255,
						85,
						55,
						20
					],
					"outlettype": [
						"int",
						""
					],
					"items": [
						"1/16",
						",",
						"1/8",
						",",
						"1/8T",
						",",
						"1/16T",
						",",
						"1/32"
					],
					"presentation": 1,
					"presentation_rect": [
						374,
						47,
						66,
						22
					]
				}
			},
			{
				"box": {
					"id": "tr-div-l",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						315,
						85,
						30,
						20
					],
					"text": "DIV"
				}
			},
			{
				"box": {
					"id": "tr-div-coll",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 2,
					"patching_rect": [
						255,
						145,
						65,
						22
					],
					"outlettype": [
						"",
						""
					],
					"text": "coll"
				}
			},
			{
				"box": {
					"id": "tr-div-load",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						255,
						115,
						280,
						22
					],
					"outlettype": [
						""
					],
					"text": "store 0 1., store 1 0.5, store 2 0.75, store 3 1.5, store 4 2."
				}
			},
			{
				"box": {
					"id": "tr-div-init",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						540,
						115,
						18,
						22
					],
					"outlettype": [
						""
					],
					"text": "0"
				}
			},
			{
				"box": {
					"id": "tr-div-t",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 2,
					"patching_rect": [
						255,
						175,
						35,
						22
					],
					"outlettype": [
						"bang",
						"float"
					],
					"text": "t b f"
				}
			},
			{
				"box": {
					"id": "tr-hz",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						450,
						115,
						120,
						22
					],
					"outlettype": [
						"float"
					],
					"text": "expr $f1 / 60. * 4."
				}
			},
			{
				"box": {
					"id": "tr-sig",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						450,
						145,
						35,
						22
					],
					"outlettype": [
						"signal"
					],
					"text": "sig~"
				}
			},
			{
				"box": {
					"id": "tr-rsig",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						510,
						145,
						35,
						22
					],
					"outlettype": [
						"signal"
					],
					"text": "sig~"
				}
			},
			{
				"box": {
					"id": "tr-rsig-def",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						510,
						115,
						75,
						22
					],
					"outlettype": [
						"float"
					],
					"text": "loadmess 1."
				}
			},
			{
				"box": {
					"id": "tr-mult",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						450,
						175,
						35,
						22
					],
					"outlettype": [
						"signal"
					],
					"text": "*~"
				}
			},
			{
				"box": {
					"id": "tr-phasor",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						450,
						205,
						55,
						22
					],
					"outlettype": [
						"signal"
					],
					"text": "phasor~"
				}
			},
			{
				"box": {
					"id": "tr-delta",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						530,
						205,
						45,
						22
					],
					"outlettype": [
						"signal"
					],
					"text": "delta~"
				}
			},
			{
				"box": {
					"id": "tr-lt",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						590,
						205,
						35,
						22
					],
					"outlettype": [
						"signal"
					],
					"text": "<~ 0"
				}
			},
			{
				"box": {
					"id": "tr-edge",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 2,
					"patching_rect": [
						640,
						205,
						45,
						22
					],
					"outlettype": [
						"bang",
						"bang"
					],
					"text": "edge~"
				}
			},
			{
				"box": {
					"id": "tr-play",
					"maxclass": "toggle",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						730,
						81,
						28,
						28
					],
					"outlettype": [
						"int"
					],
					"presentation": 1,
					"presentation_rect": [
						460,
						46,
						26,
						26
					]
				}
			},
			{
				"box": {
					"id": "tr-pl",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						765,
						85,
						40,
						20
					],
					"text": "PLAY",
					"fontface": 1
				}
			},
			{
				"box": {
					"id": "tr-gate",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						730,
						205,
						50,
						22
					],
					"outlettype": [
						""
					],
					"text": "gate"
				}
			},
			{
				"box": {
					"id": "tr-cnt",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 4,
					"patching_rect": [
						800,
						205,
						110,
						22
					],
					"outlettype": [
						"int",
						"",
						"",
						"int"
					],
					"text": "counter 0 287"
				}
			},
			{
				"box": {
					"id": "tr-tt",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 2,
					"patching_rect": [
						530,
						95,
						45,
						22
					],
					"outlettype": [
						"bang",
						"bang"
					],
					"text": "t b b"
				}
			},
			{
				"box": {
					"id": "tr-timer",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						585,
						95,
						55,
						22
					],
					"outlettype": [
						""
					],
					"text": "timer"
				}
			},
			{
				"box": {
					"id": "tr-tnow",
					"maxclass": "flonum",
					"numinlets": 1,
					"numoutlets": 2,
					"patching_rect": [
						650,
						95,
						60,
						22
					],
					"outlettype": [
						"",
						"bang"
					],
					"presentation": 1,
					"presentation_rect": [
						530,
						47,
						62,
						22
					]
				}
			},
			{
				"box": {
					"id": "tr-tnow-l",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						715,
						95,
						60,
						20
					],
					"text": "STEP ms"
				}
			},
			{
				"box": {
					"id": "tr-tpeak",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						585,
						118,
						55,
						22
					],
					"outlettype": [
						""
					],
					"text": "peak"
				}
			},
			{
				"box": {
					"id": "tr-tworst",
					"maxclass": "flonum",
					"numinlets": 1,
					"numoutlets": 2,
					"patching_rect": [
						650,
						118,
						60,
						22
					],
					"outlettype": [
						"",
						"bang"
					],
					"presentation": 1,
					"presentation_rect": [
						666,
						47,
						62,
						22
					]
				}
			},
			{
				"box": {
					"id": "tr-tworst-l",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						715,
						118,
						70,
						20
					],
					"text": "WORST ms"
				}
			},
			{
				"box": {
					"id": "tr-ttrough",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						790,
						95,
						60,
						22
					],
					"outlettype": [
						""
					],
					"text": "trough"
				}
			},
			{
				"box": {
					"id": "tr-tbest",
					"maxclass": "flonum",
					"numinlets": 1,
					"numoutlets": 2,
					"patching_rect": [
						855,
						95,
						60,
						22
					],
					"outlettype": [
						"",
						"bang"
					],
					"presentation": 1,
					"presentation_rect": [
						598,
						47,
						62,
						22
					]
				}
			},
			{
				"box": {
					"id": "tr-tbest-l",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						920,
						95,
						60,
						20
					],
					"text": "BEST ms"
				}
			},
			{
				"box": {
					"id": "tr-trst",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 2,
					"patching_rect": [
						790,
						141,
						45,
						22
					],
					"outlettype": [
						"bang",
						"bang"
					],
					"text": "t b b"
				}
			},
			{
				"box": {
					"id": "tr-rst-hi",
					"maxclass": "message",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						845,
						141,
						45,
						22
					],
					"text": "99999"
				}
			},
			{
				"box": {
					"id": "tr-rst-lo",
					"maxclass": "message",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						895,
						141,
						30,
						22
					],
					"text": "0"
				}
			},
			{
				"box": {
					"id": "tr-rst-l",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						935,
						141,
						120,
						20
					],
					"text": "auto-reset on play"
				}
			},
			{
				"box": {
					"id": "tr-sl",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						920,
						205,
						40,
						20
					],
					"text": "STEP"
				}
			},
			{
				"box": {
					"id": "tr-sn",
					"maxclass": "number",
					"numinlets": 1,
					"numoutlets": 2,
					"patching_rect": [
						965,
						205,
						45,
						22
					],
					"outlettype": [
						"",
						"bang"
					]
				}
			},
			{
				"box": {
					"id": "tr-ms",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						600,
						175,
						155,
						22
					],
					"outlettype": [
						"float"
					],
					"text": "expr 60000. / ($f1 * 4. * $f2)"
				}
			},
			{
				"box": {
					"id": "tr-ms-def",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						770,
						175,
						75,
						22
					],
					"outlettype": [
						"float"
					],
					"text": "loadmess 1."
				}
			},
			{
				"box": {
					"id": "sec-sq",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						30,
						285,
						101,
						20
					],
					"text": "SEQUENCER",
					"fontface": 1,
					"fontsize": 14.0,
					"textcolor": [
						0.3,
						0.3,
						0.3,
						1.0
					]
				}
			},
			{
				"box": {
					"id": "rl-0",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						15,
						302,
						55,
						20
					],
					"text": "MASS",
					"fontface": 1,
					"fontsize": 11.0
				}
			},
			{
				"box": {
					"id": "rl-1",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						15,
						326,
						55,
						20
					],
					"text": "VEIN",
					"fontface": 1,
					"fontsize": 11.0
				}
			},
			{
				"box": {
					"id": "rl-2",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						15,
						350,
						55,
						20
					],
					"text": "SHARD",
					"fontface": 1,
					"fontsize": 11.0
				}
			},
			{
				"box": {
					"id": "rl-3",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						15,
						374,
						55,
						20
					],
					"text": "HUSK",
					"fontface": 1,
					"fontsize": 11.0
				}
			},
			{
				"box": {
					"id": "rl-4",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						15,
						398,
						55,
						20
					],
					"text": "FAULT",
					"fontface": 1,
					"fontsize": 11.0
				}
			},
			{
				"box": {
					"id": "rl-5",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						15,
						422,
						55,
						20
					],
					"text": "HALO",
					"fontface": 1,
					"fontsize": 11.0
				}
			},
			{
				"box": {
					"id": "sq-ind",
					"maxclass": "multislider",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						75,
						282,
						780,
						15
					],
					"outlettype": [
						"list"
					],
					"setstyle": 0,
					"size": 32,
					"setminmax": [
						0.0,
						1.0
					],
					"slidercolor": [
						0.3,
						0.8,
						0.5,
						1.0
					],
					"candicane2": [
						0.15,
						0.15,
						0.15,
						1.0
					],
					"parameter_enable": 0,
					"presentation": 1,
					"presentation_rect": [
						122,
						128,
						780,
						10
					]
				}
			},
			{
				"box": {
					"id": "sq-grid",
					"maxclass": "matrixctrl",
					"numinlets": 1,
					"numoutlets": 2,
					"patching_rect": [
						75,
						300,
						780,
						144
					],
					"outlettype": [
						"list",
						""
					],
					"parameter_enable": 0,
					"columns": 32,
					"rows": 6,
					"presentation": 1,
					"presentation_rect": [
						122,
						144,
						780,
						150
					],
					"bgcolor": [
						0,
						0,
						0,
						0
					],
					"color": [
						0.765,
						1.0,
						0.616,
						1.0
					],
					"elementcolor": [
						0.204,
						0.204,
						0.204,
						1.0
					]
				}
			},
			{
				"box": {
					"id": "len-title",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						870,
						285,
						55,
						20
					],
					"text": "LENGTH",
					"fontface": 1
				}
			},
			{
				"box": {
					"id": "len-0",
					"maxclass": "umenu",
					"numinlets": 1,
					"numoutlets": 2,
					"patching_rect": [
						870,
						300,
						55,
						20
					],
					"outlettype": [
						"int",
						""
					],
					"items": [
						"4",
						",",
						"8",
						",",
						"12",
						",",
						"16",
						",",
						"24",
						",",
						"32"
					],
					"presentation": 1,
					"presentation_rect": [
						914,
						146,
						56,
						20
					]
				}
			},
			{
				"box": {
					"id": "lp-0",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						930,
						300,
						120,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend setlength_idx 0"
				}
			},
			{
				"box": {
					"id": "li-0",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						930,
						322,
						22,
						18
					],
					"outlettype": [
						""
					],
					"text": "3"
				}
			},
			{
				"box": {
					"id": "len-1",
					"maxclass": "umenu",
					"numinlets": 1,
					"numoutlets": 2,
					"patching_rect": [
						870,
						324,
						55,
						20
					],
					"outlettype": [
						"int",
						""
					],
					"items": [
						"4",
						",",
						"8",
						",",
						"12",
						",",
						"16",
						",",
						"24",
						",",
						"32"
					],
					"presentation": 1,
					"presentation_rect": [
						914,
						171,
						56,
						20
					]
				}
			},
			{
				"box": {
					"id": "lp-1",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						930,
						324,
						120,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend setlength_idx 1"
				}
			},
			{
				"box": {
					"id": "li-1",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						930,
						346,
						22,
						18
					],
					"outlettype": [
						""
					],
					"text": "3"
				}
			},
			{
				"box": {
					"id": "len-2",
					"maxclass": "umenu",
					"numinlets": 1,
					"numoutlets": 2,
					"patching_rect": [
						870,
						348,
						55,
						20
					],
					"outlettype": [
						"int",
						""
					],
					"items": [
						"4",
						",",
						"8",
						",",
						"12",
						",",
						"16",
						",",
						"24",
						",",
						"32"
					],
					"presentation": 1,
					"presentation_rect": [
						914,
						196,
						56,
						20
					]
				}
			},
			{
				"box": {
					"id": "lp-2",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						930,
						348,
						120,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend setlength_idx 2"
				}
			},
			{
				"box": {
					"id": "li-2",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						930,
						370,
						22,
						18
					],
					"outlettype": [
						""
					],
					"text": "3"
				}
			},
			{
				"box": {
					"id": "len-3",
					"maxclass": "umenu",
					"numinlets": 1,
					"numoutlets": 2,
					"patching_rect": [
						870,
						372,
						55,
						20
					],
					"outlettype": [
						"int",
						""
					],
					"items": [
						"4",
						",",
						"8",
						",",
						"12",
						",",
						"16",
						",",
						"24",
						",",
						"32"
					],
					"presentation": 1,
					"presentation_rect": [
						914,
						221,
						56,
						20
					]
				}
			},
			{
				"box": {
					"id": "lp-3",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						930,
						372,
						120,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend setlength_idx 3"
				}
			},
			{
				"box": {
					"id": "li-3",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						930,
						394,
						22,
						18
					],
					"outlettype": [
						""
					],
					"text": "3"
				}
			},
			{
				"box": {
					"id": "len-4",
					"maxclass": "umenu",
					"numinlets": 1,
					"numoutlets": 2,
					"patching_rect": [
						870,
						396,
						55,
						20
					],
					"outlettype": [
						"int",
						""
					],
					"items": [
						"4",
						",",
						"8",
						",",
						"12",
						",",
						"16",
						",",
						"24",
						",",
						"32"
					],
					"presentation": 1,
					"presentation_rect": [
						914,
						246,
						56,
						20
					]
				}
			},
			{
				"box": {
					"id": "lp-4",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						930,
						396,
						120,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend setlength_idx 4"
				}
			},
			{
				"box": {
					"id": "li-4",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						930,
						418,
						22,
						18
					],
					"outlettype": [
						""
					],
					"text": "3"
				}
			},
			{
				"box": {
					"id": "len-5",
					"maxclass": "umenu",
					"numinlets": 1,
					"numoutlets": 2,
					"patching_rect": [
						870,
						420,
						55,
						20
					],
					"outlettype": [
						"int",
						""
					],
					"items": [
						"4",
						",",
						"8",
						",",
						"12",
						",",
						"16",
						",",
						"24",
						",",
						"32"
					],
					"presentation": 1,
					"presentation_rect": [
						914,
						271,
						56,
						20
					]
				}
			},
			{
				"box": {
					"id": "lp-5",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						930,
						420,
						120,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend setlength_idx 5"
				}
			},
			{
				"box": {
					"id": "li-5",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						930,
						442,
						22,
						18
					],
					"outlettype": [
						""
					],
					"text": "3"
				}
			},
			{
				"box": {
					"id": "sq-js",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 8,
					"patching_rect": [
						75,
						470,
						900,
						22
					],
					"outlettype": [
						"",
						"",
						"",
						"",
						"",
						"",
						"",
						""
					],
					"text": "js sequencer.js"
				}
			},
			{
				"box": {
					"id": "sq-init",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						75,
						500,
						700,
						22
					],
					"outlettype": [
						""
					],
					"text": "set 0 0 1, set 4 0 1, set 8 0 1, set 12 0 1, set 2 1 1, set 6 1 1, set 10 1 1, set 14 1 1, set 0 2 1, set 2 2 1, set 3 2 1, set 6 2 1, set 8 2 1, set 10 2 1, set 11 2 1, set 14 2 1, set 4 3 1, set 12 3 1, set 0 4 1, set 8 4 1, set 3 5 1, set 11 5 1"
				}
			},
			{
				"box": {
					"id": "sec-vc",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						30,
						545,
						74,
						20
					],
					"text": "VOICES",
					"fontface": 1,
					"fontsize": 14.0,
					"textcolor": [
						0.3,
						0.3,
						0.3,
						1.0
					]
				}
			},
			{
				"box": {
					"id": "vn-0",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						75,
						560,
						60,
						20
					],
					"text": "MASS",
					"fontface": 1,
					"fontsize": 11.0
				}
			},
			{
				"box": {
					"id": "vb-0",
					"maxclass": "button",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						135,
						582,
						22,
						22
					],
					"outlettype": [
						"bang"
					]
				}
			},
			{
				"box": {
					"id": "vc-0",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						75,
						582,
						42,
						22
					],
					"outlettype": [
						"signal"
					],
					"text": "click~"
				}
			},
			{
				"box": {
					"id": "vr-0",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						75,
						612,
						90,
						22
					],
					"outlettype": [
						""
					],
					"text": "receive v0_p"
				}
			},
			{
				"box": {
					"id": "vg-0",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						75,
						642,
						130,
						22
					],
					"outlettype": [
						"signal"
					],
					"text": "gen~",
					"patcher": {
						"fileversion": 1,
						"appversion": {
							"major": 9,
							"minor": 0,
							"revision": 0,
							"architecture": "x64",
							"modernui": 1
						},
						"rect": [
							0,
							0,
							800,
							600
						],
						"editing_bgcolor": [
							0.65,
							0.65,
							0.65,
							1.0
						],
						"boxes": [
							{
								"box": {
									"id": "g-in",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										50,
										14,
										30,
										22
									],
									"text": "in 1"
								}
							},
							{
								"box": {
									"id": "g-cb",
									"maxclass": "codebox",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										50,
										50,
										700,
										450
									],
									"code": "Param pitch(60);\nParam decay_ms(200);\nParam exciter_type(0);\nParam body_type(0);\nParam stress(0.3);\nParam bloom(0.3);\nParam scar(0);\nParam weight(0.5);\nParam mist(0.2);\nParam heat_macro(0.3);\nParam drift_param(0);\nParam density_param(0.5);\nParam flam_pitch_off(0);\nParam flam_vel(1);\nParam flam_pitch_gate(0);\nParam lfo_pitch_off(0);\nParam lfo_stress_off(0);\nParam lfo_bloom_off(0);\nParam lfo_decay_off(0);\nParam lfo_mist_off(0);\nParam lfo_heat_off(0);\nParam lfo_drift_off(0);\nParam lfo_density_off(0);\n\nHistory prev_trig(0);\nHistory pressure(0);\nHistory heat_state(0);\nHistory fatigue(0);\nHistory exc_car_phase(0);\nHistory exc_mod_phase(0);\nHistory exc_env(0);\nHistory noise_filt(0);\nHistory ry1_a(0);\nHistory ry2_a(0);\nHistory ry1_b(0);\nHistory ry2_b(0);\nHistory ry1_c(0);\nHistory ry2_c(0);\nHistory ry1_d(0);\nHistory ry2_d(0);\nHistory comb_lp(0);\nHistory halo_env(0);\nHistory main_env(0);\nHistory pitch_env(0);\nHistory fb_state(0);\nHistory fb_hp(0);\nHistory cav_lp(0);\nHistory fb_lfo_phase(0);\nHistory fb_lp2(0);\nHistory flam_p_env(0);\nDelay comb_d(8820);\nDelay cav_d(8820);\n\ntrig_on = (in1 > 0.5) * (prev_trig <= 0.5);\nvel = in1 * flam_vel;\nprev_trig = in1;\n\nif (trig_on) {\n    pressure = min(pressure + vel * (0.3 + stress * 0.7) * (1 - pressure), 1);\n    fatigue = min(fatigue + 0.02 * (1 - fatigue), 1);\n    exc_env = 1;\n    halo_env = vel * mist;\n    main_env = vel;\n    pitch_env = vel;\n    flam_p_env = flam_pitch_off;\n}\n\np_decay = 0.00002 + (1 - stress) * 0.00008;\npressure = pressure * (1 - p_decay);\nheat_state = heat_state + (pressure - heat_state) * 0.0002;\nheat_state = heat_state * (1 - 0.00005);\nfatigue = fatigue * (1 - 0.000002);\nstiffness = fatigue * 0.6 + pressure * 0.4;\n\neff_stress = clamp(stress + lfo_stress_off, 0, 1);\neff_bloom = clamp(bloom + lfo_bloom_off, 0, 1);\neff_mist = clamp(mist + lfo_mist_off, 0, 1);\neff_heat = clamp(heat_macro + lfo_heat_off + heat_state * 0.5, 0, 1);\neff_drift = clamp(drift_param + lfo_drift_off, 0, 1);\neff_density = clamp(density_param + lfo_density_off, 0, 1);\neff_decay_ms = clamp(decay_ms + lfo_decay_off, 5, 80);\neff_scar = clamp(scar + pressure * eff_stress, 0, 1);\n\nfp_rate = exp(-(flam_pitch_gate * 8)) * 0.15;\nflam_p_env = flam_p_env * (1 - fp_rate);\n\np_env_rate = 0.002 + weight * 0.008;\npitch_env = pitch_env * (1 - p_env_rate);\np_sweep = pitch_env * weight * 24;\np_mod = pitch + lfo_pitch_off + flam_p_env + p_sweep + noise() * pressure * eff_drift * 2;\nbase_freq = mtof(clamp(p_mod, 10, 130));\nw_scale = 1 - weight * 0.35;\nbody_freq = max(base_freq * w_scale, 25);\n\ne_decay = 0.0005 + eff_density * 0.003;\nexc_env = exc_env * (1 - e_decay);\n\nexciter_out = 0;\nif (exciter_type < 0.5) {\n    fm_r = 1.41 + eff_heat * 3;\n    mf = base_freq * fm_r;\n    fm_idx = (12 + eff_heat * 18) * exc_env;\n    exc_mod_phase = wrap(exc_mod_phase + mf / samplerate, 0, 1);\n    mod_sig = sin(exc_mod_phase * twopi) * fm_idx;\n    exc_car_phase = wrap(exc_car_phase + base_freq / samplerate, 0, 1);\n    exciter_out = sin(exc_car_phase * twopi + mod_sig) * exc_env * 1.5;\n} else {\n    n = noise();\n    cutoff = base_freq * (3 + eff_heat * 12);\n    coeff = clamp(1 - exp(-twopi * cutoff / samplerate), 0.001, 0.999);\n    noise_filt = noise_filt + (n - noise_filt) * coeff;\n    exciter_out = noise_filt * 6 * exc_env;\n}\n\nfb_lfo_rate = 0.3 + (1 - eff_bloom) * 7.7;\nfb_lfo_depth_raw = clamp((eff_mist - 0.3) / 0.7, 0, 1);\nfb_lfo_phase = wrap(fb_lfo_phase + fb_lfo_rate / samplerate, 0, 1);\nfb_lfo = sin(fb_lfo_phase * twopi);\nfb_gain = eff_mist * (0.5 + eff_stress * 0.5) * (1 + fb_lfo * fb_lfo_depth_raw * 0.15);\nfb_gain = clamp(fb_gain, 0, 0.95);\nhp_cut_base = 80 + (1 - weight) * 2400;\nhp_cut = hp_cut_base * (1 + fb_lfo * fb_lfo_depth_raw * 0.7);\nhp_c = clamp(1 - exp(-twopi * hp_cut / samplerate), 0.001, 0.999);\nfb_lp = fb_hp + (fb_state - fb_hp) * hp_c;\nfb_hp = fb_lp;\nfb_hpf = fb_state - fb_lp;\nlp2_cut = 800 + eff_bloom * 10000 + fb_lfo * fb_lfo_depth_raw * 3000;\nlp2_c = clamp(1 - exp(-twopi * lp2_cut / samplerate), 0.001, 0.999);\nfb_lp2 = fb_lp2 + (fb_hpf - fb_lp2) * lp2_c;\nfb_ltd = tanh(fb_lp2 * 2.5) * 0.6;\nbl_rate = 0.000001 + (1 - eff_bloom) * 0.0003;\nhalo_env = halo_env * (1 - bl_rate);\nfb_sig = fb_ltd * fb_gain * halo_env;\nbody_input = exciter_out + fb_sig;\n\neff_decay = eff_decay_ms * eff_decay_ms * 2.5;\ndecay_norm = clamp(eff_decay / 16000, 0, 1);\neff_Q = clamp(0.985 + decay_norm * 0.014 - fatigue * 0.15, 0.85, 0.9995);\n\nbody_out = 0;\nif (body_type < 0.5) {\n    w1 = twopi * body_freq * 1.0 / samplerate;\n    r1 = eff_Q;\n    ya = body_input + 2 * r1 * cos(w1) * ry1_a - r1 * r1 * ry2_a;\n    ry2_a = ry1_a; ry1_a = ya;\n    w2 = twopi * body_freq * (1.347 + stiffness * 0.2) / samplerate;\n    r2 = eff_Q * 0.995;\n    yb = body_input + 2 * r2 * cos(w2) * ry1_b - r2 * r2 * ry2_b;\n    ry2_b = ry1_b; ry1_b = yb;\n    w3 = twopi * body_freq * (1.891 + stiffness * 0.25) / samplerate;\n    r3 = eff_Q * 0.99;\n    yc = body_input + 2 * r3 * cos(w3) * ry1_c - r3 * r3 * ry2_c;\n    ry2_c = ry1_c; ry1_c = yc;\n    w4 = twopi * body_freq * (2.534 + stiffness * 0.35) / samplerate;\n    r4 = eff_Q * 0.985;\n    yd = body_input + 2 * r4 * cos(w4) * ry1_d - r4 * r4 * ry2_d;\n    ry2_d = ry1_d; ry1_d = yd;\n    body_out = (ya + yb * 0.8 + yc * 0.55 + yd * 0.4) * 0.35;\n} else if (body_type < 1.5) {\n    d_samps = clamp(samplerate / base_freq, 2, 8000);\n    fb = eff_Q * 0.92;\n    delayed = comb_d.read(d_samps);\n    d_coeff = 0.25 + fatigue * 0.35;\n    comb_lp = comb_lp + (delayed - comb_lp) * d_coeff;\n    comb_d.write(body_input + comb_lp * fb);\n    body_out = delayed * 1.3;\n} else if (body_type < 2.5) {\n    cav_len = clamp(samplerate / base_freq, 2, 8000);\n    cav_fb = eff_Q * (0.88 + pressure * 0.1);\n    cav_fb = clamp(cav_fb, 0, 0.996);\n    cav_del = cav_d.read(cav_len);\n    cav_cut = 0.15 + (1 - pressure) * 0.35 + eff_heat * 0.3;\n    cav_lp = cav_lp + (cav_del - cav_lp) * cav_cut;\n    cav_d.write(body_input + cav_lp * cav_fb);\n    w1 = twopi * body_freq * 1.0 / samplerate;\n    r1 = eff_Q * 0.97;\n    ya = cav_del + 2 * r1 * cos(w1) * ry1_a - r1 * r1 * ry2_a;\n    ry2_a = ry1_a; ry1_a = ya;\n    body_out = (cav_del * 0.35 + ya * 0.65) * 1.2;\n} else {\n    mem_r1 = 1.0;\n    mem_r2 = 1.594;\n    mem_r3 = 2.136;\n    mem_r4 = 2.296;\n    w1 = twopi * body_freq * mem_r1 / samplerate;\n    r1 = eff_Q * 0.999;\n    ya = body_input + 2 * r1 * cos(w1) * ry1_a - r1 * r1 * ry2_a;\n    ry2_a = ry1_a; ry1_a = ya;\n    w2 = twopi * body_freq * mem_r2 / samplerate;\n    r2 = eff_Q * 0.995;\n    yb = body_input + 2 * r2 * cos(w2) * ry1_b - r2 * r2 * ry2_b;\n    ry2_b = ry1_b; ry1_b = yb;\n    w3 = twopi * body_freq * mem_r3 / samplerate;\n    r3 = eff_Q * 0.99;\n    yc = body_input + 2 * r3 * cos(w3) * ry1_c - r3 * r3 * ry2_c;\n    ry2_c = ry1_c; ry1_c = yc;\n    w4 = twopi * body_freq * mem_r4 / samplerate;\n    r4 = eff_Q * 0.985;\n    yd = body_input + 2 * r4 * cos(w4) * ry1_d - r4 * r4 * ry2_d;\n    ry2_d = ry1_d; ry1_d = yd;\n    body_out = (ya * 0.55 + yb * 0.3 + yc * 0.2 + yd * 0.15) * 1.1;\n}\n\nfold_d = 1 + eff_scar * 4;\nfractured = body_out;\nif (eff_scar > 0.01) {\n    biased = body_out + pressure * 0.3;\n    folded = asin(sin(biased * fold_d * 1.5707963)) * 0.6366197;\n    fractured = body_out * (1 - eff_scar) + folded * eff_scar;\n}\n\nfb_source = body_out * (1 - eff_stress) + fractured * eff_stress;\nfb_state = fb_source;\n\nenv_rate = 1.0 / max(eff_decay * samplerate / 1000, 1);\nmain_env = main_env * (1 - env_rate);\n\nbl_env = halo_env * eff_mist;\nout_env = max(main_env, bl_env);\nraw_out = fractured * out_env * 3;\nout1 = tanh(raw_out) * 0.95;"
								}
							},
							{
								"box": {
									"id": "g-out",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										50,
										520,
										35,
										22
									],
									"text": "out 1"
								}
							}
						],
						"lines": [
							{
								"patchline": {
									"source": [
										"g-in",
										0
									],
									"destination": [
										"g-cb",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"g-cb",
										0
									],
									"destination": [
										"g-out",
										0
									]
								}
							}
						]
					}
				}
			},
			{
				"box": {
					"id": "vl-0",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						75,
						672,
						40,
						22
					],
					"outlettype": [
						"signal"
					],
					"text": "*~ 1."
				}
			},
			{
				"box": {
					"id": "vlf-0",
					"maxclass": "flonum",
					"numinlets": 1,
					"numoutlets": 2,
					"patching_rect": [
						120,
						672,
						45,
						22
					],
					"outlettype": [
						"float",
						"bang"
					],
					"minimum": 0.0,
					"maximum": 2.0,
					"numdecimalplaces": 2,
					"presentation": 1,
					"presentation_rect": [
						30,
						572,
						56,
						22
					]
				}
			},
			{
				"box": {
					"id": "vlr-0",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						170,
						672,
						85,
						22
					],
					"outlettype": [
						""
					],
					"text": "receive v0_level"
				}
			},
			{
				"box": {
					"id": "vls-0",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						170,
						695,
						50,
						22
					],
					"outlettype": [
						""
					],
					"text": "set $1"
				}
			},
			{
				"box": {
					"id": "vld-0",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						120,
						695,
						40,
						22
					],
					"outlettype": [
						""
					],
					"text": "0.85"
				}
			},
			{
				"box": {
					"id": "vs-0",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						75,
						720,
						80,
						22
					],
					"text": "send~ v0_out"
				}
			},
			{
				"box": {
					"id": "vlk-0",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						120,
						720,
						120,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend voice_level 0"
				}
			},
			{
				"box": {
					"id": "vn-1",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						225,
						560,
						60,
						20
					],
					"text": "VEIN",
					"fontface": 1,
					"fontsize": 11.0
				}
			},
			{
				"box": {
					"id": "vb-1",
					"maxclass": "button",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						285,
						582,
						22,
						22
					],
					"outlettype": [
						"bang"
					]
				}
			},
			{
				"box": {
					"id": "vc-1",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						225,
						582,
						42,
						22
					],
					"outlettype": [
						"signal"
					],
					"text": "click~"
				}
			},
			{
				"box": {
					"id": "vr-1",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						225,
						612,
						90,
						22
					],
					"outlettype": [
						""
					],
					"text": "receive v1_p"
				}
			},
			{
				"box": {
					"id": "vg-1",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						225,
						642,
						130,
						22
					],
					"outlettype": [
						"signal"
					],
					"text": "gen~",
					"patcher": {
						"fileversion": 1,
						"appversion": {
							"major": 9,
							"minor": 0,
							"revision": 0,
							"architecture": "x64",
							"modernui": 1
						},
						"rect": [
							0,
							0,
							800,
							600
						],
						"editing_bgcolor": [
							0.65,
							0.65,
							0.65,
							1.0
						],
						"boxes": [
							{
								"box": {
									"id": "g-in",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										50,
										14,
										30,
										22
									],
									"text": "in 1"
								}
							},
							{
								"box": {
									"id": "g-cb",
									"maxclass": "codebox",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										50,
										50,
										700,
										450
									],
									"code": "Param pitch(60);\nParam decay_ms(200);\nParam exciter_type(0);\nParam body_type(0);\nParam stress(0.3);\nParam bloom(0.3);\nParam scar(0);\nParam weight(0.5);\nParam mist(0.2);\nParam heat_macro(0.3);\nParam drift_param(0);\nParam density_param(0.5);\nParam flam_pitch_off(0);\nParam flam_vel(1);\nParam flam_pitch_gate(0);\nParam lfo_pitch_off(0);\nParam lfo_stress_off(0);\nParam lfo_bloom_off(0);\nParam lfo_decay_off(0);\nParam lfo_mist_off(0);\nParam lfo_heat_off(0);\nParam lfo_drift_off(0);\nParam lfo_density_off(0);\n\nHistory prev_trig(0);\nHistory pressure(0);\nHistory heat_state(0);\nHistory fatigue(0);\nHistory exc_car_phase(0);\nHistory exc_mod_phase(0);\nHistory exc_env(0);\nHistory noise_filt(0);\nHistory ry1_a(0);\nHistory ry2_a(0);\nHistory ry1_b(0);\nHistory ry2_b(0);\nHistory ry1_c(0);\nHistory ry2_c(0);\nHistory ry1_d(0);\nHistory ry2_d(0);\nHistory comb_lp(0);\nHistory halo_env(0);\nHistory main_env(0);\nHistory pitch_env(0);\nHistory fb_state(0);\nHistory fb_hp(0);\nHistory cav_lp(0);\nHistory fb_lfo_phase(0);\nHistory fb_lp2(0);\nHistory flam_p_env(0);\nDelay comb_d(8820);\nDelay cav_d(8820);\n\ntrig_on = (in1 > 0.5) * (prev_trig <= 0.5);\nvel = in1 * flam_vel;\nprev_trig = in1;\n\nif (trig_on) {\n    pressure = min(pressure + vel * (0.3 + stress * 0.7) * (1 - pressure), 1);\n    fatigue = min(fatigue + 0.02 * (1 - fatigue), 1);\n    exc_env = 1;\n    halo_env = vel * mist;\n    main_env = vel;\n    pitch_env = vel;\n    flam_p_env = flam_pitch_off;\n}\n\np_decay = 0.00002 + (1 - stress) * 0.00008;\npressure = pressure * (1 - p_decay);\nheat_state = heat_state + (pressure - heat_state) * 0.0002;\nheat_state = heat_state * (1 - 0.00005);\nfatigue = fatigue * (1 - 0.000002);\nstiffness = fatigue * 0.6 + pressure * 0.4;\n\neff_stress = clamp(stress + lfo_stress_off, 0, 1);\neff_bloom = clamp(bloom + lfo_bloom_off, 0, 1);\neff_mist = clamp(mist + lfo_mist_off, 0, 1);\neff_heat = clamp(heat_macro + lfo_heat_off + heat_state * 0.5, 0, 1);\neff_drift = clamp(drift_param + lfo_drift_off, 0, 1);\neff_density = clamp(density_param + lfo_density_off, 0, 1);\neff_decay_ms = clamp(decay_ms + lfo_decay_off, 5, 80);\neff_scar = clamp(scar + pressure * eff_stress, 0, 1);\n\nfp_rate = exp(-(flam_pitch_gate * 8)) * 0.15;\nflam_p_env = flam_p_env * (1 - fp_rate);\n\np_env_rate = 0.002 + weight * 0.008;\npitch_env = pitch_env * (1 - p_env_rate);\np_sweep = pitch_env * weight * 24;\np_mod = pitch + lfo_pitch_off + flam_p_env + p_sweep + noise() * pressure * eff_drift * 2;\nbase_freq = mtof(clamp(p_mod, 10, 130));\nw_scale = 1 - weight * 0.35;\nbody_freq = max(base_freq * w_scale, 25);\n\ne_decay = 0.0005 + eff_density * 0.003;\nexc_env = exc_env * (1 - e_decay);\n\nexciter_out = 0;\nif (exciter_type < 0.5) {\n    fm_r = 1.41 + eff_heat * 3;\n    mf = base_freq * fm_r;\n    fm_idx = (12 + eff_heat * 18) * exc_env;\n    exc_mod_phase = wrap(exc_mod_phase + mf / samplerate, 0, 1);\n    mod_sig = sin(exc_mod_phase * twopi) * fm_idx;\n    exc_car_phase = wrap(exc_car_phase + base_freq / samplerate, 0, 1);\n    exciter_out = sin(exc_car_phase * twopi + mod_sig) * exc_env * 1.5;\n} else {\n    n = noise();\n    cutoff = base_freq * (3 + eff_heat * 12);\n    coeff = clamp(1 - exp(-twopi * cutoff / samplerate), 0.001, 0.999);\n    noise_filt = noise_filt + (n - noise_filt) * coeff;\n    exciter_out = noise_filt * 6 * exc_env;\n}\n\nfb_lfo_rate = 0.3 + (1 - eff_bloom) * 7.7;\nfb_lfo_depth_raw = clamp((eff_mist - 0.3) / 0.7, 0, 1);\nfb_lfo_phase = wrap(fb_lfo_phase + fb_lfo_rate / samplerate, 0, 1);\nfb_lfo = sin(fb_lfo_phase * twopi);\nfb_gain = eff_mist * (0.5 + eff_stress * 0.5) * (1 + fb_lfo * fb_lfo_depth_raw * 0.15);\nfb_gain = clamp(fb_gain, 0, 0.95);\nhp_cut_base = 80 + (1 - weight) * 2400;\nhp_cut = hp_cut_base * (1 + fb_lfo * fb_lfo_depth_raw * 0.7);\nhp_c = clamp(1 - exp(-twopi * hp_cut / samplerate), 0.001, 0.999);\nfb_lp = fb_hp + (fb_state - fb_hp) * hp_c;\nfb_hp = fb_lp;\nfb_hpf = fb_state - fb_lp;\nlp2_cut = 800 + eff_bloom * 10000 + fb_lfo * fb_lfo_depth_raw * 3000;\nlp2_c = clamp(1 - exp(-twopi * lp2_cut / samplerate), 0.001, 0.999);\nfb_lp2 = fb_lp2 + (fb_hpf - fb_lp2) * lp2_c;\nfb_ltd = tanh(fb_lp2 * 2.5) * 0.6;\nbl_rate = 0.000001 + (1 - eff_bloom) * 0.0003;\nhalo_env = halo_env * (1 - bl_rate);\nfb_sig = fb_ltd * fb_gain * halo_env;\nbody_input = exciter_out + fb_sig;\n\neff_decay = eff_decay_ms * eff_decay_ms * 2.5;\ndecay_norm = clamp(eff_decay / 16000, 0, 1);\neff_Q = clamp(0.985 + decay_norm * 0.014 - fatigue * 0.15, 0.85, 0.9995);\n\nbody_out = 0;\nif (body_type < 0.5) {\n    w1 = twopi * body_freq * 1.0 / samplerate;\n    r1 = eff_Q;\n    ya = body_input + 2 * r1 * cos(w1) * ry1_a - r1 * r1 * ry2_a;\n    ry2_a = ry1_a; ry1_a = ya;\n    w2 = twopi * body_freq * (1.347 + stiffness * 0.2) / samplerate;\n    r2 = eff_Q * 0.995;\n    yb = body_input + 2 * r2 * cos(w2) * ry1_b - r2 * r2 * ry2_b;\n    ry2_b = ry1_b; ry1_b = yb;\n    w3 = twopi * body_freq * (1.891 + stiffness * 0.25) / samplerate;\n    r3 = eff_Q * 0.99;\n    yc = body_input + 2 * r3 * cos(w3) * ry1_c - r3 * r3 * ry2_c;\n    ry2_c = ry1_c; ry1_c = yc;\n    w4 = twopi * body_freq * (2.534 + stiffness * 0.35) / samplerate;\n    r4 = eff_Q * 0.985;\n    yd = body_input + 2 * r4 * cos(w4) * ry1_d - r4 * r4 * ry2_d;\n    ry2_d = ry1_d; ry1_d = yd;\n    body_out = (ya + yb * 0.8 + yc * 0.55 + yd * 0.4) * 0.35;\n} else if (body_type < 1.5) {\n    d_samps = clamp(samplerate / base_freq, 2, 8000);\n    fb = eff_Q * 0.92;\n    delayed = comb_d.read(d_samps);\n    d_coeff = 0.25 + fatigue * 0.35;\n    comb_lp = comb_lp + (delayed - comb_lp) * d_coeff;\n    comb_d.write(body_input + comb_lp * fb);\n    body_out = delayed * 1.3;\n} else if (body_type < 2.5) {\n    cav_len = clamp(samplerate / base_freq, 2, 8000);\n    cav_fb = eff_Q * (0.88 + pressure * 0.1);\n    cav_fb = clamp(cav_fb, 0, 0.996);\n    cav_del = cav_d.read(cav_len);\n    cav_cut = 0.15 + (1 - pressure) * 0.35 + eff_heat * 0.3;\n    cav_lp = cav_lp + (cav_del - cav_lp) * cav_cut;\n    cav_d.write(body_input + cav_lp * cav_fb);\n    w1 = twopi * body_freq * 1.0 / samplerate;\n    r1 = eff_Q * 0.97;\n    ya = cav_del + 2 * r1 * cos(w1) * ry1_a - r1 * r1 * ry2_a;\n    ry2_a = ry1_a; ry1_a = ya;\n    body_out = (cav_del * 0.35 + ya * 0.65) * 1.2;\n} else {\n    mem_r1 = 1.0;\n    mem_r2 = 1.594;\n    mem_r3 = 2.136;\n    mem_r4 = 2.296;\n    w1 = twopi * body_freq * mem_r1 / samplerate;\n    r1 = eff_Q * 0.999;\n    ya = body_input + 2 * r1 * cos(w1) * ry1_a - r1 * r1 * ry2_a;\n    ry2_a = ry1_a; ry1_a = ya;\n    w2 = twopi * body_freq * mem_r2 / samplerate;\n    r2 = eff_Q * 0.995;\n    yb = body_input + 2 * r2 * cos(w2) * ry1_b - r2 * r2 * ry2_b;\n    ry2_b = ry1_b; ry1_b = yb;\n    w3 = twopi * body_freq * mem_r3 / samplerate;\n    r3 = eff_Q * 0.99;\n    yc = body_input + 2 * r3 * cos(w3) * ry1_c - r3 * r3 * ry2_c;\n    ry2_c = ry1_c; ry1_c = yc;\n    w4 = twopi * body_freq * mem_r4 / samplerate;\n    r4 = eff_Q * 0.985;\n    yd = body_input + 2 * r4 * cos(w4) * ry1_d - r4 * r4 * ry2_d;\n    ry2_d = ry1_d; ry1_d = yd;\n    body_out = (ya * 0.55 + yb * 0.3 + yc * 0.2 + yd * 0.15) * 1.1;\n}\n\nfold_d = 1 + eff_scar * 4;\nfractured = body_out;\nif (eff_scar > 0.01) {\n    biased = body_out + pressure * 0.3;\n    folded = asin(sin(biased * fold_d * 1.5707963)) * 0.6366197;\n    fractured = body_out * (1 - eff_scar) + folded * eff_scar;\n}\n\nfb_source = body_out * (1 - eff_stress) + fractured * eff_stress;\nfb_state = fb_source;\n\nenv_rate = 1.0 / max(eff_decay * samplerate / 1000, 1);\nmain_env = main_env * (1 - env_rate);\n\nbl_env = halo_env * eff_mist;\nout_env = max(main_env, bl_env);\nraw_out = fractured * out_env * 3;\nout1 = tanh(raw_out) * 0.95;"
								}
							},
							{
								"box": {
									"id": "g-out",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										50,
										520,
										35,
										22
									],
									"text": "out 1"
								}
							}
						],
						"lines": [
							{
								"patchline": {
									"source": [
										"g-in",
										0
									],
									"destination": [
										"g-cb",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"g-cb",
										0
									],
									"destination": [
										"g-out",
										0
									]
								}
							}
						]
					}
				}
			},
			{
				"box": {
					"id": "vl-1",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						225,
						672,
						40,
						22
					],
					"outlettype": [
						"signal"
					],
					"text": "*~ 1."
				}
			},
			{
				"box": {
					"id": "vlf-1",
					"maxclass": "flonum",
					"numinlets": 1,
					"numoutlets": 2,
					"patching_rect": [
						270,
						672,
						45,
						22
					],
					"outlettype": [
						"float",
						"bang"
					],
					"minimum": 0.0,
					"maximum": 2.0,
					"numdecimalplaces": 2,
					"presentation": 1,
					"presentation_rect": [
						126,
						572,
						56,
						22
					]
				}
			},
			{
				"box": {
					"id": "vlr-1",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						320,
						672,
						85,
						22
					],
					"outlettype": [
						""
					],
					"text": "receive v1_level"
				}
			},
			{
				"box": {
					"id": "vls-1",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						320,
						695,
						50,
						22
					],
					"outlettype": [
						""
					],
					"text": "set $1"
				}
			},
			{
				"box": {
					"id": "vld-1",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						270,
						695,
						40,
						22
					],
					"outlettype": [
						""
					],
					"text": "0.7"
				}
			},
			{
				"box": {
					"id": "vs-1",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						225,
						720,
						80,
						22
					],
					"text": "send~ v1_out"
				}
			},
			{
				"box": {
					"id": "vlk-1",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						270,
						720,
						120,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend voice_level 1"
				}
			},
			{
				"box": {
					"id": "vn-2",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						375,
						560,
						60,
						20
					],
					"text": "SHARD",
					"fontface": 1,
					"fontsize": 11.0
				}
			},
			{
				"box": {
					"id": "vb-2",
					"maxclass": "button",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						435,
						582,
						22,
						22
					],
					"outlettype": [
						"bang"
					]
				}
			},
			{
				"box": {
					"id": "vc-2",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						375,
						582,
						42,
						22
					],
					"outlettype": [
						"signal"
					],
					"text": "click~"
				}
			},
			{
				"box": {
					"id": "vr-2",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						375,
						612,
						90,
						22
					],
					"outlettype": [
						""
					],
					"text": "receive v2_p"
				}
			},
			{
				"box": {
					"id": "vg-2",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						375,
						642,
						130,
						22
					],
					"outlettype": [
						"signal"
					],
					"text": "gen~",
					"patcher": {
						"fileversion": 1,
						"appversion": {
							"major": 9,
							"minor": 0,
							"revision": 0,
							"architecture": "x64",
							"modernui": 1
						},
						"rect": [
							0,
							0,
							800,
							600
						],
						"editing_bgcolor": [
							0.65,
							0.65,
							0.65,
							1.0
						],
						"boxes": [
							{
								"box": {
									"id": "g-in",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										50,
										14,
										30,
										22
									],
									"text": "in 1"
								}
							},
							{
								"box": {
									"id": "g-cb",
									"maxclass": "codebox",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										50,
										50,
										700,
										450
									],
									"code": "Param pitch(60);\nParam decay_ms(200);\nParam exciter_type(0);\nParam body_type(0);\nParam stress(0.3);\nParam bloom(0.3);\nParam scar(0);\nParam weight(0.5);\nParam mist(0.2);\nParam heat_macro(0.3);\nParam drift_param(0);\nParam density_param(0.5);\nParam flam_pitch_off(0);\nParam flam_vel(1);\nParam flam_pitch_gate(0);\nParam lfo_pitch_off(0);\nParam lfo_stress_off(0);\nParam lfo_bloom_off(0);\nParam lfo_decay_off(0);\nParam lfo_mist_off(0);\nParam lfo_heat_off(0);\nParam lfo_drift_off(0);\nParam lfo_density_off(0);\n\nHistory prev_trig(0);\nHistory pressure(0);\nHistory heat_state(0);\nHistory fatigue(0);\nHistory exc_car_phase(0);\nHistory exc_mod_phase(0);\nHistory exc_env(0);\nHistory noise_filt(0);\nHistory ry1_a(0);\nHistory ry2_a(0);\nHistory ry1_b(0);\nHistory ry2_b(0);\nHistory ry1_c(0);\nHistory ry2_c(0);\nHistory ry1_d(0);\nHistory ry2_d(0);\nHistory comb_lp(0);\nHistory halo_env(0);\nHistory main_env(0);\nHistory pitch_env(0);\nHistory fb_state(0);\nHistory fb_hp(0);\nHistory cav_lp(0);\nHistory fb_lfo_phase(0);\nHistory fb_lp2(0);\nHistory flam_p_env(0);\nDelay comb_d(8820);\nDelay cav_d(8820);\n\ntrig_on = (in1 > 0.5) * (prev_trig <= 0.5);\nvel = in1 * flam_vel;\nprev_trig = in1;\n\nif (trig_on) {\n    pressure = min(pressure + vel * (0.3 + stress * 0.7) * (1 - pressure), 1);\n    fatigue = min(fatigue + 0.02 * (1 - fatigue), 1);\n    exc_env = 1;\n    halo_env = vel * mist;\n    main_env = vel;\n    pitch_env = vel;\n    flam_p_env = flam_pitch_off;\n}\n\np_decay = 0.00002 + (1 - stress) * 0.00008;\npressure = pressure * (1 - p_decay);\nheat_state = heat_state + (pressure - heat_state) * 0.0002;\nheat_state = heat_state * (1 - 0.00005);\nfatigue = fatigue * (1 - 0.000002);\nstiffness = fatigue * 0.6 + pressure * 0.4;\n\neff_stress = clamp(stress + lfo_stress_off, 0, 1);\neff_bloom = clamp(bloom + lfo_bloom_off, 0, 1);\neff_mist = clamp(mist + lfo_mist_off, 0, 1);\neff_heat = clamp(heat_macro + lfo_heat_off + heat_state * 0.5, 0, 1);\neff_drift = clamp(drift_param + lfo_drift_off, 0, 1);\neff_density = clamp(density_param + lfo_density_off, 0, 1);\neff_decay_ms = clamp(decay_ms + lfo_decay_off, 5, 80);\neff_scar = clamp(scar + pressure * eff_stress, 0, 1);\n\nfp_rate = exp(-(flam_pitch_gate * 8)) * 0.15;\nflam_p_env = flam_p_env * (1 - fp_rate);\n\np_env_rate = 0.002 + weight * 0.008;\npitch_env = pitch_env * (1 - p_env_rate);\np_sweep = pitch_env * weight * 24;\np_mod = pitch + lfo_pitch_off + flam_p_env + p_sweep + noise() * pressure * eff_drift * 2;\nbase_freq = mtof(clamp(p_mod, 10, 130));\nw_scale = 1 - weight * 0.35;\nbody_freq = max(base_freq * w_scale, 25);\n\ne_decay = 0.0005 + eff_density * 0.003;\nexc_env = exc_env * (1 - e_decay);\n\nexciter_out = 0;\nif (exciter_type < 0.5) {\n    fm_r = 1.41 + eff_heat * 3;\n    mf = base_freq * fm_r;\n    fm_idx = (12 + eff_heat * 18) * exc_env;\n    exc_mod_phase = wrap(exc_mod_phase + mf / samplerate, 0, 1);\n    mod_sig = sin(exc_mod_phase * twopi) * fm_idx;\n    exc_car_phase = wrap(exc_car_phase + base_freq / samplerate, 0, 1);\n    exciter_out = sin(exc_car_phase * twopi + mod_sig) * exc_env * 1.5;\n} else {\n    n = noise();\n    cutoff = base_freq * (3 + eff_heat * 12);\n    coeff = clamp(1 - exp(-twopi * cutoff / samplerate), 0.001, 0.999);\n    noise_filt = noise_filt + (n - noise_filt) * coeff;\n    exciter_out = noise_filt * 6 * exc_env;\n}\n\nfb_lfo_rate = 0.3 + (1 - eff_bloom) * 7.7;\nfb_lfo_depth_raw = clamp((eff_mist - 0.3) / 0.7, 0, 1);\nfb_lfo_phase = wrap(fb_lfo_phase + fb_lfo_rate / samplerate, 0, 1);\nfb_lfo = sin(fb_lfo_phase * twopi);\nfb_gain = eff_mist * (0.5 + eff_stress * 0.5) * (1 + fb_lfo * fb_lfo_depth_raw * 0.15);\nfb_gain = clamp(fb_gain, 0, 0.95);\nhp_cut_base = 80 + (1 - weight) * 2400;\nhp_cut = hp_cut_base * (1 + fb_lfo * fb_lfo_depth_raw * 0.7);\nhp_c = clamp(1 - exp(-twopi * hp_cut / samplerate), 0.001, 0.999);\nfb_lp = fb_hp + (fb_state - fb_hp) * hp_c;\nfb_hp = fb_lp;\nfb_hpf = fb_state - fb_lp;\nlp2_cut = 800 + eff_bloom * 10000 + fb_lfo * fb_lfo_depth_raw * 3000;\nlp2_c = clamp(1 - exp(-twopi * lp2_cut / samplerate), 0.001, 0.999);\nfb_lp2 = fb_lp2 + (fb_hpf - fb_lp2) * lp2_c;\nfb_ltd = tanh(fb_lp2 * 2.5) * 0.6;\nbl_rate = 0.000001 + (1 - eff_bloom) * 0.0003;\nhalo_env = halo_env * (1 - bl_rate);\nfb_sig = fb_ltd * fb_gain * halo_env;\nbody_input = exciter_out + fb_sig;\n\neff_decay = eff_decay_ms * eff_decay_ms * 2.5;\ndecay_norm = clamp(eff_decay / 16000, 0, 1);\neff_Q = clamp(0.985 + decay_norm * 0.014 - fatigue * 0.15, 0.85, 0.9995);\n\nbody_out = 0;\nif (body_type < 0.5) {\n    w1 = twopi * body_freq * 1.0 / samplerate;\n    r1 = eff_Q;\n    ya = body_input + 2 * r1 * cos(w1) * ry1_a - r1 * r1 * ry2_a;\n    ry2_a = ry1_a; ry1_a = ya;\n    w2 = twopi * body_freq * (1.347 + stiffness * 0.2) / samplerate;\n    r2 = eff_Q * 0.995;\n    yb = body_input + 2 * r2 * cos(w2) * ry1_b - r2 * r2 * ry2_b;\n    ry2_b = ry1_b; ry1_b = yb;\n    w3 = twopi * body_freq * (1.891 + stiffness * 0.25) / samplerate;\n    r3 = eff_Q * 0.99;\n    yc = body_input + 2 * r3 * cos(w3) * ry1_c - r3 * r3 * ry2_c;\n    ry2_c = ry1_c; ry1_c = yc;\n    w4 = twopi * body_freq * (2.534 + stiffness * 0.35) / samplerate;\n    r4 = eff_Q * 0.985;\n    yd = body_input + 2 * r4 * cos(w4) * ry1_d - r4 * r4 * ry2_d;\n    ry2_d = ry1_d; ry1_d = yd;\n    body_out = (ya + yb * 0.8 + yc * 0.55 + yd * 0.4) * 0.35;\n} else if (body_type < 1.5) {\n    d_samps = clamp(samplerate / base_freq, 2, 8000);\n    fb = eff_Q * 0.92;\n    delayed = comb_d.read(d_samps);\n    d_coeff = 0.25 + fatigue * 0.35;\n    comb_lp = comb_lp + (delayed - comb_lp) * d_coeff;\n    comb_d.write(body_input + comb_lp * fb);\n    body_out = delayed * 1.3;\n} else if (body_type < 2.5) {\n    cav_len = clamp(samplerate / base_freq, 2, 8000);\n    cav_fb = eff_Q * (0.88 + pressure * 0.1);\n    cav_fb = clamp(cav_fb, 0, 0.996);\n    cav_del = cav_d.read(cav_len);\n    cav_cut = 0.15 + (1 - pressure) * 0.35 + eff_heat * 0.3;\n    cav_lp = cav_lp + (cav_del - cav_lp) * cav_cut;\n    cav_d.write(body_input + cav_lp * cav_fb);\n    w1 = twopi * body_freq * 1.0 / samplerate;\n    r1 = eff_Q * 0.97;\n    ya = cav_del + 2 * r1 * cos(w1) * ry1_a - r1 * r1 * ry2_a;\n    ry2_a = ry1_a; ry1_a = ya;\n    body_out = (cav_del * 0.35 + ya * 0.65) * 1.2;\n} else {\n    mem_r1 = 1.0;\n    mem_r2 = 1.594;\n    mem_r3 = 2.136;\n    mem_r4 = 2.296;\n    w1 = twopi * body_freq * mem_r1 / samplerate;\n    r1 = eff_Q * 0.999;\n    ya = body_input + 2 * r1 * cos(w1) * ry1_a - r1 * r1 * ry2_a;\n    ry2_a = ry1_a; ry1_a = ya;\n    w2 = twopi * body_freq * mem_r2 / samplerate;\n    r2 = eff_Q * 0.995;\n    yb = body_input + 2 * r2 * cos(w2) * ry1_b - r2 * r2 * ry2_b;\n    ry2_b = ry1_b; ry1_b = yb;\n    w3 = twopi * body_freq * mem_r3 / samplerate;\n    r3 = eff_Q * 0.99;\n    yc = body_input + 2 * r3 * cos(w3) * ry1_c - r3 * r3 * ry2_c;\n    ry2_c = ry1_c; ry1_c = yc;\n    w4 = twopi * body_freq * mem_r4 / samplerate;\n    r4 = eff_Q * 0.985;\n    yd = body_input + 2 * r4 * cos(w4) * ry1_d - r4 * r4 * ry2_d;\n    ry2_d = ry1_d; ry1_d = yd;\n    body_out = (ya * 0.55 + yb * 0.3 + yc * 0.2 + yd * 0.15) * 1.1;\n}\n\nfold_d = 1 + eff_scar * 4;\nfractured = body_out;\nif (eff_scar > 0.01) {\n    biased = body_out + pressure * 0.3;\n    folded = asin(sin(biased * fold_d * 1.5707963)) * 0.6366197;\n    fractured = body_out * (1 - eff_scar) + folded * eff_scar;\n}\n\nfb_source = body_out * (1 - eff_stress) + fractured * eff_stress;\nfb_state = fb_source;\n\nenv_rate = 1.0 / max(eff_decay * samplerate / 1000, 1);\nmain_env = main_env * (1 - env_rate);\n\nbl_env = halo_env * eff_mist;\nout_env = max(main_env, bl_env);\nraw_out = fractured * out_env * 3;\nout1 = tanh(raw_out) * 0.95;"
								}
							},
							{
								"box": {
									"id": "g-out",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										50,
										520,
										35,
										22
									],
									"text": "out 1"
								}
							}
						],
						"lines": [
							{
								"patchline": {
									"source": [
										"g-in",
										0
									],
									"destination": [
										"g-cb",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"g-cb",
										0
									],
									"destination": [
										"g-out",
										0
									]
								}
							}
						]
					}
				}
			},
			{
				"box": {
					"id": "vl-2",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						375,
						672,
						40,
						22
					],
					"outlettype": [
						"signal"
					],
					"text": "*~ 1."
				}
			},
			{
				"box": {
					"id": "vlf-2",
					"maxclass": "flonum",
					"numinlets": 1,
					"numoutlets": 2,
					"patching_rect": [
						420,
						672,
						45,
						22
					],
					"outlettype": [
						"float",
						"bang"
					],
					"minimum": 0.0,
					"maximum": 2.0,
					"numdecimalplaces": 2,
					"presentation": 1,
					"presentation_rect": [
						222,
						572,
						56,
						22
					]
				}
			},
			{
				"box": {
					"id": "vlr-2",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						470,
						672,
						85,
						22
					],
					"outlettype": [
						""
					],
					"text": "receive v2_level"
				}
			},
			{
				"box": {
					"id": "vls-2",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						470,
						695,
						50,
						22
					],
					"outlettype": [
						""
					],
					"text": "set $1"
				}
			},
			{
				"box": {
					"id": "vld-2",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						420,
						695,
						40,
						22
					],
					"outlettype": [
						""
					],
					"text": "0.6"
				}
			},
			{
				"box": {
					"id": "vs-2",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						375,
						720,
						80,
						22
					],
					"text": "send~ v2_out"
				}
			},
			{
				"box": {
					"id": "vlk-2",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						420,
						720,
						120,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend voice_level 2"
				}
			},
			{
				"box": {
					"id": "vn-3",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						525,
						560,
						60,
						20
					],
					"text": "HUSK",
					"fontface": 1,
					"fontsize": 11.0
				}
			},
			{
				"box": {
					"id": "vb-3",
					"maxclass": "button",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						585,
						582,
						22,
						22
					],
					"outlettype": [
						"bang"
					]
				}
			},
			{
				"box": {
					"id": "vc-3",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						525,
						582,
						42,
						22
					],
					"outlettype": [
						"signal"
					],
					"text": "click~"
				}
			},
			{
				"box": {
					"id": "vr-3",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						525,
						612,
						90,
						22
					],
					"outlettype": [
						""
					],
					"text": "receive v3_p"
				}
			},
			{
				"box": {
					"id": "vg-3",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						525,
						642,
						130,
						22
					],
					"outlettype": [
						"signal"
					],
					"text": "gen~",
					"patcher": {
						"fileversion": 1,
						"appversion": {
							"major": 9,
							"minor": 0,
							"revision": 0,
							"architecture": "x64",
							"modernui": 1
						},
						"rect": [
							0,
							0,
							800,
							600
						],
						"editing_bgcolor": [
							0.65,
							0.65,
							0.65,
							1.0
						],
						"boxes": [
							{
								"box": {
									"id": "g-in",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										50,
										14,
										30,
										22
									],
									"text": "in 1"
								}
							},
							{
								"box": {
									"id": "g-cb",
									"maxclass": "codebox",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										50,
										50,
										700,
										450
									],
									"code": "Param pitch(60);\nParam decay_ms(200);\nParam exciter_type(0);\nParam body_type(0);\nParam stress(0.3);\nParam bloom(0.3);\nParam scar(0);\nParam weight(0.5);\nParam mist(0.2);\nParam heat_macro(0.3);\nParam drift_param(0);\nParam density_param(0.5);\nParam flam_pitch_off(0);\nParam flam_vel(1);\nParam flam_pitch_gate(0);\nParam lfo_pitch_off(0);\nParam lfo_stress_off(0);\nParam lfo_bloom_off(0);\nParam lfo_decay_off(0);\nParam lfo_mist_off(0);\nParam lfo_heat_off(0);\nParam lfo_drift_off(0);\nParam lfo_density_off(0);\n\nHistory prev_trig(0);\nHistory pressure(0);\nHistory heat_state(0);\nHistory fatigue(0);\nHistory exc_car_phase(0);\nHistory exc_mod_phase(0);\nHistory exc_env(0);\nHistory noise_filt(0);\nHistory ry1_a(0);\nHistory ry2_a(0);\nHistory ry1_b(0);\nHistory ry2_b(0);\nHistory ry1_c(0);\nHistory ry2_c(0);\nHistory ry1_d(0);\nHistory ry2_d(0);\nHistory comb_lp(0);\nHistory halo_env(0);\nHistory main_env(0);\nHistory pitch_env(0);\nHistory fb_state(0);\nHistory fb_hp(0);\nHistory cav_lp(0);\nHistory fb_lfo_phase(0);\nHistory fb_lp2(0);\nHistory flam_p_env(0);\nDelay comb_d(8820);\nDelay cav_d(8820);\n\ntrig_on = (in1 > 0.5) * (prev_trig <= 0.5);\nvel = in1 * flam_vel;\nprev_trig = in1;\n\nif (trig_on) {\n    pressure = min(pressure + vel * (0.3 + stress * 0.7) * (1 - pressure), 1);\n    fatigue = min(fatigue + 0.02 * (1 - fatigue), 1);\n    exc_env = 1;\n    halo_env = vel * mist;\n    main_env = vel;\n    pitch_env = vel;\n    flam_p_env = flam_pitch_off;\n}\n\np_decay = 0.00002 + (1 - stress) * 0.00008;\npressure = pressure * (1 - p_decay);\nheat_state = heat_state + (pressure - heat_state) * 0.0002;\nheat_state = heat_state * (1 - 0.00005);\nfatigue = fatigue * (1 - 0.000002);\nstiffness = fatigue * 0.6 + pressure * 0.4;\n\neff_stress = clamp(stress + lfo_stress_off, 0, 1);\neff_bloom = clamp(bloom + lfo_bloom_off, 0, 1);\neff_mist = clamp(mist + lfo_mist_off, 0, 1);\neff_heat = clamp(heat_macro + lfo_heat_off + heat_state * 0.5, 0, 1);\neff_drift = clamp(drift_param + lfo_drift_off, 0, 1);\neff_density = clamp(density_param + lfo_density_off, 0, 1);\neff_decay_ms = clamp(decay_ms + lfo_decay_off, 5, 80);\neff_scar = clamp(scar + pressure * eff_stress, 0, 1);\n\nfp_rate = exp(-(flam_pitch_gate * 8)) * 0.15;\nflam_p_env = flam_p_env * (1 - fp_rate);\n\np_env_rate = 0.002 + weight * 0.008;\npitch_env = pitch_env * (1 - p_env_rate);\np_sweep = pitch_env * weight * 24;\np_mod = pitch + lfo_pitch_off + flam_p_env + p_sweep + noise() * pressure * eff_drift * 2;\nbase_freq = mtof(clamp(p_mod, 10, 130));\nw_scale = 1 - weight * 0.35;\nbody_freq = max(base_freq * w_scale, 25);\n\ne_decay = 0.0005 + eff_density * 0.003;\nexc_env = exc_env * (1 - e_decay);\n\nexciter_out = 0;\nif (exciter_type < 0.5) {\n    fm_r = 1.41 + eff_heat * 3;\n    mf = base_freq * fm_r;\n    fm_idx = (12 + eff_heat * 18) * exc_env;\n    exc_mod_phase = wrap(exc_mod_phase + mf / samplerate, 0, 1);\n    mod_sig = sin(exc_mod_phase * twopi) * fm_idx;\n    exc_car_phase = wrap(exc_car_phase + base_freq / samplerate, 0, 1);\n    exciter_out = sin(exc_car_phase * twopi + mod_sig) * exc_env * 1.5;\n} else {\n    n = noise();\n    cutoff = base_freq * (3 + eff_heat * 12);\n    coeff = clamp(1 - exp(-twopi * cutoff / samplerate), 0.001, 0.999);\n    noise_filt = noise_filt + (n - noise_filt) * coeff;\n    exciter_out = noise_filt * 6 * exc_env;\n}\n\nfb_lfo_rate = 0.3 + (1 - eff_bloom) * 7.7;\nfb_lfo_depth_raw = clamp((eff_mist - 0.3) / 0.7, 0, 1);\nfb_lfo_phase = wrap(fb_lfo_phase + fb_lfo_rate / samplerate, 0, 1);\nfb_lfo = sin(fb_lfo_phase * twopi);\nfb_gain = eff_mist * (0.5 + eff_stress * 0.5) * (1 + fb_lfo * fb_lfo_depth_raw * 0.15);\nfb_gain = clamp(fb_gain, 0, 0.95);\nhp_cut_base = 80 + (1 - weight) * 2400;\nhp_cut = hp_cut_base * (1 + fb_lfo * fb_lfo_depth_raw * 0.7);\nhp_c = clamp(1 - exp(-twopi * hp_cut / samplerate), 0.001, 0.999);\nfb_lp = fb_hp + (fb_state - fb_hp) * hp_c;\nfb_hp = fb_lp;\nfb_hpf = fb_state - fb_lp;\nlp2_cut = 800 + eff_bloom * 10000 + fb_lfo * fb_lfo_depth_raw * 3000;\nlp2_c = clamp(1 - exp(-twopi * lp2_cut / samplerate), 0.001, 0.999);\nfb_lp2 = fb_lp2 + (fb_hpf - fb_lp2) * lp2_c;\nfb_ltd = tanh(fb_lp2 * 2.5) * 0.6;\nbl_rate = 0.000001 + (1 - eff_bloom) * 0.0003;\nhalo_env = halo_env * (1 - bl_rate);\nfb_sig = fb_ltd * fb_gain * halo_env;\nbody_input = exciter_out + fb_sig;\n\neff_decay = eff_decay_ms * eff_decay_ms * 2.5;\ndecay_norm = clamp(eff_decay / 16000, 0, 1);\neff_Q = clamp(0.985 + decay_norm * 0.014 - fatigue * 0.15, 0.85, 0.9995);\n\nbody_out = 0;\nif (body_type < 0.5) {\n    w1 = twopi * body_freq * 1.0 / samplerate;\n    r1 = eff_Q;\n    ya = body_input + 2 * r1 * cos(w1) * ry1_a - r1 * r1 * ry2_a;\n    ry2_a = ry1_a; ry1_a = ya;\n    w2 = twopi * body_freq * (1.347 + stiffness * 0.2) / samplerate;\n    r2 = eff_Q * 0.995;\n    yb = body_input + 2 * r2 * cos(w2) * ry1_b - r2 * r2 * ry2_b;\n    ry2_b = ry1_b; ry1_b = yb;\n    w3 = twopi * body_freq * (1.891 + stiffness * 0.25) / samplerate;\n    r3 = eff_Q * 0.99;\n    yc = body_input + 2 * r3 * cos(w3) * ry1_c - r3 * r3 * ry2_c;\n    ry2_c = ry1_c; ry1_c = yc;\n    w4 = twopi * body_freq * (2.534 + stiffness * 0.35) / samplerate;\n    r4 = eff_Q * 0.985;\n    yd = body_input + 2 * r4 * cos(w4) * ry1_d - r4 * r4 * ry2_d;\n    ry2_d = ry1_d; ry1_d = yd;\n    body_out = (ya + yb * 0.8 + yc * 0.55 + yd * 0.4) * 0.35;\n} else if (body_type < 1.5) {\n    d_samps = clamp(samplerate / base_freq, 2, 8000);\n    fb = eff_Q * 0.92;\n    delayed = comb_d.read(d_samps);\n    d_coeff = 0.25 + fatigue * 0.35;\n    comb_lp = comb_lp + (delayed - comb_lp) * d_coeff;\n    comb_d.write(body_input + comb_lp * fb);\n    body_out = delayed * 1.3;\n} else if (body_type < 2.5) {\n    cav_len = clamp(samplerate / base_freq, 2, 8000);\n    cav_fb = eff_Q * (0.88 + pressure * 0.1);\n    cav_fb = clamp(cav_fb, 0, 0.996);\n    cav_del = cav_d.read(cav_len);\n    cav_cut = 0.15 + (1 - pressure) * 0.35 + eff_heat * 0.3;\n    cav_lp = cav_lp + (cav_del - cav_lp) * cav_cut;\n    cav_d.write(body_input + cav_lp * cav_fb);\n    w1 = twopi * body_freq * 1.0 / samplerate;\n    r1 = eff_Q * 0.97;\n    ya = cav_del + 2 * r1 * cos(w1) * ry1_a - r1 * r1 * ry2_a;\n    ry2_a = ry1_a; ry1_a = ya;\n    body_out = (cav_del * 0.35 + ya * 0.65) * 1.2;\n} else {\n    mem_r1 = 1.0;\n    mem_r2 = 1.594;\n    mem_r3 = 2.136;\n    mem_r4 = 2.296;\n    w1 = twopi * body_freq * mem_r1 / samplerate;\n    r1 = eff_Q * 0.999;\n    ya = body_input + 2 * r1 * cos(w1) * ry1_a - r1 * r1 * ry2_a;\n    ry2_a = ry1_a; ry1_a = ya;\n    w2 = twopi * body_freq * mem_r2 / samplerate;\n    r2 = eff_Q * 0.995;\n    yb = body_input + 2 * r2 * cos(w2) * ry1_b - r2 * r2 * ry2_b;\n    ry2_b = ry1_b; ry1_b = yb;\n    w3 = twopi * body_freq * mem_r3 / samplerate;\n    r3 = eff_Q * 0.99;\n    yc = body_input + 2 * r3 * cos(w3) * ry1_c - r3 * r3 * ry2_c;\n    ry2_c = ry1_c; ry1_c = yc;\n    w4 = twopi * body_freq * mem_r4 / samplerate;\n    r4 = eff_Q * 0.985;\n    yd = body_input + 2 * r4 * cos(w4) * ry1_d - r4 * r4 * ry2_d;\n    ry2_d = ry1_d; ry1_d = yd;\n    body_out = (ya * 0.55 + yb * 0.3 + yc * 0.2 + yd * 0.15) * 1.1;\n}\n\nfold_d = 1 + eff_scar * 4;\nfractured = body_out;\nif (eff_scar > 0.01) {\n    biased = body_out + pressure * 0.3;\n    folded = asin(sin(biased * fold_d * 1.5707963)) * 0.6366197;\n    fractured = body_out * (1 - eff_scar) + folded * eff_scar;\n}\n\nfb_source = body_out * (1 - eff_stress) + fractured * eff_stress;\nfb_state = fb_source;\n\nenv_rate = 1.0 / max(eff_decay * samplerate / 1000, 1);\nmain_env = main_env * (1 - env_rate);\n\nbl_env = halo_env * eff_mist;\nout_env = max(main_env, bl_env);\nraw_out = fractured * out_env * 3;\nout1 = tanh(raw_out) * 0.95;"
								}
							},
							{
								"box": {
									"id": "g-out",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										50,
										520,
										35,
										22
									],
									"text": "out 1"
								}
							}
						],
						"lines": [
							{
								"patchline": {
									"source": [
										"g-in",
										0
									],
									"destination": [
										"g-cb",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"g-cb",
										0
									],
									"destination": [
										"g-out",
										0
									]
								}
							}
						]
					}
				}
			},
			{
				"box": {
					"id": "vl-3",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						525,
						672,
						40,
						22
					],
					"outlettype": [
						"signal"
					],
					"text": "*~ 1."
				}
			},
			{
				"box": {
					"id": "vlf-3",
					"maxclass": "flonum",
					"numinlets": 1,
					"numoutlets": 2,
					"patching_rect": [
						570,
						672,
						45,
						22
					],
					"outlettype": [
						"float",
						"bang"
					],
					"minimum": 0.0,
					"maximum": 2.0,
					"numdecimalplaces": 2,
					"presentation": 1,
					"presentation_rect": [
						318,
						572,
						56,
						22
					]
				}
			},
			{
				"box": {
					"id": "vlr-3",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						620,
						672,
						85,
						22
					],
					"outlettype": [
						""
					],
					"text": "receive v3_level"
				}
			},
			{
				"box": {
					"id": "vls-3",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						620,
						695,
						50,
						22
					],
					"outlettype": [
						""
					],
					"text": "set $1"
				}
			},
			{
				"box": {
					"id": "vld-3",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						570,
						695,
						40,
						22
					],
					"outlettype": [
						""
					],
					"text": "0.65"
				}
			},
			{
				"box": {
					"id": "vs-3",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						525,
						720,
						80,
						22
					],
					"text": "send~ v3_out"
				}
			},
			{
				"box": {
					"id": "vlk-3",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						570,
						720,
						120,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend voice_level 3"
				}
			},
			{
				"box": {
					"id": "vn-4",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						675,
						560,
						60,
						20
					],
					"text": "FAULT",
					"fontface": 1,
					"fontsize": 11.0
				}
			},
			{
				"box": {
					"id": "vb-4",
					"maxclass": "button",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						735,
						582,
						22,
						22
					],
					"outlettype": [
						"bang"
					]
				}
			},
			{
				"box": {
					"id": "vc-4",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						675,
						582,
						42,
						22
					],
					"outlettype": [
						"signal"
					],
					"text": "click~"
				}
			},
			{
				"box": {
					"id": "vr-4",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						675,
						612,
						90,
						22
					],
					"outlettype": [
						""
					],
					"text": "receive v4_p"
				}
			},
			{
				"box": {
					"id": "vg-4",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						675,
						642,
						130,
						22
					],
					"outlettype": [
						"signal"
					],
					"text": "gen~",
					"patcher": {
						"fileversion": 1,
						"appversion": {
							"major": 9,
							"minor": 0,
							"revision": 0,
							"architecture": "x64",
							"modernui": 1
						},
						"rect": [
							0,
							0,
							800,
							600
						],
						"editing_bgcolor": [
							0.65,
							0.65,
							0.65,
							1.0
						],
						"boxes": [
							{
								"box": {
									"id": "g-in",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										50,
										14,
										30,
										22
									],
									"text": "in 1"
								}
							},
							{
								"box": {
									"id": "g-cb",
									"maxclass": "codebox",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										50,
										50,
										700,
										450
									],
									"code": "Param pitch(60);\nParam decay_ms(200);\nParam exciter_type(0);\nParam body_type(0);\nParam stress(0.3);\nParam bloom(0.3);\nParam scar(0);\nParam weight(0.5);\nParam mist(0.2);\nParam heat_macro(0.3);\nParam drift_param(0);\nParam density_param(0.5);\nParam flam_pitch_off(0);\nParam flam_vel(1);\nParam flam_pitch_gate(0);\nParam lfo_pitch_off(0);\nParam lfo_stress_off(0);\nParam lfo_bloom_off(0);\nParam lfo_decay_off(0);\nParam lfo_mist_off(0);\nParam lfo_heat_off(0);\nParam lfo_drift_off(0);\nParam lfo_density_off(0);\n\nHistory prev_trig(0);\nHistory pressure(0);\nHistory heat_state(0);\nHistory fatigue(0);\nHistory exc_car_phase(0);\nHistory exc_mod_phase(0);\nHistory exc_env(0);\nHistory noise_filt(0);\nHistory ry1_a(0);\nHistory ry2_a(0);\nHistory ry1_b(0);\nHistory ry2_b(0);\nHistory ry1_c(0);\nHistory ry2_c(0);\nHistory ry1_d(0);\nHistory ry2_d(0);\nHistory comb_lp(0);\nHistory halo_env(0);\nHistory main_env(0);\nHistory pitch_env(0);\nHistory fb_state(0);\nHistory fb_hp(0);\nHistory cav_lp(0);\nHistory fb_lfo_phase(0);\nHistory fb_lp2(0);\nHistory flam_p_env(0);\nDelay comb_d(8820);\nDelay cav_d(8820);\n\ntrig_on = (in1 > 0.5) * (prev_trig <= 0.5);\nvel = in1 * flam_vel;\nprev_trig = in1;\n\nif (trig_on) {\n    pressure = min(pressure + vel * (0.3 + stress * 0.7) * (1 - pressure), 1);\n    fatigue = min(fatigue + 0.02 * (1 - fatigue), 1);\n    exc_env = 1;\n    halo_env = vel * mist;\n    main_env = vel;\n    pitch_env = vel;\n    flam_p_env = flam_pitch_off;\n}\n\np_decay = 0.00002 + (1 - stress) * 0.00008;\npressure = pressure * (1 - p_decay);\nheat_state = heat_state + (pressure - heat_state) * 0.0002;\nheat_state = heat_state * (1 - 0.00005);\nfatigue = fatigue * (1 - 0.000002);\nstiffness = fatigue * 0.6 + pressure * 0.4;\n\neff_stress = clamp(stress + lfo_stress_off, 0, 1);\neff_bloom = clamp(bloom + lfo_bloom_off, 0, 1);\neff_mist = clamp(mist + lfo_mist_off, 0, 1);\neff_heat = clamp(heat_macro + lfo_heat_off + heat_state * 0.5, 0, 1);\neff_drift = clamp(drift_param + lfo_drift_off, 0, 1);\neff_density = clamp(density_param + lfo_density_off, 0, 1);\neff_decay_ms = clamp(decay_ms + lfo_decay_off, 5, 80);\neff_scar = clamp(scar + pressure * eff_stress, 0, 1);\n\nfp_rate = exp(-(flam_pitch_gate * 8)) * 0.15;\nflam_p_env = flam_p_env * (1 - fp_rate);\n\np_env_rate = 0.002 + weight * 0.008;\npitch_env = pitch_env * (1 - p_env_rate);\np_sweep = pitch_env * weight * 24;\np_mod = pitch + lfo_pitch_off + flam_p_env + p_sweep + noise() * pressure * eff_drift * 2;\nbase_freq = mtof(clamp(p_mod, 10, 130));\nw_scale = 1 - weight * 0.35;\nbody_freq = max(base_freq * w_scale, 25);\n\ne_decay = 0.0005 + eff_density * 0.003;\nexc_env = exc_env * (1 - e_decay);\n\nexciter_out = 0;\nif (exciter_type < 0.5) {\n    fm_r = 1.41 + eff_heat * 3;\n    mf = base_freq * fm_r;\n    fm_idx = (12 + eff_heat * 18) * exc_env;\n    exc_mod_phase = wrap(exc_mod_phase + mf / samplerate, 0, 1);\n    mod_sig = sin(exc_mod_phase * twopi) * fm_idx;\n    exc_car_phase = wrap(exc_car_phase + base_freq / samplerate, 0, 1);\n    exciter_out = sin(exc_car_phase * twopi + mod_sig) * exc_env * 1.5;\n} else {\n    n = noise();\n    cutoff = base_freq * (3 + eff_heat * 12);\n    coeff = clamp(1 - exp(-twopi * cutoff / samplerate), 0.001, 0.999);\n    noise_filt = noise_filt + (n - noise_filt) * coeff;\n    exciter_out = noise_filt * 6 * exc_env;\n}\n\nfb_lfo_rate = 0.3 + (1 - eff_bloom) * 7.7;\nfb_lfo_depth_raw = clamp((eff_mist - 0.3) / 0.7, 0, 1);\nfb_lfo_phase = wrap(fb_lfo_phase + fb_lfo_rate / samplerate, 0, 1);\nfb_lfo = sin(fb_lfo_phase * twopi);\nfb_gain = eff_mist * (0.5 + eff_stress * 0.5) * (1 + fb_lfo * fb_lfo_depth_raw * 0.15);\nfb_gain = clamp(fb_gain, 0, 0.95);\nhp_cut_base = 80 + (1 - weight) * 2400;\nhp_cut = hp_cut_base * (1 + fb_lfo * fb_lfo_depth_raw * 0.7);\nhp_c = clamp(1 - exp(-twopi * hp_cut / samplerate), 0.001, 0.999);\nfb_lp = fb_hp + (fb_state - fb_hp) * hp_c;\nfb_hp = fb_lp;\nfb_hpf = fb_state - fb_lp;\nlp2_cut = 800 + eff_bloom * 10000 + fb_lfo * fb_lfo_depth_raw * 3000;\nlp2_c = clamp(1 - exp(-twopi * lp2_cut / samplerate), 0.001, 0.999);\nfb_lp2 = fb_lp2 + (fb_hpf - fb_lp2) * lp2_c;\nfb_ltd = tanh(fb_lp2 * 2.5) * 0.6;\nbl_rate = 0.000001 + (1 - eff_bloom) * 0.0003;\nhalo_env = halo_env * (1 - bl_rate);\nfb_sig = fb_ltd * fb_gain * halo_env;\nbody_input = exciter_out + fb_sig;\n\neff_decay = eff_decay_ms * eff_decay_ms * 2.5;\ndecay_norm = clamp(eff_decay / 16000, 0, 1);\neff_Q = clamp(0.985 + decay_norm * 0.014 - fatigue * 0.15, 0.85, 0.9995);\n\nbody_out = 0;\nif (body_type < 0.5) {\n    w1 = twopi * body_freq * 1.0 / samplerate;\n    r1 = eff_Q;\n    ya = body_input + 2 * r1 * cos(w1) * ry1_a - r1 * r1 * ry2_a;\n    ry2_a = ry1_a; ry1_a = ya;\n    w2 = twopi * body_freq * (1.347 + stiffness * 0.2) / samplerate;\n    r2 = eff_Q * 0.995;\n    yb = body_input + 2 * r2 * cos(w2) * ry1_b - r2 * r2 * ry2_b;\n    ry2_b = ry1_b; ry1_b = yb;\n    w3 = twopi * body_freq * (1.891 + stiffness * 0.25) / samplerate;\n    r3 = eff_Q * 0.99;\n    yc = body_input + 2 * r3 * cos(w3) * ry1_c - r3 * r3 * ry2_c;\n    ry2_c = ry1_c; ry1_c = yc;\n    w4 = twopi * body_freq * (2.534 + stiffness * 0.35) / samplerate;\n    r4 = eff_Q * 0.985;\n    yd = body_input + 2 * r4 * cos(w4) * ry1_d - r4 * r4 * ry2_d;\n    ry2_d = ry1_d; ry1_d = yd;\n    body_out = (ya + yb * 0.8 + yc * 0.55 + yd * 0.4) * 0.35;\n} else if (body_type < 1.5) {\n    d_samps = clamp(samplerate / base_freq, 2, 8000);\n    fb = eff_Q * 0.92;\n    delayed = comb_d.read(d_samps);\n    d_coeff = 0.25 + fatigue * 0.35;\n    comb_lp = comb_lp + (delayed - comb_lp) * d_coeff;\n    comb_d.write(body_input + comb_lp * fb);\n    body_out = delayed * 1.3;\n} else if (body_type < 2.5) {\n    cav_len = clamp(samplerate / base_freq, 2, 8000);\n    cav_fb = eff_Q * (0.88 + pressure * 0.1);\n    cav_fb = clamp(cav_fb, 0, 0.996);\n    cav_del = cav_d.read(cav_len);\n    cav_cut = 0.15 + (1 - pressure) * 0.35 + eff_heat * 0.3;\n    cav_lp = cav_lp + (cav_del - cav_lp) * cav_cut;\n    cav_d.write(body_input + cav_lp * cav_fb);\n    w1 = twopi * body_freq * 1.0 / samplerate;\n    r1 = eff_Q * 0.97;\n    ya = cav_del + 2 * r1 * cos(w1) * ry1_a - r1 * r1 * ry2_a;\n    ry2_a = ry1_a; ry1_a = ya;\n    body_out = (cav_del * 0.35 + ya * 0.65) * 1.2;\n} else {\n    mem_r1 = 1.0;\n    mem_r2 = 1.594;\n    mem_r3 = 2.136;\n    mem_r4 = 2.296;\n    w1 = twopi * body_freq * mem_r1 / samplerate;\n    r1 = eff_Q * 0.999;\n    ya = body_input + 2 * r1 * cos(w1) * ry1_a - r1 * r1 * ry2_a;\n    ry2_a = ry1_a; ry1_a = ya;\n    w2 = twopi * body_freq * mem_r2 / samplerate;\n    r2 = eff_Q * 0.995;\n    yb = body_input + 2 * r2 * cos(w2) * ry1_b - r2 * r2 * ry2_b;\n    ry2_b = ry1_b; ry1_b = yb;\n    w3 = twopi * body_freq * mem_r3 / samplerate;\n    r3 = eff_Q * 0.99;\n    yc = body_input + 2 * r3 * cos(w3) * ry1_c - r3 * r3 * ry2_c;\n    ry2_c = ry1_c; ry1_c = yc;\n    w4 = twopi * body_freq * mem_r4 / samplerate;\n    r4 = eff_Q * 0.985;\n    yd = body_input + 2 * r4 * cos(w4) * ry1_d - r4 * r4 * ry2_d;\n    ry2_d = ry1_d; ry1_d = yd;\n    body_out = (ya * 0.55 + yb * 0.3 + yc * 0.2 + yd * 0.15) * 1.1;\n}\n\nfold_d = 1 + eff_scar * 4;\nfractured = body_out;\nif (eff_scar > 0.01) {\n    biased = body_out + pressure * 0.3;\n    folded = asin(sin(biased * fold_d * 1.5707963)) * 0.6366197;\n    fractured = body_out * (1 - eff_scar) + folded * eff_scar;\n}\n\nfb_source = body_out * (1 - eff_stress) + fractured * eff_stress;\nfb_state = fb_source;\n\nenv_rate = 1.0 / max(eff_decay * samplerate / 1000, 1);\nmain_env = main_env * (1 - env_rate);\n\nbl_env = halo_env * eff_mist;\nout_env = max(main_env, bl_env);\nraw_out = fractured * out_env * 3;\nout1 = tanh(raw_out) * 0.95;"
								}
							},
							{
								"box": {
									"id": "g-out",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										50,
										520,
										35,
										22
									],
									"text": "out 1"
								}
							}
						],
						"lines": [
							{
								"patchline": {
									"source": [
										"g-in",
										0
									],
									"destination": [
										"g-cb",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"g-cb",
										0
									],
									"destination": [
										"g-out",
										0
									]
								}
							}
						]
					}
				}
			},
			{
				"box": {
					"id": "vl-4",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						675,
						672,
						40,
						22
					],
					"outlettype": [
						"signal"
					],
					"text": "*~ 1."
				}
			},
			{
				"box": {
					"id": "vlf-4",
					"maxclass": "flonum",
					"numinlets": 1,
					"numoutlets": 2,
					"patching_rect": [
						720,
						672,
						45,
						22
					],
					"outlettype": [
						"float",
						"bang"
					],
					"minimum": 0.0,
					"maximum": 2.0,
					"numdecimalplaces": 2,
					"presentation": 1,
					"presentation_rect": [
						414,
						572,
						56,
						22
					]
				}
			},
			{
				"box": {
					"id": "vlr-4",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						770,
						672,
						85,
						22
					],
					"outlettype": [
						""
					],
					"text": "receive v4_level"
				}
			},
			{
				"box": {
					"id": "vls-4",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						770,
						695,
						50,
						22
					],
					"outlettype": [
						""
					],
					"text": "set $1"
				}
			},
			{
				"box": {
					"id": "vld-4",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						720,
						695,
						40,
						22
					],
					"outlettype": [
						""
					],
					"text": "0.75"
				}
			},
			{
				"box": {
					"id": "vs-4",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						675,
						720,
						80,
						22
					],
					"text": "send~ v4_out"
				}
			},
			{
				"box": {
					"id": "vlk-4",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						720,
						720,
						120,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend voice_level 4"
				}
			},
			{
				"box": {
					"id": "vn-5",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						825,
						560,
						60,
						20
					],
					"text": "HALO",
					"fontface": 1,
					"fontsize": 11.0
				}
			},
			{
				"box": {
					"id": "vb-5",
					"maxclass": "button",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						885,
						582,
						22,
						22
					],
					"outlettype": [
						"bang"
					]
				}
			},
			{
				"box": {
					"id": "vc-5",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						825,
						582,
						42,
						22
					],
					"outlettype": [
						"signal"
					],
					"text": "click~"
				}
			},
			{
				"box": {
					"id": "vr-5",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						825,
						612,
						90,
						22
					],
					"outlettype": [
						""
					],
					"text": "receive v5_p"
				}
			},
			{
				"box": {
					"id": "vg-5",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						825,
						642,
						130,
						22
					],
					"outlettype": [
						"signal"
					],
					"text": "gen~",
					"patcher": {
						"fileversion": 1,
						"appversion": {
							"major": 9,
							"minor": 0,
							"revision": 0,
							"architecture": "x64",
							"modernui": 1
						},
						"rect": [
							0,
							0,
							800,
							600
						],
						"editing_bgcolor": [
							0.65,
							0.65,
							0.65,
							1.0
						],
						"boxes": [
							{
								"box": {
									"id": "g-in",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										50,
										14,
										30,
										22
									],
									"text": "in 1"
								}
							},
							{
								"box": {
									"id": "g-cb",
									"maxclass": "codebox",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										50,
										50,
										700,
										450
									],
									"code": "Param pitch(60);\nParam decay_ms(200);\nParam exciter_type(0);\nParam body_type(0);\nParam stress(0.3);\nParam bloom(0.3);\nParam scar(0);\nParam weight(0.5);\nParam mist(0.2);\nParam heat_macro(0.3);\nParam drift_param(0);\nParam density_param(0.5);\nParam flam_pitch_off(0);\nParam flam_vel(1);\nParam flam_pitch_gate(0);\nParam lfo_pitch_off(0);\nParam lfo_stress_off(0);\nParam lfo_bloom_off(0);\nParam lfo_decay_off(0);\nParam lfo_mist_off(0);\nParam lfo_heat_off(0);\nParam lfo_drift_off(0);\nParam lfo_density_off(0);\n\nHistory prev_trig(0);\nHistory pressure(0);\nHistory heat_state(0);\nHistory fatigue(0);\nHistory exc_car_phase(0);\nHistory exc_mod_phase(0);\nHistory exc_env(0);\nHistory noise_filt(0);\nHistory ry1_a(0);\nHistory ry2_a(0);\nHistory ry1_b(0);\nHistory ry2_b(0);\nHistory ry1_c(0);\nHistory ry2_c(0);\nHistory ry1_d(0);\nHistory ry2_d(0);\nHistory comb_lp(0);\nHistory halo_env(0);\nHistory main_env(0);\nHistory pitch_env(0);\nHistory fb_state(0);\nHistory fb_hp(0);\nHistory cav_lp(0);\nHistory fb_lfo_phase(0);\nHistory fb_lp2(0);\nHistory flam_p_env(0);\nDelay comb_d(8820);\nDelay cav_d(8820);\n\ntrig_on = (in1 > 0.5) * (prev_trig <= 0.5);\nvel = in1 * flam_vel;\nprev_trig = in1;\n\nif (trig_on) {\n    pressure = min(pressure + vel * (0.3 + stress * 0.7) * (1 - pressure), 1);\n    fatigue = min(fatigue + 0.02 * (1 - fatigue), 1);\n    exc_env = 1;\n    halo_env = vel * mist;\n    main_env = vel;\n    pitch_env = vel;\n    flam_p_env = flam_pitch_off;\n}\n\np_decay = 0.00002 + (1 - stress) * 0.00008;\npressure = pressure * (1 - p_decay);\nheat_state = heat_state + (pressure - heat_state) * 0.0002;\nheat_state = heat_state * (1 - 0.00005);\nfatigue = fatigue * (1 - 0.000002);\nstiffness = fatigue * 0.6 + pressure * 0.4;\n\neff_stress = clamp(stress + lfo_stress_off, 0, 1);\neff_bloom = clamp(bloom + lfo_bloom_off, 0, 1);\neff_mist = clamp(mist + lfo_mist_off, 0, 1);\neff_heat = clamp(heat_macro + lfo_heat_off + heat_state * 0.5, 0, 1);\neff_drift = clamp(drift_param + lfo_drift_off, 0, 1);\neff_density = clamp(density_param + lfo_density_off, 0, 1);\neff_decay_ms = clamp(decay_ms + lfo_decay_off, 5, 80);\neff_scar = clamp(scar + pressure * eff_stress, 0, 1);\n\nfp_rate = exp(-(flam_pitch_gate * 8)) * 0.15;\nflam_p_env = flam_p_env * (1 - fp_rate);\n\np_env_rate = 0.002 + weight * 0.008;\npitch_env = pitch_env * (1 - p_env_rate);\np_sweep = pitch_env * weight * 24;\np_mod = pitch + lfo_pitch_off + flam_p_env + p_sweep + noise() * pressure * eff_drift * 2;\nbase_freq = mtof(clamp(p_mod, 10, 130));\nw_scale = 1 - weight * 0.35;\nbody_freq = max(base_freq * w_scale, 25);\n\ne_decay = 0.0005 + eff_density * 0.003;\nexc_env = exc_env * (1 - e_decay);\n\nexciter_out = 0;\nif (exciter_type < 0.5) {\n    fm_r = 1.41 + eff_heat * 3;\n    mf = base_freq * fm_r;\n    fm_idx = (12 + eff_heat * 18) * exc_env;\n    exc_mod_phase = wrap(exc_mod_phase + mf / samplerate, 0, 1);\n    mod_sig = sin(exc_mod_phase * twopi) * fm_idx;\n    exc_car_phase = wrap(exc_car_phase + base_freq / samplerate, 0, 1);\n    exciter_out = sin(exc_car_phase * twopi + mod_sig) * exc_env * 1.5;\n} else {\n    n = noise();\n    cutoff = base_freq * (3 + eff_heat * 12);\n    coeff = clamp(1 - exp(-twopi * cutoff / samplerate), 0.001, 0.999);\n    noise_filt = noise_filt + (n - noise_filt) * coeff;\n    exciter_out = noise_filt * 6 * exc_env;\n}\n\nfb_lfo_rate = 0.3 + (1 - eff_bloom) * 7.7;\nfb_lfo_depth_raw = clamp((eff_mist - 0.3) / 0.7, 0, 1);\nfb_lfo_phase = wrap(fb_lfo_phase + fb_lfo_rate / samplerate, 0, 1);\nfb_lfo = sin(fb_lfo_phase * twopi);\nfb_gain = eff_mist * (0.5 + eff_stress * 0.5) * (1 + fb_lfo * fb_lfo_depth_raw * 0.15);\nfb_gain = clamp(fb_gain, 0, 0.95);\nhp_cut_base = 80 + (1 - weight) * 2400;\nhp_cut = hp_cut_base * (1 + fb_lfo * fb_lfo_depth_raw * 0.7);\nhp_c = clamp(1 - exp(-twopi * hp_cut / samplerate), 0.001, 0.999);\nfb_lp = fb_hp + (fb_state - fb_hp) * hp_c;\nfb_hp = fb_lp;\nfb_hpf = fb_state - fb_lp;\nlp2_cut = 800 + eff_bloom * 10000 + fb_lfo * fb_lfo_depth_raw * 3000;\nlp2_c = clamp(1 - exp(-twopi * lp2_cut / samplerate), 0.001, 0.999);\nfb_lp2 = fb_lp2 + (fb_hpf - fb_lp2) * lp2_c;\nfb_ltd = tanh(fb_lp2 * 2.5) * 0.6;\nbl_rate = 0.000001 + (1 - eff_bloom) * 0.0003;\nhalo_env = halo_env * (1 - bl_rate);\nfb_sig = fb_ltd * fb_gain * halo_env;\nbody_input = exciter_out + fb_sig;\n\neff_decay = eff_decay_ms * eff_decay_ms * 2.5;\ndecay_norm = clamp(eff_decay / 16000, 0, 1);\neff_Q = clamp(0.985 + decay_norm * 0.014 - fatigue * 0.15, 0.85, 0.9995);\n\nbody_out = 0;\nif (body_type < 0.5) {\n    w1 = twopi * body_freq * 1.0 / samplerate;\n    r1 = eff_Q;\n    ya = body_input + 2 * r1 * cos(w1) * ry1_a - r1 * r1 * ry2_a;\n    ry2_a = ry1_a; ry1_a = ya;\n    w2 = twopi * body_freq * (1.347 + stiffness * 0.2) / samplerate;\n    r2 = eff_Q * 0.995;\n    yb = body_input + 2 * r2 * cos(w2) * ry1_b - r2 * r2 * ry2_b;\n    ry2_b = ry1_b; ry1_b = yb;\n    w3 = twopi * body_freq * (1.891 + stiffness * 0.25) / samplerate;\n    r3 = eff_Q * 0.99;\n    yc = body_input + 2 * r3 * cos(w3) * ry1_c - r3 * r3 * ry2_c;\n    ry2_c = ry1_c; ry1_c = yc;\n    w4 = twopi * body_freq * (2.534 + stiffness * 0.35) / samplerate;\n    r4 = eff_Q * 0.985;\n    yd = body_input + 2 * r4 * cos(w4) * ry1_d - r4 * r4 * ry2_d;\n    ry2_d = ry1_d; ry1_d = yd;\n    body_out = (ya + yb * 0.8 + yc * 0.55 + yd * 0.4) * 0.35;\n} else if (body_type < 1.5) {\n    d_samps = clamp(samplerate / base_freq, 2, 8000);\n    fb = eff_Q * 0.92;\n    delayed = comb_d.read(d_samps);\n    d_coeff = 0.25 + fatigue * 0.35;\n    comb_lp = comb_lp + (delayed - comb_lp) * d_coeff;\n    comb_d.write(body_input + comb_lp * fb);\n    body_out = delayed * 1.3;\n} else if (body_type < 2.5) {\n    cav_len = clamp(samplerate / base_freq, 2, 8000);\n    cav_fb = eff_Q * (0.88 + pressure * 0.1);\n    cav_fb = clamp(cav_fb, 0, 0.996);\n    cav_del = cav_d.read(cav_len);\n    cav_cut = 0.15 + (1 - pressure) * 0.35 + eff_heat * 0.3;\n    cav_lp = cav_lp + (cav_del - cav_lp) * cav_cut;\n    cav_d.write(body_input + cav_lp * cav_fb);\n    w1 = twopi * body_freq * 1.0 / samplerate;\n    r1 = eff_Q * 0.97;\n    ya = cav_del + 2 * r1 * cos(w1) * ry1_a - r1 * r1 * ry2_a;\n    ry2_a = ry1_a; ry1_a = ya;\n    body_out = (cav_del * 0.35 + ya * 0.65) * 1.2;\n} else {\n    mem_r1 = 1.0;\n    mem_r2 = 1.594;\n    mem_r3 = 2.136;\n    mem_r4 = 2.296;\n    w1 = twopi * body_freq * mem_r1 / samplerate;\n    r1 = eff_Q * 0.999;\n    ya = body_input + 2 * r1 * cos(w1) * ry1_a - r1 * r1 * ry2_a;\n    ry2_a = ry1_a; ry1_a = ya;\n    w2 = twopi * body_freq * mem_r2 / samplerate;\n    r2 = eff_Q * 0.995;\n    yb = body_input + 2 * r2 * cos(w2) * ry1_b - r2 * r2 * ry2_b;\n    ry2_b = ry1_b; ry1_b = yb;\n    w3 = twopi * body_freq * mem_r3 / samplerate;\n    r3 = eff_Q * 0.99;\n    yc = body_input + 2 * r3 * cos(w3) * ry1_c - r3 * r3 * ry2_c;\n    ry2_c = ry1_c; ry1_c = yc;\n    w4 = twopi * body_freq * mem_r4 / samplerate;\n    r4 = eff_Q * 0.985;\n    yd = body_input + 2 * r4 * cos(w4) * ry1_d - r4 * r4 * ry2_d;\n    ry2_d = ry1_d; ry1_d = yd;\n    body_out = (ya * 0.55 + yb * 0.3 + yc * 0.2 + yd * 0.15) * 1.1;\n}\n\nfold_d = 1 + eff_scar * 4;\nfractured = body_out;\nif (eff_scar > 0.01) {\n    biased = body_out + pressure * 0.3;\n    folded = asin(sin(biased * fold_d * 1.5707963)) * 0.6366197;\n    fractured = body_out * (1 - eff_scar) + folded * eff_scar;\n}\n\nfb_source = body_out * (1 - eff_stress) + fractured * eff_stress;\nfb_state = fb_source;\n\nenv_rate = 1.0 / max(eff_decay * samplerate / 1000, 1);\nmain_env = main_env * (1 - env_rate);\n\nbl_env = halo_env * eff_mist;\nout_env = max(main_env, bl_env);\nraw_out = fractured * out_env * 3;\nout1 = tanh(raw_out) * 0.95;"
								}
							},
							{
								"box": {
									"id": "g-out",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										50,
										520,
										35,
										22
									],
									"text": "out 1"
								}
							}
						],
						"lines": [
							{
								"patchline": {
									"source": [
										"g-in",
										0
									],
									"destination": [
										"g-cb",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"g-cb",
										0
									],
									"destination": [
										"g-out",
										0
									]
								}
							}
						]
					}
				}
			},
			{
				"box": {
					"id": "vl-5",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						825,
						672,
						40,
						22
					],
					"outlettype": [
						"signal"
					],
					"text": "*~ 1."
				}
			},
			{
				"box": {
					"id": "vlf-5",
					"maxclass": "flonum",
					"numinlets": 1,
					"numoutlets": 2,
					"patching_rect": [
						870,
						672,
						45,
						22
					],
					"outlettype": [
						"float",
						"bang"
					],
					"minimum": 0.0,
					"maximum": 2.0,
					"numdecimalplaces": 2,
					"presentation": 1,
					"presentation_rect": [
						510,
						572,
						56,
						22
					]
				}
			},
			{
				"box": {
					"id": "vlr-5",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						920,
						672,
						85,
						22
					],
					"outlettype": [
						""
					],
					"text": "receive v5_level"
				}
			},
			{
				"box": {
					"id": "vls-5",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						920,
						695,
						50,
						22
					],
					"outlettype": [
						""
					],
					"text": "set $1"
				}
			},
			{
				"box": {
					"id": "vld-5",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						870,
						695,
						40,
						22
					],
					"outlettype": [
						""
					],
					"text": "0.55"
				}
			},
			{
				"box": {
					"id": "vs-5",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						825,
						720,
						80,
						22
					],
					"text": "send~ v5_out"
				}
			},
			{
				"box": {
					"id": "vlk-5",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						870,
						720,
						120,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend voice_level 5"
				}
			},
			{
				"box": {
					"id": "nq-l",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						75,
						494,
						330,
						20
					],
					"text": "NATIVE SEQUENCER   toggle: off = js, on = native",
					"fontface": 1
				}
			},
			{
				"box": {
					"id": "nq-sw",
					"maxclass": "toggle",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						415,
						492,
						20,
						20
					],
					"outlettype": [
						"int"
					],
					"presentation": 1,
					"presentation_rect": [
						770,
						46,
						26,
						26
					]
				}
			},
			{
				"box": {
					"id": "nq-swp",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						440,
						492,
						40,
						22
					],
					"text": "+ 1"
				}
			},
			{
				"box": {
					"id": "nq-lenload",
					"maxclass": "message",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						495,
						492,
						300,
						22
					],
					"text": "store 0 4, store 1 8, store 2 12, store 3 16, store 4 24, store 5 32"
				}
			},
			{
				"box": {
					"id": "nq-tab-0",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 2,
					"patching_rect": [
						75,
						594,
						110,
						22
					],
					"outlettype": [
						"int",
						"bang"
					],
					"text": "table maud_v0 32"
				}
			},
			{
				"box": {
					"id": "nq-coll-0",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 4,
					"patching_rect": [
						75,
						510,
						95,
						22
					],
					"outlettype": [
						"",
						"",
						"",
						""
					],
					"text": "coll maud_len0"
				}
			},
			{
				"box": {
					"id": "nq-mod-0",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						75,
						538,
						110,
						22
					],
					"outlettype": [
						""
					],
					"text": "expr $i1 % $i2"
				}
			},
			{
				"box": {
					"id": "nq-sel-0",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 2,
					"patching_rect": [
						75,
						622,
						45,
						22
					],
					"outlettype": [
						"bang",
						""
					],
					"text": "sel 1"
				}
			},
			{
				"box": {
					"id": "nq-sw-0",
					"maxclass": "newobj",
					"numinlets": 3,
					"numoutlets": 1,
					"patching_rect": [
						75,
						650,
						60,
						22
					],
					"outlettype": [
						""
					],
					"text": "switch 2"
				}
			},
			{
				"box": {
					"id": "nq-tab-1",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 2,
					"patching_rect": [
						225,
						594,
						110,
						22
					],
					"outlettype": [
						"int",
						"bang"
					],
					"text": "table maud_v1 32"
				}
			},
			{
				"box": {
					"id": "nq-coll-1",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 4,
					"patching_rect": [
						225,
						510,
						95,
						22
					],
					"outlettype": [
						"",
						"",
						"",
						""
					],
					"text": "coll maud_len1"
				}
			},
			{
				"box": {
					"id": "nq-mod-1",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						225,
						538,
						110,
						22
					],
					"outlettype": [
						""
					],
					"text": "expr $i1 % $i2"
				}
			},
			{
				"box": {
					"id": "nq-sel-1",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 2,
					"patching_rect": [
						225,
						622,
						45,
						22
					],
					"outlettype": [
						"bang",
						""
					],
					"text": "sel 1"
				}
			},
			{
				"box": {
					"id": "nq-sw-1",
					"maxclass": "newobj",
					"numinlets": 3,
					"numoutlets": 1,
					"patching_rect": [
						225,
						650,
						60,
						22
					],
					"outlettype": [
						""
					],
					"text": "switch 2"
				}
			},
			{
				"box": {
					"id": "nq-tab-2",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 2,
					"patching_rect": [
						375,
						594,
						110,
						22
					],
					"outlettype": [
						"int",
						"bang"
					],
					"text": "table maud_v2 32"
				}
			},
			{
				"box": {
					"id": "nq-coll-2",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 4,
					"patching_rect": [
						375,
						510,
						95,
						22
					],
					"outlettype": [
						"",
						"",
						"",
						""
					],
					"text": "coll maud_len2"
				}
			},
			{
				"box": {
					"id": "nq-mod-2",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						375,
						538,
						110,
						22
					],
					"outlettype": [
						""
					],
					"text": "expr $i1 % $i2"
				}
			},
			{
				"box": {
					"id": "nq-sel-2",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 2,
					"patching_rect": [
						375,
						622,
						45,
						22
					],
					"outlettype": [
						"bang",
						""
					],
					"text": "sel 1"
				}
			},
			{
				"box": {
					"id": "nq-sw-2",
					"maxclass": "newobj",
					"numinlets": 3,
					"numoutlets": 1,
					"patching_rect": [
						375,
						650,
						60,
						22
					],
					"outlettype": [
						""
					],
					"text": "switch 2"
				}
			},
			{
				"box": {
					"id": "nq-tab-3",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 2,
					"patching_rect": [
						525,
						594,
						110,
						22
					],
					"outlettype": [
						"int",
						"bang"
					],
					"text": "table maud_v3 32"
				}
			},
			{
				"box": {
					"id": "nq-coll-3",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 4,
					"patching_rect": [
						525,
						510,
						95,
						22
					],
					"outlettype": [
						"",
						"",
						"",
						""
					],
					"text": "coll maud_len3"
				}
			},
			{
				"box": {
					"id": "nq-mod-3",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						525,
						538,
						110,
						22
					],
					"outlettype": [
						""
					],
					"text": "expr $i1 % $i2"
				}
			},
			{
				"box": {
					"id": "nq-sel-3",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 2,
					"patching_rect": [
						525,
						622,
						45,
						22
					],
					"outlettype": [
						"bang",
						""
					],
					"text": "sel 1"
				}
			},
			{
				"box": {
					"id": "nq-sw-3",
					"maxclass": "newobj",
					"numinlets": 3,
					"numoutlets": 1,
					"patching_rect": [
						525,
						650,
						60,
						22
					],
					"outlettype": [
						""
					],
					"text": "switch 2"
				}
			},
			{
				"box": {
					"id": "nq-tab-4",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 2,
					"patching_rect": [
						675,
						594,
						110,
						22
					],
					"outlettype": [
						"int",
						"bang"
					],
					"text": "table maud_v4 32"
				}
			},
			{
				"box": {
					"id": "nq-coll-4",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 4,
					"patching_rect": [
						675,
						510,
						95,
						22
					],
					"outlettype": [
						"",
						"",
						"",
						""
					],
					"text": "coll maud_len4"
				}
			},
			{
				"box": {
					"id": "nq-mod-4",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						675,
						538,
						110,
						22
					],
					"outlettype": [
						""
					],
					"text": "expr $i1 % $i2"
				}
			},
			{
				"box": {
					"id": "nq-sel-4",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 2,
					"patching_rect": [
						675,
						622,
						45,
						22
					],
					"outlettype": [
						"bang",
						""
					],
					"text": "sel 1"
				}
			},
			{
				"box": {
					"id": "nq-sw-4",
					"maxclass": "newobj",
					"numinlets": 3,
					"numoutlets": 1,
					"patching_rect": [
						675,
						650,
						60,
						22
					],
					"outlettype": [
						""
					],
					"text": "switch 2"
				}
			},
			{
				"box": {
					"id": "nq-tab-5",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 2,
					"patching_rect": [
						825,
						594,
						110,
						22
					],
					"outlettype": [
						"int",
						"bang"
					],
					"text": "table maud_v5 32"
				}
			},
			{
				"box": {
					"id": "nq-coll-5",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 4,
					"patching_rect": [
						825,
						510,
						95,
						22
					],
					"outlettype": [
						"",
						"",
						"",
						""
					],
					"text": "coll maud_len5"
				}
			},
			{
				"box": {
					"id": "nq-mod-5",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						825,
						538,
						110,
						22
					],
					"outlettype": [
						""
					],
					"text": "expr $i1 % $i2"
				}
			},
			{
				"box": {
					"id": "nq-sel-5",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 2,
					"patching_rect": [
						825,
						622,
						45,
						22
					],
					"outlettype": [
						"bang",
						""
					],
					"text": "sel 1"
				}
			},
			{
				"box": {
					"id": "nq-sw-5",
					"maxclass": "newobj",
					"numinlets": 3,
					"numoutlets": 1,
					"patching_rect": [
						825,
						650,
						60,
						22
					],
					"outlettype": [
						""
					],
					"text": "switch 2"
				}
			},
			{
				"box": {
					"id": "nq-unp",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 3,
					"patching_rect": [
						75,
						678,
						110,
						22
					],
					"outlettype": [
						"int",
						"int",
						"int"
					],
					"text": "unpack 0 0 0"
				}
			},
			{
				"box": {
					"id": "nq-pk",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						75,
						706,
						70,
						22
					],
					"outlettype": [
						""
					],
					"text": "pack 0 0"
				}
			},
			{
				"box": {
					"id": "nq-row",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						205,
						678,
						40,
						22
					],
					"text": "+ 1"
				}
			},
			{
				"box": {
					"id": "nq-gate",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 6,
					"patching_rect": [
						75,
						734,
						200,
						22
					],
					"outlettype": [
						"",
						"",
						"",
						"",
						"",
						""
					],
					"text": "gate 6"
				}
			},
			{
				"box": {
					"id": "sec-mx",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						30,
						765,
						65,
						20
					],
					"text": "MIXER",
					"fontface": 1,
					"fontsize": 14.0,
					"textcolor": [
						0.3,
						0.3,
						0.3,
						1.0
					]
				}
			},
			{
				"box": {
					"id": "mr-0",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						75,
						780,
						95,
						22
					],
					"outlettype": [
						"signal"
					],
					"text": "receive~ v0_out"
				}
			},
			{
				"box": {
					"id": "mp-rcv-0",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						75,
						802,
						85,
						22
					],
					"outlettype": [
						""
					],
					"text": "receive v0_pan"
				}
			},
			{
				"box": {
					"id": "mp-lfo-0",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						75,
						824,
						95,
						22
					],
					"outlettype": [
						""
					],
					"text": "receive v0_pan_lfo"
				}
			},
			{
				"box": {
					"id": "mp-sum-0",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						75,
						846,
						55,
						22
					],
					"outlettype": [
						"float"
					],
					"text": "+ 0."
				}
			},
			{
				"box": {
					"id": "mp-clip-0",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						75,
						868,
						75,
						22
					],
					"outlettype": [
						"float"
					],
					"text": "clip 0. 1."
				}
			},
			{
				"box": {
					"id": "mp-cos-0",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						75,
						890,
						95,
						22
					],
					"outlettype": [
						"float"
					],
					"text": "expr sqrt(1. - $f1)"
				}
			},
			{
				"box": {
					"id": "mp-sin-0",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						75,
						912,
						75,
						22
					],
					"outlettype": [
						"float"
					],
					"text": "expr sqrt($f1)"
				}
			},
			{
				"box": {
					"id": "mp-l-0",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						75,
						934,
						40,
						22
					],
					"outlettype": [
						"signal"
					],
					"text": "*~ 0.7"
				}
			},
			{
				"box": {
					"id": "mp-r-0",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						125,
						934,
						40,
						22
					],
					"outlettype": [
						"signal"
					],
					"text": "*~ 0.7"
				}
			},
			{
				"box": {
					"id": "mr-1",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						195,
						780,
						95,
						22
					],
					"outlettype": [
						"signal"
					],
					"text": "receive~ v1_out"
				}
			},
			{
				"box": {
					"id": "mp-rcv-1",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						195,
						802,
						85,
						22
					],
					"outlettype": [
						""
					],
					"text": "receive v1_pan"
				}
			},
			{
				"box": {
					"id": "mp-lfo-1",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						195,
						824,
						95,
						22
					],
					"outlettype": [
						""
					],
					"text": "receive v1_pan_lfo"
				}
			},
			{
				"box": {
					"id": "mp-sum-1",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						195,
						846,
						55,
						22
					],
					"outlettype": [
						"float"
					],
					"text": "+ 0."
				}
			},
			{
				"box": {
					"id": "mp-clip-1",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						195,
						868,
						75,
						22
					],
					"outlettype": [
						"float"
					],
					"text": "clip 0. 1."
				}
			},
			{
				"box": {
					"id": "mp-cos-1",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						195,
						890,
						95,
						22
					],
					"outlettype": [
						"float"
					],
					"text": "expr sqrt(1. - $f1)"
				}
			},
			{
				"box": {
					"id": "mp-sin-1",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						195,
						912,
						75,
						22
					],
					"outlettype": [
						"float"
					],
					"text": "expr sqrt($f1)"
				}
			},
			{
				"box": {
					"id": "mp-l-1",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						195,
						934,
						40,
						22
					],
					"outlettype": [
						"signal"
					],
					"text": "*~ 0.7"
				}
			},
			{
				"box": {
					"id": "mp-r-1",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						245,
						934,
						40,
						22
					],
					"outlettype": [
						"signal"
					],
					"text": "*~ 0.7"
				}
			},
			{
				"box": {
					"id": "mr-2",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						315,
						780,
						95,
						22
					],
					"outlettype": [
						"signal"
					],
					"text": "receive~ v2_out"
				}
			},
			{
				"box": {
					"id": "mp-rcv-2",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						315,
						802,
						85,
						22
					],
					"outlettype": [
						""
					],
					"text": "receive v2_pan"
				}
			},
			{
				"box": {
					"id": "mp-lfo-2",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						315,
						824,
						95,
						22
					],
					"outlettype": [
						""
					],
					"text": "receive v2_pan_lfo"
				}
			},
			{
				"box": {
					"id": "mp-sum-2",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						315,
						846,
						55,
						22
					],
					"outlettype": [
						"float"
					],
					"text": "+ 0."
				}
			},
			{
				"box": {
					"id": "mp-clip-2",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						315,
						868,
						75,
						22
					],
					"outlettype": [
						"float"
					],
					"text": "clip 0. 1."
				}
			},
			{
				"box": {
					"id": "mp-cos-2",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						315,
						890,
						95,
						22
					],
					"outlettype": [
						"float"
					],
					"text": "expr sqrt(1. - $f1)"
				}
			},
			{
				"box": {
					"id": "mp-sin-2",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						315,
						912,
						75,
						22
					],
					"outlettype": [
						"float"
					],
					"text": "expr sqrt($f1)"
				}
			},
			{
				"box": {
					"id": "mp-l-2",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						315,
						934,
						40,
						22
					],
					"outlettype": [
						"signal"
					],
					"text": "*~ 0.7"
				}
			},
			{
				"box": {
					"id": "mp-r-2",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						365,
						934,
						40,
						22
					],
					"outlettype": [
						"signal"
					],
					"text": "*~ 0.7"
				}
			},
			{
				"box": {
					"id": "mr-3",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						435,
						780,
						95,
						22
					],
					"outlettype": [
						"signal"
					],
					"text": "receive~ v3_out"
				}
			},
			{
				"box": {
					"id": "mp-rcv-3",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						435,
						802,
						85,
						22
					],
					"outlettype": [
						""
					],
					"text": "receive v3_pan"
				}
			},
			{
				"box": {
					"id": "mp-lfo-3",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						435,
						824,
						95,
						22
					],
					"outlettype": [
						""
					],
					"text": "receive v3_pan_lfo"
				}
			},
			{
				"box": {
					"id": "mp-sum-3",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						435,
						846,
						55,
						22
					],
					"outlettype": [
						"float"
					],
					"text": "+ 0."
				}
			},
			{
				"box": {
					"id": "mp-clip-3",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						435,
						868,
						75,
						22
					],
					"outlettype": [
						"float"
					],
					"text": "clip 0. 1."
				}
			},
			{
				"box": {
					"id": "mp-cos-3",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						435,
						890,
						95,
						22
					],
					"outlettype": [
						"float"
					],
					"text": "expr sqrt(1. - $f1)"
				}
			},
			{
				"box": {
					"id": "mp-sin-3",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						435,
						912,
						75,
						22
					],
					"outlettype": [
						"float"
					],
					"text": "expr sqrt($f1)"
				}
			},
			{
				"box": {
					"id": "mp-l-3",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						435,
						934,
						40,
						22
					],
					"outlettype": [
						"signal"
					],
					"text": "*~ 0.7"
				}
			},
			{
				"box": {
					"id": "mp-r-3",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						485,
						934,
						40,
						22
					],
					"outlettype": [
						"signal"
					],
					"text": "*~ 0.7"
				}
			},
			{
				"box": {
					"id": "mr-4",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						555,
						780,
						95,
						22
					],
					"outlettype": [
						"signal"
					],
					"text": "receive~ v4_out"
				}
			},
			{
				"box": {
					"id": "mp-rcv-4",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						555,
						802,
						85,
						22
					],
					"outlettype": [
						""
					],
					"text": "receive v4_pan"
				}
			},
			{
				"box": {
					"id": "mp-lfo-4",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						555,
						824,
						95,
						22
					],
					"outlettype": [
						""
					],
					"text": "receive v4_pan_lfo"
				}
			},
			{
				"box": {
					"id": "mp-sum-4",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						555,
						846,
						55,
						22
					],
					"outlettype": [
						"float"
					],
					"text": "+ 0."
				}
			},
			{
				"box": {
					"id": "mp-clip-4",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						555,
						868,
						75,
						22
					],
					"outlettype": [
						"float"
					],
					"text": "clip 0. 1."
				}
			},
			{
				"box": {
					"id": "mp-cos-4",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						555,
						890,
						95,
						22
					],
					"outlettype": [
						"float"
					],
					"text": "expr sqrt(1. - $f1)"
				}
			},
			{
				"box": {
					"id": "mp-sin-4",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						555,
						912,
						75,
						22
					],
					"outlettype": [
						"float"
					],
					"text": "expr sqrt($f1)"
				}
			},
			{
				"box": {
					"id": "mp-l-4",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						555,
						934,
						40,
						22
					],
					"outlettype": [
						"signal"
					],
					"text": "*~ 0.7"
				}
			},
			{
				"box": {
					"id": "mp-r-4",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						605,
						934,
						40,
						22
					],
					"outlettype": [
						"signal"
					],
					"text": "*~ 0.7"
				}
			},
			{
				"box": {
					"id": "mr-5",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						675,
						780,
						95,
						22
					],
					"outlettype": [
						"signal"
					],
					"text": "receive~ v5_out"
				}
			},
			{
				"box": {
					"id": "mp-rcv-5",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						675,
						802,
						85,
						22
					],
					"outlettype": [
						""
					],
					"text": "receive v5_pan"
				}
			},
			{
				"box": {
					"id": "mp-lfo-5",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						675,
						824,
						95,
						22
					],
					"outlettype": [
						""
					],
					"text": "receive v5_pan_lfo"
				}
			},
			{
				"box": {
					"id": "mp-sum-5",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						675,
						846,
						55,
						22
					],
					"outlettype": [
						"float"
					],
					"text": "+ 0."
				}
			},
			{
				"box": {
					"id": "mp-clip-5",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						675,
						868,
						75,
						22
					],
					"outlettype": [
						"float"
					],
					"text": "clip 0. 1."
				}
			},
			{
				"box": {
					"id": "mp-cos-5",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						675,
						890,
						95,
						22
					],
					"outlettype": [
						"float"
					],
					"text": "expr sqrt(1. - $f1)"
				}
			},
			{
				"box": {
					"id": "mp-sin-5",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						675,
						912,
						75,
						22
					],
					"outlettype": [
						"float"
					],
					"text": "expr sqrt($f1)"
				}
			},
			{
				"box": {
					"id": "mp-l-5",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						675,
						934,
						40,
						22
					],
					"outlettype": [
						"signal"
					],
					"text": "*~ 0.7"
				}
			},
			{
				"box": {
					"id": "mp-r-5",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						725,
						934,
						40,
						22
					],
					"outlettype": [
						"signal"
					],
					"text": "*~ 0.7"
				}
			},
			{
				"box": {
					"id": "mx-l-0",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						75,
						961,
						35,
						22
					],
					"outlettype": [
						"signal"
					],
					"text": "+~"
				}
			},
			{
				"box": {
					"id": "mx-l-1",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						195,
						961,
						35,
						22
					],
					"outlettype": [
						"signal"
					],
					"text": "+~"
				}
			},
			{
				"box": {
					"id": "mx-l-2",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						315,
						961,
						35,
						22
					],
					"outlettype": [
						"signal"
					],
					"text": "+~"
				}
			},
			{
				"box": {
					"id": "mx-l-3",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						435,
						961,
						35,
						22
					],
					"outlettype": [
						"signal"
					],
					"text": "+~"
				}
			},
			{
				"box": {
					"id": "mx-l-4",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						555,
						961,
						35,
						22
					],
					"outlettype": [
						"signal"
					],
					"text": "+~"
				}
			},
			{
				"box": {
					"id": "mx-r-0",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						125,
						961,
						35,
						22
					],
					"outlettype": [
						"signal"
					],
					"text": "+~"
				}
			},
			{
				"box": {
					"id": "mx-r-1",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						245,
						961,
						35,
						22
					],
					"outlettype": [
						"signal"
					],
					"text": "+~"
				}
			},
			{
				"box": {
					"id": "mx-r-2",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						365,
						961,
						35,
						22
					],
					"outlettype": [
						"signal"
					],
					"text": "+~"
				}
			},
			{
				"box": {
					"id": "mx-r-3",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						485,
						961,
						35,
						22
					],
					"outlettype": [
						"signal"
					],
					"text": "+~"
				}
			},
			{
				"box": {
					"id": "mx-r-4",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						605,
						961,
						35,
						22
					],
					"outlettype": [
						"signal"
					],
					"text": "+~"
				}
			},
			{
				"box": {
					"id": "mx-sig1",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						75,
						991,
						50,
						22
					],
					"outlettype": [
						"signal"
					],
					"text": "sig~ 1."
				}
			},
			{
				"box": {
					"id": "mx-gain",
					"maxclass": "gain~",
					"numinlets": 1,
					"numoutlets": 2,
					"patching_rect": [
						130,
						991,
						400,
						30
					],
					"outlettype": [
						"signal",
						""
					],
					"parameter_enable": 0,
					"orientation": 1,
					"presentation": 1,
					"presentation_rect": [
						650,
						568,
						300,
						30
					]
				}
			},
			{
				"box": {
					"id": "mx-gain-init",
					"maxclass": "message",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						130,
						965,
						40,
						22
					],
					"text": "100"
				}
			},
			{
				"box": {
					"id": "mx-mulL",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						75,
						1027,
						40,
						22
					],
					"outlettype": [
						"signal"
					],
					"text": "*~"
				}
			},
			{
				"box": {
					"id": "mx-mulR",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						550,
						1027,
						40,
						22
					],
					"outlettype": [
						"signal"
					],
					"text": "*~"
				}
			},
			{
				"box": {
					"id": "mx-limL",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						75,
						1054,
						70,
						22
					],
					"outlettype": [
						"signal"
					],
					"text": "clip~ -0.891 0.891"
				}
			},
			{
				"box": {
					"id": "mx-limR",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						550,
						1054,
						70,
						22
					],
					"outlettype": [
						"signal"
					],
					"text": "clip~ -0.891 0.891"
				}
			},
			{
				"box": {
					"id": "mx-meter",
					"maxclass": "meter~",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						75,
						1082,
						500,
						18
					],
					"outlettype": [
						"float"
					],
					"presentation": 1,
					"presentation_rect": [
						650,
						604,
						300,
						12
					]
				}
			},
			{
				"box": {
					"id": "mx-scope",
					"maxclass": "scope~",
					"numinlets": 2,
					"numoutlets": 0,
					"patching_rect": [
						600,
						991,
						200,
						56
					]
				}
			},
			{
				"box": {
					"id": "mx-dac",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 0,
					"patching_rect": [
						75,
						1106,
						60,
						22
					],
					"text": "dac~ 1 2"
				}
			},
			{
				"box": {
					"id": "mx-rec",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 0,
					"patching_rect": [
						640,
						1106,
						210,
						22
					],
					"text": "sfrecord~ 2"
				}
			},
			{
				"box": {
					"id": "mx-reclbl",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						640,
						1090,
						230,
						20
					],
					"text": "MEASURE  records 20s to measure.wav",
					"fontface": 1
				}
			},
			{
				"box": {
					"id": "mx-recbtn",
					"maxclass": "button",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						640,
						1136,
						24,
						24
					]
				}
			},
			{
				"box": {
					"id": "mx-rect",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 2,
					"patching_rect": [
						670,
						1136,
						45,
						22
					],
					"outlettype": [
						"bang",
						"bang"
					],
					"text": "t b b"
				}
			},
			{
				"box": {
					"id": "mx-recopen",
					"maxclass": "message",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						790,
						1166,
						220,
						22
					],
					"text": "open E:/tmp/measure.wav"
				}
			},
			{
				"box": {
					"id": "mx-recon",
					"maxclass": "message",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						640,
						1166,
						30,
						22
					],
					"text": "1"
				}
			},
			{
				"box": {
					"id": "mx-recprint",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						790,
						1196,
						130,
						22
					],
					"text": "print MEASURE"
				}
			},
			{
				"box": {
					"id": "mx-recdel",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						680,
						1196,
						90,
						22
					],
					"text": "delay 20000"
				}
			},
			{
				"box": {
					"id": "mx-recoff",
					"maxclass": "message",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						640,
						1196,
						30,
						22
					],
					"text": "0"
				}
			},
			{
				"box": {
					"id": "out-at",
					"maxclass": "toggle",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						165,
						1104,
						25,
						25
					],
					"outlettype": [
						"int"
					],
					"presentation": 1,
					"presentation_rect": [
						890,
						46,
						26,
						26
					]
				}
			},
			{
				"box": {
					"id": "out-adel",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						240,
						1076,
						80,
						22
					],
					"text": "delay 500"
				}
			},
			{
				"box": {
					"id": "out-aon",
					"maxclass": "message",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						330,
						1076,
						30,
						22
					],
					"text": "1"
				}
			},
			{
				"box": {
					"id": "out-al",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						195,
						1106,
						90,
						20
					],
					"text": "AUDIO ON/OFF",
					"fontface": 1
				}
			},
			{
				"box": {
					"id": "out-as",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 3,
					"patching_rect": [
						165,
						1136,
						45,
						22
					],
					"outlettype": [
						"bang",
						"bang",
						""
					],
					"text": "sel 0 1"
				}
			},
			{
				"box": {
					"id": "out-ms",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						165,
						1166,
						35,
						22
					],
					"outlettype": [
						""
					],
					"text": "stop"
				}
			},
			{
				"box": {
					"id": "out-mw",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						210,
						1166,
						68,
						22
					],
					"outlettype": [
						""
					],
					"text": "startwindow"
				}
			},
			{
				"box": {
					"id": "sec-ed",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						30,
						1145,
						128,
						20
					],
					"text": "VOICE EDITOR",
					"fontface": 1,
					"fontsize": 14.0,
					"textcolor": [
						0.3,
						0.3,
						0.3,
						1.0
					]
				}
			},
			{
				"box": {
					"id": "vc-tab",
					"maxclass": "live.tab",
					"numinlets": 1,
					"numoutlets": 3,
					"patching_rect": [
						75,
						1160,
						750,
						28
					],
					"outlettype": [
						"",
						"",
						"float"
					],
					"parameter_enable": 1,
					"num_lines_patching": 1,
					"num_lines_presentation": 1,
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_enum": [
								"MASS",
								"VEIN",
								"SHARD",
								"HUSK",
								"FAULT",
								"HALO"
							],
							"parameter_longname": "voice_select",
							"parameter_shortname": "voice",
							"parameter_mmax": 5.0,
							"parameter_type": 2,
							"parameter_unitstyle": 0
						}
					},
					"presentation": 1,
					"presentation_rect": [
						30,
						334,
						300,
						26
					]
				}
			},
			{
				"box": {
					"id": "vc-js",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 8,
					"patching_rect": [
						75,
						1195,
						750,
						22
					],
					"outlettype": [
						"",
						"",
						"",
						"",
						"",
						"",
						"",
						""
					],
					"text": "js voicectrl.js"
				}
			},
			{
				"box": {
					"id": "vc-initmsg",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						855,
						1160,
						35,
						22
					],
					"outlettype": [
						""
					],
					"text": "init"
				}
			},
			{
				"box": {
					"id": "vp-0",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						75,
						1225,
						75,
						22
					],
					"text": "send v0_p"
				}
			},
			{
				"box": {
					"id": "vp-1",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						225,
						1225,
						75,
						22
					],
					"text": "send v1_p"
				}
			},
			{
				"box": {
					"id": "vp-2",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						375,
						1225,
						75,
						22
					],
					"text": "send v2_p"
				}
			},
			{
				"box": {
					"id": "vp-3",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						525,
						1225,
						75,
						22
					],
					"text": "send v3_p"
				}
			},
			{
				"box": {
					"id": "vp-4",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						675,
						1225,
						75,
						22
					],
					"text": "send v4_p"
				}
			},
			{
				"box": {
					"id": "vp-5",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						825,
						1225,
						75,
						22
					],
					"text": "send v5_p"
				}
			},
			{
				"box": {
					"id": "vc-route",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 14,
					"patching_rect": [
						75,
						1255,
						900,
						22
					],
					"outlettype": [
						"",
						"",
						"",
						"",
						"",
						"",
						"",
						"",
						"",
						"",
						"",
						"",
						"",
						""
					],
					"text": "route stress bloom scar weight mist heat_macro drift_param density_param pitch decay_ms exciter_type body_type pan"
				}
			},
			{
				"box": {
					"id": "dl-0",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						30,
						1285,
						80,
						20
					],
					"text": "STRESS",
					"fontsize": 10.0
				}
			},
			{
				"box": {
					"id": "dd-0",
					"maxclass": "dial",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						40,
						1303,
						40,
						40
					],
					"outlettype": [
						"int"
					],
					"parameter_enable": 0,
					"presentation": 1,
					"presentation_rect": [
						30,
						378,
						46,
						46
					]
				}
			},
			{
				"box": {
					"id": "ds-0",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						40,
						1347,
						55,
						22
					],
					"outlettype": [
						""
					],
					"text": "set $1"
				}
			},
			{
				"box": {
					"id": "dp-0",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						40,
						1375,
						80,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend stress"
				}
			},
			{
				"box": {
					"id": "dl-1",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						113,
						1285,
						80,
						20
					],
					"text": "BLOOM",
					"fontsize": 10.0
				}
			},
			{
				"box": {
					"id": "dd-1",
					"maxclass": "dial",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						123,
						1303,
						40,
						40
					],
					"outlettype": [
						"int"
					],
					"parameter_enable": 0,
					"presentation": 1,
					"presentation_rect": [
						126,
						378,
						46,
						46
					]
				}
			},
			{
				"box": {
					"id": "ds-1",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						123,
						1347,
						55,
						22
					],
					"outlettype": [
						""
					],
					"text": "set $1"
				}
			},
			{
				"box": {
					"id": "dp-1",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						123,
						1375,
						80,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend bloom"
				}
			},
			{
				"box": {
					"id": "dl-2",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						196,
						1285,
						80,
						20
					],
					"text": "SCAR",
					"fontsize": 10.0
				}
			},
			{
				"box": {
					"id": "dd-2",
					"maxclass": "dial",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						206,
						1303,
						40,
						40
					],
					"outlettype": [
						"int"
					],
					"parameter_enable": 0,
					"presentation": 1,
					"presentation_rect": [
						222,
						378,
						46,
						46
					]
				}
			},
			{
				"box": {
					"id": "ds-2",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						206,
						1347,
						55,
						22
					],
					"outlettype": [
						""
					],
					"text": "set $1"
				}
			},
			{
				"box": {
					"id": "dp-2",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						206,
						1375,
						80,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend scar"
				}
			},
			{
				"box": {
					"id": "dl-3",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						279,
						1285,
						80,
						20
					],
					"text": "WEIGHT",
					"fontsize": 10.0
				}
			},
			{
				"box": {
					"id": "dd-3",
					"maxclass": "dial",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						289,
						1303,
						40,
						40
					],
					"outlettype": [
						"int"
					],
					"parameter_enable": 0,
					"presentation": 1,
					"presentation_rect": [
						318,
						378,
						46,
						46
					]
				}
			},
			{
				"box": {
					"id": "ds-3",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						289,
						1347,
						55,
						22
					],
					"outlettype": [
						""
					],
					"text": "set $1"
				}
			},
			{
				"box": {
					"id": "dp-3",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						289,
						1375,
						80,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend weight"
				}
			},
			{
				"box": {
					"id": "dl-4",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						362,
						1285,
						80,
						20
					],
					"text": "MIST",
					"fontsize": 10.0
				}
			},
			{
				"box": {
					"id": "dd-4",
					"maxclass": "dial",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						372,
						1303,
						40,
						40
					],
					"outlettype": [
						"int"
					],
					"parameter_enable": 0,
					"presentation": 1,
					"presentation_rect": [
						414,
						378,
						46,
						46
					]
				}
			},
			{
				"box": {
					"id": "ds-4",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						372,
						1347,
						55,
						22
					],
					"outlettype": [
						""
					],
					"text": "set $1"
				}
			},
			{
				"box": {
					"id": "dp-4",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						372,
						1375,
						80,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend mist"
				}
			},
			{
				"box": {
					"id": "dl-5",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						445,
						1285,
						80,
						20
					],
					"text": "HEAT",
					"fontsize": 10.0
				}
			},
			{
				"box": {
					"id": "dd-5",
					"maxclass": "dial",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						455,
						1303,
						40,
						40
					],
					"outlettype": [
						"int"
					],
					"parameter_enable": 0,
					"presentation": 1,
					"presentation_rect": [
						510,
						378,
						46,
						46
					]
				}
			},
			{
				"box": {
					"id": "ds-5",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						455,
						1347,
						55,
						22
					],
					"outlettype": [
						""
					],
					"text": "set $1"
				}
			},
			{
				"box": {
					"id": "dp-5",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						455,
						1375,
						80,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend heat_macro"
				}
			},
			{
				"box": {
					"id": "dl-6",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						528,
						1285,
						80,
						20
					],
					"text": "DRIFT",
					"fontsize": 10.0
				}
			},
			{
				"box": {
					"id": "dd-6",
					"maxclass": "dial",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						538,
						1303,
						40,
						40
					],
					"outlettype": [
						"int"
					],
					"parameter_enable": 0,
					"presentation": 1,
					"presentation_rect": [
						606,
						378,
						46,
						46
					]
				}
			},
			{
				"box": {
					"id": "ds-6",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						538,
						1347,
						55,
						22
					],
					"outlettype": [
						""
					],
					"text": "set $1"
				}
			},
			{
				"box": {
					"id": "dp-6",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						538,
						1375,
						80,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend drift_param"
				}
			},
			{
				"box": {
					"id": "dl-7",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						611,
						1285,
						80,
						20
					],
					"text": "DENSITY",
					"fontsize": 10.0
				}
			},
			{
				"box": {
					"id": "dd-7",
					"maxclass": "dial",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						621,
						1303,
						40,
						40
					],
					"outlettype": [
						"int"
					],
					"parameter_enable": 0,
					"presentation": 1,
					"presentation_rect": [
						30,
						460,
						46,
						46
					]
				}
			},
			{
				"box": {
					"id": "ds-7",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						621,
						1347,
						55,
						22
					],
					"outlettype": [
						""
					],
					"text": "set $1"
				}
			},
			{
				"box": {
					"id": "dp-7",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						621,
						1375,
						80,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend density_param"
				}
			},
			{
				"box": {
					"id": "dl-8",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						694,
						1285,
						80,
						20
					],
					"text": "PITCH",
					"fontsize": 10.0
				}
			},
			{
				"box": {
					"id": "dd-8",
					"maxclass": "dial",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						704,
						1303,
						40,
						40
					],
					"outlettype": [
						"int"
					],
					"parameter_enable": 0,
					"presentation": 1,
					"presentation_rect": [
						126,
						460,
						46,
						46
					]
				}
			},
			{
				"box": {
					"id": "ds-8",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						704,
						1347,
						55,
						22
					],
					"outlettype": [
						""
					],
					"text": "set $1"
				}
			},
			{
				"box": {
					"id": "dp-8",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						704,
						1375,
						80,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend pitch"
				}
			},
			{
				"box": {
					"id": "dl-9",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						777,
						1285,
						80,
						20
					],
					"text": "DECAY",
					"fontsize": 10.0
				}
			},
			{
				"box": {
					"id": "dd-9",
					"maxclass": "dial",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						787,
						1303,
						40,
						40
					],
					"outlettype": [
						"int"
					],
					"parameter_enable": 0,
					"presentation": 1,
					"presentation_rect": [
						222,
						460,
						46,
						46
					]
				}
			},
			{
				"box": {
					"id": "ds-9",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						787,
						1347,
						55,
						22
					],
					"outlettype": [
						""
					],
					"text": "set $1"
				}
			},
			{
				"box": {
					"id": "dp-9",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						787,
						1375,
						80,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend decay_ms"
				}
			},
			{
				"box": {
					"id": "dl-10",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						860,
						1285,
						80,
						20
					],
					"text": "EXCITER",
					"fontsize": 10.0
				}
			},
			{
				"box": {
					"id": "dd-10",
					"maxclass": "dial",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						870,
						1303,
						40,
						40
					],
					"outlettype": [
						"int"
					],
					"parameter_enable": 0,
					"presentation": 1,
					"presentation_rect": [
						318,
						460,
						46,
						46
					]
				}
			},
			{
				"box": {
					"id": "ds-10",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						870,
						1347,
						55,
						22
					],
					"outlettype": [
						""
					],
					"text": "set $1"
				}
			},
			{
				"box": {
					"id": "dp-10",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						870,
						1375,
						80,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend exciter_type"
				}
			},
			{
				"box": {
					"id": "dl-11",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						943,
						1285,
						80,
						20
					],
					"text": "BODY",
					"fontsize": 10.0
				}
			},
			{
				"box": {
					"id": "dd-11",
					"maxclass": "dial",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						953,
						1303,
						40,
						40
					],
					"outlettype": [
						"int"
					],
					"parameter_enable": 0,
					"presentation": 1,
					"presentation_rect": [
						414,
						460,
						46,
						46
					]
				}
			},
			{
				"box": {
					"id": "ds-11",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						953,
						1347,
						55,
						22
					],
					"outlettype": [
						""
					],
					"text": "set $1"
				}
			},
			{
				"box": {
					"id": "dp-11",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						953,
						1375,
						80,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend body_type"
				}
			},
			{
				"box": {
					"id": "dl-12",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						1026,
						1285,
						80,
						20
					],
					"text": "PAN",
					"fontsize": 10.0
				}
			},
			{
				"box": {
					"id": "dd-12",
					"maxclass": "dial",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						1036,
						1303,
						40,
						40
					],
					"outlettype": [
						"int"
					],
					"parameter_enable": 0,
					"presentation": 1,
					"presentation_rect": [
						510,
						460,
						46,
						46
					]
				}
			},
			{
				"box": {
					"id": "ds-12",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						1036,
						1347,
						55,
						22
					],
					"outlettype": [
						""
					],
					"text": "set $1"
				}
			},
			{
				"box": {
					"id": "dp-12",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						1036,
						1375,
						80,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend pan"
				}
			},
			{
				"box": {
					"id": "sec-fl",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						30,
						1430,
						119,
						20
					],
					"text": "FLAM ENGINE",
					"fontface": 1,
					"fontsize": 14.0,
					"textcolor": [
						0.3,
						0.3,
						0.3,
						1.0
					]
				}
			},
			{
				"box": {
					"id": "fl-tp-0",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						75,
						1410,
						95,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend trig 0"
				}
			},
			{
				"box": {
					"id": "fl-tp-1",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						225,
						1410,
						95,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend trig 1"
				}
			},
			{
				"box": {
					"id": "fl-tp-2",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						375,
						1410,
						95,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend trig 2"
				}
			},
			{
				"box": {
					"id": "fl-tp-3",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						525,
						1410,
						95,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend trig 3"
				}
			},
			{
				"box": {
					"id": "fl-tp-4",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						675,
						1410,
						95,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend trig 4"
				}
			},
			{
				"box": {
					"id": "fl-tp-5",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						825,
						1410,
						95,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend trig 5"
				}
			},
			{
				"box": {
					"id": "fl-js",
					"maxclass": "newobj",
					"numinlets": 3,
					"numoutlets": 7,
					"patching_rect": [
						75,
						1445,
						750,
						22
					],
					"outlettype": [
						"bang",
						"bang",
						"bang",
						"bang",
						"bang",
						"bang",
						""
					],
					"text": "js flamengine.js"
				}
			},
			{
				"box": {
					"id": "fl-snd-0",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						75,
						1470,
						80,
						22
					],
					"text": "send v0_trig"
				}
			},
			{
				"box": {
					"id": "fl-snd-1",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						225,
						1470,
						80,
						22
					],
					"text": "send v1_trig"
				}
			},
			{
				"box": {
					"id": "fl-snd-2",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						375,
						1470,
						80,
						22
					],
					"text": "send v2_trig"
				}
			},
			{
				"box": {
					"id": "fl-snd-3",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						525,
						1470,
						80,
						22
					],
					"text": "send v3_trig"
				}
			},
			{
				"box": {
					"id": "fl-snd-4",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						675,
						1470,
						80,
						22
					],
					"text": "send v4_trig"
				}
			},
			{
				"box": {
					"id": "fl-snd-5",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						825,
						1470,
						80,
						22
					],
					"text": "send v5_trig"
				}
			},
			{
				"box": {
					"id": "fl-master-lbl",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						75,
						1497,
						65,
						20
					],
					"text": "MASTER:",
					"fontface": 1
				}
			},
			{
				"box": {
					"id": "fl-m-sub",
					"maxclass": "umenu",
					"numinlets": 1,
					"numoutlets": 2,
					"patching_rect": [
						145,
						1497,
						75,
						20
					],
					"outlettype": [
						"int",
						""
					],
					"items": [
						"OFF",
						",",
						"1/32",
						",",
						"1/48",
						",",
						"1/64",
						",",
						"1/96"
					]
				}
			},
			{
				"box": {
					"id": "fl-m-sub-p",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						225,
						1497,
						140,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend master_subdivision"
				}
			},
			{
				"box": {
					"id": "fl-m-prob",
					"maxclass": "dial",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						375,
						1492,
						30,
						30
					],
					"outlettype": [
						"int"
					],
					"parameter_enable": 0
				}
			},
			{
				"box": {
					"id": "fl-m-prob-p",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						410,
						1497,
						140,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend master_probability"
				}
			},
			{
				"box": {
					"id": "fl-m-prob-l",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						375,
						1525,
						35,
						20
					],
					"text": "PROB",
					"fontsize": 9.0
				}
			},
			{
				"box": {
					"id": "fl-m-hum",
					"maxclass": "dial",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						555,
						1492,
						30,
						30
					],
					"outlettype": [
						"int"
					],
					"parameter_enable": 0
				}
			},
			{
				"box": {
					"id": "fl-m-hum-p",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						590,
						1497,
						140,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend master_humanize"
				}
			},
			{
				"box": {
					"id": "fl-m-hum-l",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						555,
						1525,
						45,
						20
					],
					"text": "HUMAN",
					"fontsize": 9.0
				}
			},
			{
				"box": {
					"id": "fl-m-burst",
					"maxclass": "number",
					"numinlets": 1,
					"numoutlets": 2,
					"patching_rect": [
						735,
						1497,
						40,
						22
					],
					"outlettype": [
						"int",
						"bang"
					],
					"minimum": 1,
					"maximum": 8
				}
			},
			{
				"box": {
					"id": "fl-m-burst-p",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						780,
						1497,
						120,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend master_burst"
				}
			},
			{
				"box": {
					"id": "fl-m-burst-l",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						735,
						1522,
						45,
						20
					],
					"text": "BURST",
					"fontsize": 9.0
				}
			},
			{
				"box": {
					"id": "fl-master-lbl2",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						375,
						1530,
						45,
						20
					],
					"text": "PITCH:",
					"fontface": 1,
					"fontsize": 9.0
				}
			},
			{
				"box": {
					"id": "fl-m-pitch",
					"maxclass": "dial",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						420,
						1525,
						30,
						30
					],
					"outlettype": [
						"int"
					],
					"parameter_enable": 0
				}
			},
			{
				"box": {
					"id": "fl-m-pitch-p",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						455,
						1530,
						140,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend master_pitch_mod"
				}
			},
			{
				"box": {
					"id": "fl-master-lbl3",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						600,
						1530,
						55,
						20
					],
					"text": "VDECAY:",
					"fontface": 1,
					"fontsize": 9.0
				}
			},
			{
				"box": {
					"id": "fl-m-vdecay",
					"maxclass": "dial",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						660,
						1525,
						30,
						30
					],
					"outlettype": [
						"int"
					],
					"parameter_enable": 0
				}
			},
			{
				"box": {
					"id": "fl-m-vdecay-p",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						695,
						1530,
						140,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend master_vel_decay"
				}
			},
			{
				"box": {
					"id": "fl-vl-0",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						75,
						1560,
						55,
						20
					],
					"text": "MASS",
					"fontface": 1,
					"fontsize": 10.0
				}
			},
			{
				"box": {
					"id": "fl-subdivision-0",
					"maxclass": "umenu",
					"numinlets": 1,
					"numoutlets": 2,
					"patching_rect": [
						75,
						1578,
						75,
						20
					],
					"outlettype": [
						"int",
						""
					],
					"items": [
						"OFF",
						",",
						"1/32",
						",",
						"1/48",
						",",
						"1/64",
						",",
						"1/96"
					]
				}
			},
			{
				"box": {
					"id": "fl-subdivision-p-0",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						155,
						1578,
						65,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend subdivision 0"
				}
			},
			{
				"box": {
					"id": "fl-probability-0",
					"maxclass": "dial",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						75,
						1603,
						30,
						30
					],
					"outlettype": [
						"int"
					],
					"parameter_enable": 0
				}
			},
			{
				"box": {
					"id": "fl-probability-p-0",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						110,
						1607,
						110,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend probability 0"
				}
			},
			{
				"box": {
					"id": "fl-humanize-0",
					"maxclass": "dial",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						75,
						1641,
						30,
						30
					],
					"outlettype": [
						"int"
					],
					"parameter_enable": 0
				}
			},
			{
				"box": {
					"id": "fl-humanize-p-0",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						110,
						1645,
						110,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend humanize 0"
				}
			},
			{
				"box": {
					"id": "fl-burst-0",
					"maxclass": "number",
					"numinlets": 1,
					"numoutlets": 2,
					"patching_rect": [
						75,
						1679,
						40,
						22
					],
					"outlettype": [
						"int",
						"bang"
					],
					"minimum": 1,
					"maximum": 8
				}
			},
			{
				"box": {
					"id": "fl-burst-p-0",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						120,
						1679,
						100,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend burst 0"
				}
			},
			{
				"box": {
					"id": "fl-pitch_mod-0",
					"maxclass": "dial",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						75,
						1707,
						30,
						30
					],
					"outlettype": [
						"int"
					],
					"parameter_enable": 0
				}
			},
			{
				"box": {
					"id": "fl-pitch_mod-p-0",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						110,
						1711,
						110,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend pitch_mod 0"
				}
			},
			{
				"box": {
					"id": "fl-vel_decay-0",
					"maxclass": "dial",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						75,
						1745,
						30,
						30
					],
					"outlettype": [
						"int"
					],
					"parameter_enable": 0
				}
			},
			{
				"box": {
					"id": "fl-vel_decay-p-0",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						110,
						1749,
						110,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend vel_decay 0"
				}
			},
			{
				"box": {
					"id": "fl-lbl-0",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						15,
						1580,
						55,
						20
					],
					"text": "SUBDIV",
					"fontsize": 9.0
				}
			},
			{
				"box": {
					"id": "fl-lbl-1",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						15,
						1605,
						55,
						20
					],
					"text": "PROB %",
					"fontsize": 9.0
				}
			},
			{
				"box": {
					"id": "fl-lbl-2",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						15,
						1643,
						55,
						20
					],
					"text": "HUMAN",
					"fontsize": 9.0
				}
			},
			{
				"box": {
					"id": "fl-lbl-3",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						15,
						1681,
						55,
						20
					],
					"text": "BURST",
					"fontsize": 9.0
				}
			},
			{
				"box": {
					"id": "fl-lbl-4",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						15,
						1709,
						55,
						20
					],
					"text": "PITCH",
					"fontsize": 9.0
				}
			},
			{
				"box": {
					"id": "fl-lbl-5",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						15,
						1747,
						55,
						20
					],
					"text": "VDECAY",
					"fontsize": 9.0
				}
			},
			{
				"box": {
					"id": "fl-vl-1",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						225,
						1560,
						55,
						20
					],
					"text": "VEIN",
					"fontface": 1,
					"fontsize": 10.0
				}
			},
			{
				"box": {
					"id": "fl-subdivision-1",
					"maxclass": "umenu",
					"numinlets": 1,
					"numoutlets": 2,
					"patching_rect": [
						225,
						1578,
						75,
						20
					],
					"outlettype": [
						"int",
						""
					],
					"items": [
						"OFF",
						",",
						"1/32",
						",",
						"1/48",
						",",
						"1/64",
						",",
						"1/96"
					]
				}
			},
			{
				"box": {
					"id": "fl-subdivision-p-1",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						305,
						1578,
						65,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend subdivision 1"
				}
			},
			{
				"box": {
					"id": "fl-probability-1",
					"maxclass": "dial",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						225,
						1603,
						30,
						30
					],
					"outlettype": [
						"int"
					],
					"parameter_enable": 0
				}
			},
			{
				"box": {
					"id": "fl-probability-p-1",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						260,
						1607,
						110,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend probability 1"
				}
			},
			{
				"box": {
					"id": "fl-humanize-1",
					"maxclass": "dial",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						225,
						1641,
						30,
						30
					],
					"outlettype": [
						"int"
					],
					"parameter_enable": 0
				}
			},
			{
				"box": {
					"id": "fl-humanize-p-1",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						260,
						1645,
						110,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend humanize 1"
				}
			},
			{
				"box": {
					"id": "fl-burst-1",
					"maxclass": "number",
					"numinlets": 1,
					"numoutlets": 2,
					"patching_rect": [
						225,
						1679,
						40,
						22
					],
					"outlettype": [
						"int",
						"bang"
					],
					"minimum": 1,
					"maximum": 8
				}
			},
			{
				"box": {
					"id": "fl-burst-p-1",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						270,
						1679,
						100,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend burst 1"
				}
			},
			{
				"box": {
					"id": "fl-pitch_mod-1",
					"maxclass": "dial",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						225,
						1707,
						30,
						30
					],
					"outlettype": [
						"int"
					],
					"parameter_enable": 0
				}
			},
			{
				"box": {
					"id": "fl-pitch_mod-p-1",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						260,
						1711,
						110,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend pitch_mod 1"
				}
			},
			{
				"box": {
					"id": "fl-vel_decay-1",
					"maxclass": "dial",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						225,
						1745,
						30,
						30
					],
					"outlettype": [
						"int"
					],
					"parameter_enable": 0
				}
			},
			{
				"box": {
					"id": "fl-vel_decay-p-1",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						260,
						1749,
						110,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend vel_decay 1"
				}
			},
			{
				"box": {
					"id": "fl-vl-2",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						375,
						1560,
						55,
						20
					],
					"text": "SHARD",
					"fontface": 1,
					"fontsize": 10.0
				}
			},
			{
				"box": {
					"id": "fl-subdivision-2",
					"maxclass": "umenu",
					"numinlets": 1,
					"numoutlets": 2,
					"patching_rect": [
						375,
						1578,
						75,
						20
					],
					"outlettype": [
						"int",
						""
					],
					"items": [
						"OFF",
						",",
						"1/32",
						",",
						"1/48",
						",",
						"1/64",
						",",
						"1/96"
					]
				}
			},
			{
				"box": {
					"id": "fl-subdivision-p-2",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						455,
						1578,
						65,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend subdivision 2"
				}
			},
			{
				"box": {
					"id": "fl-probability-2",
					"maxclass": "dial",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						375,
						1603,
						30,
						30
					],
					"outlettype": [
						"int"
					],
					"parameter_enable": 0
				}
			},
			{
				"box": {
					"id": "fl-probability-p-2",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						410,
						1607,
						110,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend probability 2"
				}
			},
			{
				"box": {
					"id": "fl-humanize-2",
					"maxclass": "dial",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						375,
						1641,
						30,
						30
					],
					"outlettype": [
						"int"
					],
					"parameter_enable": 0
				}
			},
			{
				"box": {
					"id": "fl-humanize-p-2",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						410,
						1645,
						110,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend humanize 2"
				}
			},
			{
				"box": {
					"id": "fl-burst-2",
					"maxclass": "number",
					"numinlets": 1,
					"numoutlets": 2,
					"patching_rect": [
						375,
						1679,
						40,
						22
					],
					"outlettype": [
						"int",
						"bang"
					],
					"minimum": 1,
					"maximum": 8
				}
			},
			{
				"box": {
					"id": "fl-burst-p-2",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						420,
						1679,
						100,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend burst 2"
				}
			},
			{
				"box": {
					"id": "fl-pitch_mod-2",
					"maxclass": "dial",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						375,
						1707,
						30,
						30
					],
					"outlettype": [
						"int"
					],
					"parameter_enable": 0
				}
			},
			{
				"box": {
					"id": "fl-pitch_mod-p-2",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						410,
						1711,
						110,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend pitch_mod 2"
				}
			},
			{
				"box": {
					"id": "fl-vel_decay-2",
					"maxclass": "dial",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						375,
						1745,
						30,
						30
					],
					"outlettype": [
						"int"
					],
					"parameter_enable": 0
				}
			},
			{
				"box": {
					"id": "fl-vel_decay-p-2",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						410,
						1749,
						110,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend vel_decay 2"
				}
			},
			{
				"box": {
					"id": "fl-vl-3",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						525,
						1560,
						55,
						20
					],
					"text": "HUSK",
					"fontface": 1,
					"fontsize": 10.0
				}
			},
			{
				"box": {
					"id": "fl-subdivision-3",
					"maxclass": "umenu",
					"numinlets": 1,
					"numoutlets": 2,
					"patching_rect": [
						525,
						1578,
						75,
						20
					],
					"outlettype": [
						"int",
						""
					],
					"items": [
						"OFF",
						",",
						"1/32",
						",",
						"1/48",
						",",
						"1/64",
						",",
						"1/96"
					]
				}
			},
			{
				"box": {
					"id": "fl-subdivision-p-3",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						605,
						1578,
						65,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend subdivision 3"
				}
			},
			{
				"box": {
					"id": "fl-probability-3",
					"maxclass": "dial",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						525,
						1603,
						30,
						30
					],
					"outlettype": [
						"int"
					],
					"parameter_enable": 0
				}
			},
			{
				"box": {
					"id": "fl-probability-p-3",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						560,
						1607,
						110,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend probability 3"
				}
			},
			{
				"box": {
					"id": "fl-humanize-3",
					"maxclass": "dial",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						525,
						1641,
						30,
						30
					],
					"outlettype": [
						"int"
					],
					"parameter_enable": 0
				}
			},
			{
				"box": {
					"id": "fl-humanize-p-3",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						560,
						1645,
						110,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend humanize 3"
				}
			},
			{
				"box": {
					"id": "fl-burst-3",
					"maxclass": "number",
					"numinlets": 1,
					"numoutlets": 2,
					"patching_rect": [
						525,
						1679,
						40,
						22
					],
					"outlettype": [
						"int",
						"bang"
					],
					"minimum": 1,
					"maximum": 8
				}
			},
			{
				"box": {
					"id": "fl-burst-p-3",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						570,
						1679,
						100,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend burst 3"
				}
			},
			{
				"box": {
					"id": "fl-pitch_mod-3",
					"maxclass": "dial",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						525,
						1707,
						30,
						30
					],
					"outlettype": [
						"int"
					],
					"parameter_enable": 0
				}
			},
			{
				"box": {
					"id": "fl-pitch_mod-p-3",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						560,
						1711,
						110,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend pitch_mod 3"
				}
			},
			{
				"box": {
					"id": "fl-vel_decay-3",
					"maxclass": "dial",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						525,
						1745,
						30,
						30
					],
					"outlettype": [
						"int"
					],
					"parameter_enable": 0
				}
			},
			{
				"box": {
					"id": "fl-vel_decay-p-3",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						560,
						1749,
						110,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend vel_decay 3"
				}
			},
			{
				"box": {
					"id": "fl-vl-4",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						675,
						1560,
						55,
						20
					],
					"text": "FAULT",
					"fontface": 1,
					"fontsize": 10.0
				}
			},
			{
				"box": {
					"id": "fl-subdivision-4",
					"maxclass": "umenu",
					"numinlets": 1,
					"numoutlets": 2,
					"patching_rect": [
						675,
						1578,
						75,
						20
					],
					"outlettype": [
						"int",
						""
					],
					"items": [
						"OFF",
						",",
						"1/32",
						",",
						"1/48",
						",",
						"1/64",
						",",
						"1/96"
					]
				}
			},
			{
				"box": {
					"id": "fl-subdivision-p-4",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						755,
						1578,
						65,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend subdivision 4"
				}
			},
			{
				"box": {
					"id": "fl-probability-4",
					"maxclass": "dial",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						675,
						1603,
						30,
						30
					],
					"outlettype": [
						"int"
					],
					"parameter_enable": 0
				}
			},
			{
				"box": {
					"id": "fl-probability-p-4",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						710,
						1607,
						110,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend probability 4"
				}
			},
			{
				"box": {
					"id": "fl-humanize-4",
					"maxclass": "dial",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						675,
						1641,
						30,
						30
					],
					"outlettype": [
						"int"
					],
					"parameter_enable": 0
				}
			},
			{
				"box": {
					"id": "fl-humanize-p-4",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						710,
						1645,
						110,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend humanize 4"
				}
			},
			{
				"box": {
					"id": "fl-burst-4",
					"maxclass": "number",
					"numinlets": 1,
					"numoutlets": 2,
					"patching_rect": [
						675,
						1679,
						40,
						22
					],
					"outlettype": [
						"int",
						"bang"
					],
					"minimum": 1,
					"maximum": 8
				}
			},
			{
				"box": {
					"id": "fl-burst-p-4",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						720,
						1679,
						100,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend burst 4"
				}
			},
			{
				"box": {
					"id": "fl-pitch_mod-4",
					"maxclass": "dial",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						675,
						1707,
						30,
						30
					],
					"outlettype": [
						"int"
					],
					"parameter_enable": 0
				}
			},
			{
				"box": {
					"id": "fl-pitch_mod-p-4",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						710,
						1711,
						110,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend pitch_mod 4"
				}
			},
			{
				"box": {
					"id": "fl-vel_decay-4",
					"maxclass": "dial",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						675,
						1745,
						30,
						30
					],
					"outlettype": [
						"int"
					],
					"parameter_enable": 0
				}
			},
			{
				"box": {
					"id": "fl-vel_decay-p-4",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						710,
						1749,
						110,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend vel_decay 4"
				}
			},
			{
				"box": {
					"id": "fl-vl-5",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						825,
						1560,
						55,
						20
					],
					"text": "HALO",
					"fontface": 1,
					"fontsize": 10.0
				}
			},
			{
				"box": {
					"id": "fl-subdivision-5",
					"maxclass": "umenu",
					"numinlets": 1,
					"numoutlets": 2,
					"patching_rect": [
						825,
						1578,
						75,
						20
					],
					"outlettype": [
						"int",
						""
					],
					"items": [
						"OFF",
						",",
						"1/32",
						",",
						"1/48",
						",",
						"1/64",
						",",
						"1/96"
					]
				}
			},
			{
				"box": {
					"id": "fl-subdivision-p-5",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						905,
						1578,
						65,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend subdivision 5"
				}
			},
			{
				"box": {
					"id": "fl-probability-5",
					"maxclass": "dial",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						825,
						1603,
						30,
						30
					],
					"outlettype": [
						"int"
					],
					"parameter_enable": 0
				}
			},
			{
				"box": {
					"id": "fl-probability-p-5",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						860,
						1607,
						110,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend probability 5"
				}
			},
			{
				"box": {
					"id": "fl-humanize-5",
					"maxclass": "dial",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						825,
						1641,
						30,
						30
					],
					"outlettype": [
						"int"
					],
					"parameter_enable": 0
				}
			},
			{
				"box": {
					"id": "fl-humanize-p-5",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						860,
						1645,
						110,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend humanize 5"
				}
			},
			{
				"box": {
					"id": "fl-burst-5",
					"maxclass": "number",
					"numinlets": 1,
					"numoutlets": 2,
					"patching_rect": [
						825,
						1679,
						40,
						22
					],
					"outlettype": [
						"int",
						"bang"
					],
					"minimum": 1,
					"maximum": 8
				}
			},
			{
				"box": {
					"id": "fl-burst-p-5",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						870,
						1679,
						100,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend burst 5"
				}
			},
			{
				"box": {
					"id": "fl-pitch_mod-5",
					"maxclass": "dial",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						825,
						1707,
						30,
						30
					],
					"outlettype": [
						"int"
					],
					"parameter_enable": 0
				}
			},
			{
				"box": {
					"id": "fl-pitch_mod-p-5",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						860,
						1711,
						110,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend pitch_mod 5"
				}
			},
			{
				"box": {
					"id": "fl-vel_decay-5",
					"maxclass": "dial",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						825,
						1745,
						30,
						30
					],
					"outlettype": [
						"int"
					],
					"parameter_enable": 0
				}
			},
			{
				"box": {
					"id": "fl-vel_decay-p-5",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						860,
						1749,
						110,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend vel_decay 5"
				}
			},
			{
				"box": {
					"id": "fl-sctl-0",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						75,
						1788,
						65,
						22
					],
					"text": "s fl_ctrl"
				}
			},
			{
				"box": {
					"id": "fl-sctl-1",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						225,
						1788,
						65,
						22
					],
					"text": "s fl_ctrl"
				}
			},
			{
				"box": {
					"id": "fl-sctl-2",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						375,
						1788,
						65,
						22
					],
					"text": "s fl_ctrl"
				}
			},
			{
				"box": {
					"id": "fl-sctl-3",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						525,
						1788,
						65,
						22
					],
					"text": "s fl_ctrl"
				}
			},
			{
				"box": {
					"id": "fl-sctl-4",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						675,
						1788,
						65,
						22
					],
					"text": "s fl_ctrl"
				}
			},
			{
				"box": {
					"id": "fl-sctl-5",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						825,
						1788,
						65,
						22
					],
					"text": "s fl_ctrl"
				}
			},
			{
				"box": {
					"id": "fl-r1",
					"maxclass": "newobj",
					"numinlets": 0,
					"numoutlets": 1,
					"patching_rect": [
						930,
						1470,
						70,
						22
					],
					"outlettype": [
						""
					],
					"text": "r fl_ctrl"
				}
			},
			{
				"box": {
					"id": "fl-r2",
					"maxclass": "newobj",
					"numinlets": 0,
					"numoutlets": 1,
					"patching_rect": [
						75,
						1818,
						70,
						22
					],
					"outlettype": [
						""
					],
					"text": "r fl_ctrl"
				}
			},
			{
				"box": {
					"id": "fl-km-notify",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						75,
						1843,
						140,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend flam_param"
				}
			},
			{
				"box": {
					"id": "sec-gr",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						30,
						1815,
						74,
						20
					],
					"text": "GROOVE",
					"fontface": 1,
					"fontsize": 14.0,
					"textcolor": [
						0.3,
						0.3,
						0.3,
						1.0
					]
				}
			},
			{
				"box": {
					"id": "gr-swing",
					"maxclass": "dial",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						75,
						1830,
						40,
						40
					],
					"outlettype": [
						"int"
					],
					"parameter_enable": 0
				}
			},
			{
				"box": {
					"id": "gr-swing-l",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						75,
						1872,
						50,
						20
					],
					"text": "SWING",
					"fontface": 1
				}
			},
			{
				"box": {
					"id": "gr-swing-p",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						120,
						1840,
						100,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend swing"
				}
			},
			{
				"box": {
					"id": "gr-master",
					"maxclass": "dial",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						225,
						1830,
						40,
						40
					],
					"outlettype": [
						"int"
					],
					"parameter_enable": 0
				}
			},
			{
				"box": {
					"id": "gr-master-l",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						225,
						1872,
						65,
						20
					],
					"text": "M.GROOVE",
					"fontface": 1
				}
			},
			{
				"box": {
					"id": "gr-master-p",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						270,
						1840,
						120,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend master_groove"
				}
			},
			{
				"box": {
					"id": "gr-vl-0",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						75,
						1900,
						55,
						20
					],
					"text": "MASS",
					"fontface": 1,
					"fontsize": 10.0
				}
			},
			{
				"box": {
					"id": "gr-off-0",
					"maxclass": "dial",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						75,
						1918,
						30,
						30
					],
					"outlettype": [
						"int"
					],
					"parameter_enable": 0
				}
			},
			{
				"box": {
					"id": "gr-def-0",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						110,
						1922,
						22,
						18
					],
					"outlettype": [
						""
					],
					"text": "64"
				}
			},
			{
				"box": {
					"id": "gr-off-p-0",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						110,
						1904,
						110,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend groove 0"
				}
			},
			{
				"box": {
					"id": "gr-vl-1",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						225,
						1900,
						55,
						20
					],
					"text": "VEIN",
					"fontface": 1,
					"fontsize": 10.0
				}
			},
			{
				"box": {
					"id": "gr-off-1",
					"maxclass": "dial",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						225,
						1918,
						30,
						30
					],
					"outlettype": [
						"int"
					],
					"parameter_enable": 0
				}
			},
			{
				"box": {
					"id": "gr-def-1",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						260,
						1922,
						22,
						18
					],
					"outlettype": [
						""
					],
					"text": "64"
				}
			},
			{
				"box": {
					"id": "gr-off-p-1",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						260,
						1904,
						110,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend groove 1"
				}
			},
			{
				"box": {
					"id": "gr-vl-2",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						375,
						1900,
						55,
						20
					],
					"text": "SHARD",
					"fontface": 1,
					"fontsize": 10.0
				}
			},
			{
				"box": {
					"id": "gr-off-2",
					"maxclass": "dial",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						375,
						1918,
						30,
						30
					],
					"outlettype": [
						"int"
					],
					"parameter_enable": 0
				}
			},
			{
				"box": {
					"id": "gr-def-2",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						410,
						1922,
						22,
						18
					],
					"outlettype": [
						""
					],
					"text": "64"
				}
			},
			{
				"box": {
					"id": "gr-off-p-2",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						410,
						1904,
						110,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend groove 2"
				}
			},
			{
				"box": {
					"id": "gr-vl-3",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						525,
						1900,
						55,
						20
					],
					"text": "HUSK",
					"fontface": 1,
					"fontsize": 10.0
				}
			},
			{
				"box": {
					"id": "gr-off-3",
					"maxclass": "dial",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						525,
						1918,
						30,
						30
					],
					"outlettype": [
						"int"
					],
					"parameter_enable": 0
				}
			},
			{
				"box": {
					"id": "gr-def-3",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						560,
						1922,
						22,
						18
					],
					"outlettype": [
						""
					],
					"text": "64"
				}
			},
			{
				"box": {
					"id": "gr-off-p-3",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						560,
						1904,
						110,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend groove 3"
				}
			},
			{
				"box": {
					"id": "gr-vl-4",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						675,
						1900,
						55,
						20
					],
					"text": "FAULT",
					"fontface": 1,
					"fontsize": 10.0
				}
			},
			{
				"box": {
					"id": "gr-off-4",
					"maxclass": "dial",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						675,
						1918,
						30,
						30
					],
					"outlettype": [
						"int"
					],
					"parameter_enable": 0
				}
			},
			{
				"box": {
					"id": "gr-def-4",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						710,
						1922,
						22,
						18
					],
					"outlettype": [
						""
					],
					"text": "64"
				}
			},
			{
				"box": {
					"id": "gr-off-p-4",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						710,
						1904,
						110,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend groove 4"
				}
			},
			{
				"box": {
					"id": "gr-vl-5",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						825,
						1900,
						55,
						20
					],
					"text": "HALO",
					"fontface": 1,
					"fontsize": 10.0
				}
			},
			{
				"box": {
					"id": "gr-off-5",
					"maxclass": "dial",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						825,
						1918,
						30,
						30
					],
					"outlettype": [
						"int"
					],
					"parameter_enable": 0
				}
			},
			{
				"box": {
					"id": "gr-def-5",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						860,
						1922,
						22,
						18
					],
					"outlettype": [
						""
					],
					"text": "64"
				}
			},
			{
				"box": {
					"id": "gr-off-p-5",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						860,
						1904,
						110,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend groove 5"
				}
			},
			{
				"box": {
					"id": "gr-hint",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						75,
						1955,
						400,
						20
					],
					"text": "Center=straight. Left=push back. Right=push forward."
				}
			},
			{
				"box": {
					"id": "sec-lfo",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						30,
						1995,
						110,
						20
					],
					"text": "LFO ENGINE",
					"fontface": 1,
					"fontsize": 14.0,
					"textcolor": [
						0.3,
						0.3,
						0.3,
						1.0
					]
				}
			},
			{
				"box": {
					"id": "lfo-js",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 2,
					"patching_rect": [
						75,
						2010,
						750,
						22
					],
					"outlettype": [
						"",
						""
					],
					"text": "js lfoengine.js"
				}
			},
			{
				"box": {
					"id": "lfo-g-rate",
					"maxclass": "dial",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						75,
						2040,
						30,
						30
					],
					"outlettype": [
						"int"
					],
					"parameter_enable": 0
				}
			},
			{
				"box": {
					"id": "lfo-g-rate-l",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						75,
						2072,
						35,
						20
					],
					"text": "RATE",
					"fontsize": 9.0
				}
			},
			{
				"box": {
					"id": "lfo-g-rate-p",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						110,
						2044,
						110,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend master_rate"
				}
			},
			{
				"box": {
					"id": "lfo-g-depth",
					"maxclass": "dial",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						225,
						2040,
						30,
						30
					],
					"outlettype": [
						"int"
					],
					"parameter_enable": 0
				}
			},
			{
				"box": {
					"id": "lfo-g-depth-l",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						225,
						2072,
						40,
						20
					],
					"text": "DEPTH",
					"fontsize": 9.0
				}
			},
			{
				"box": {
					"id": "lfo-g-depth-p",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						260,
						2044,
						120,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend master_depth"
				}
			},
			{
				"box": {
					"id": "lfo-g-K",
					"maxclass": "dial",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						390,
						2040,
						30,
						30
					],
					"outlettype": [
						"int"
					],
					"parameter_enable": 0
				}
			},
			{
				"box": {
					"id": "lfo-g-K-l",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						390,
						2072,
						45,
						20
					],
					"text": "COUPLE",
					"fontsize": 9.0
				}
			},
			{
				"box": {
					"id": "lfo-g-K-p",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						425,
						2044,
						100,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend coupling"
				}
			},
			{
				"box": {
					"id": "lfo-g-topo",
					"maxclass": "umenu",
					"numinlets": 1,
					"numoutlets": 2,
					"patching_rect": [
						540,
						2044,
						100,
						20
					],
					"outlettype": [
						"int",
						""
					],
					"items": [
						"All-to-all",
						",",
						"Legba",
						",",
						"Carrefour",
						",",
						"Ferraille",
						",",
						"Ogou",
						",",
						"Ring",
						",",
						"Marassa",
						",",
						"Damballah",
						",",
						"Erzulie",
						",",
						"Baron",
						",",
						"Simbi",
						",",
						"Ayizan",
						",",
						"Gran Bwa"
					]
				}
			},
			{
				"box": {
					"id": "lfo-g-topo-l",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						540,
						2066,
						60,
						20
					],
					"text": "TOPOLOGY",
					"fontsize": 9.0
				}
			},
			{
				"box": {
					"id": "lfo-g-topo-p",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						645,
						2044,
						100,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend topology"
				}
			},
			{
				"box": {
					"id": "lfo-g-rho",
					"maxclass": "dial",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						790,
						2040,
						30,
						30
					],
					"outlettype": [
						"int"
					],
					"parameter_enable": 0
				}
			},
			{
				"box": {
					"id": "lfo-g-rho-l",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						790,
						2072,
						40,
						20
					],
					"text": "CHAOS",
					"fontsize": 9.0
				}
			},
			{
				"box": {
					"id": "lfo-g-rho-p",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						825,
						2044,
						100,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend chaos_rho"
				}
			},
			{
				"box": {
					"id": "lfo-vl-0",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						75,
						2085,
						55,
						20
					],
					"text": "MASS",
					"fontface": 1,
					"fontsize": 10.0
				}
			},
			{
				"box": {
					"id": "lfo-rate-0",
					"maxclass": "dial",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						75,
						2103,
						30,
						30
					],
					"outlettype": [
						"int"
					],
					"parameter_enable": 0
				}
			},
			{
				"box": {
					"id": "lfo-rate-p-0",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						110,
						2107,
						110,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend lfo_rate 0"
				}
			},
			{
				"box": {
					"id": "lfo-depth-0",
					"maxclass": "dial",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						75,
						2141,
						30,
						30
					],
					"outlettype": [
						"int"
					],
					"parameter_enable": 0
				}
			},
			{
				"box": {
					"id": "lfo-depth-p-0",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						110,
						2145,
						110,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend lfo_depth 0"
				}
			},
			{
				"box": {
					"id": "lfo-shape-0",
					"maxclass": "umenu",
					"numinlets": 1,
					"numoutlets": 2,
					"patching_rect": [
						75,
						2179,
						100,
						20
					],
					"outlettype": [
						"int",
						""
					],
					"items": [
						"Sine",
						",",
						"Triangle",
						",",
						"Saw Up",
						",",
						"Saw Down",
						",",
						"Square",
						",",
						"S&H",
						",",
						"Lorenz X",
						",",
						"Lorenz Y",
						",",
						"Myombo 2",
						",",
						"Myombo 3",
						",",
						"Chased Chick",
						",",
						"Hunted Bird",
						",",
						"Lion Stom",
						",",
						"Ancestor"
					]
				}
			},
			{
				"box": {
					"id": "lfo-shape-p-0",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						180,
						2179,
						40,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend lfo_shape 0"
				}
			},
			{
				"box": {
					"id": "lfo-dest-0",
					"maxclass": "umenu",
					"numinlets": 1,
					"numoutlets": 2,
					"patching_rect": [
						75,
						2205,
						100,
						20
					],
					"outlettype": [
						"int",
						""
					],
					"items": [
						"OFF",
						",",
						"Pan",
						",",
						"Pitch",
						",",
						"Stress",
						",",
						"Bloom",
						",",
						"Decay",
						",",
						"Mist",
						",",
						"Heat",
						",",
						"Drift",
						",",
						"Density"
					]
				}
			},
			{
				"box": {
					"id": "lfo-dest-p-0",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						180,
						2205,
						40,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend lfo_dest 0"
				}
			},
			{
				"box": {
					"id": "lfo-vl-1",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						225,
						2085,
						55,
						20
					],
					"text": "VEIN",
					"fontface": 1,
					"fontsize": 10.0
				}
			},
			{
				"box": {
					"id": "lfo-rate-1",
					"maxclass": "dial",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						225,
						2103,
						30,
						30
					],
					"outlettype": [
						"int"
					],
					"parameter_enable": 0
				}
			},
			{
				"box": {
					"id": "lfo-rate-p-1",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						260,
						2107,
						110,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend lfo_rate 1"
				}
			},
			{
				"box": {
					"id": "lfo-depth-1",
					"maxclass": "dial",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						225,
						2141,
						30,
						30
					],
					"outlettype": [
						"int"
					],
					"parameter_enable": 0
				}
			},
			{
				"box": {
					"id": "lfo-depth-p-1",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						260,
						2145,
						110,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend lfo_depth 1"
				}
			},
			{
				"box": {
					"id": "lfo-shape-1",
					"maxclass": "umenu",
					"numinlets": 1,
					"numoutlets": 2,
					"patching_rect": [
						225,
						2179,
						100,
						20
					],
					"outlettype": [
						"int",
						""
					],
					"items": [
						"Sine",
						",",
						"Triangle",
						",",
						"Saw Up",
						",",
						"Saw Down",
						",",
						"Square",
						",",
						"S&H",
						",",
						"Lorenz X",
						",",
						"Lorenz Y",
						",",
						"Myombo 2",
						",",
						"Myombo 3",
						",",
						"Chased Chick",
						",",
						"Hunted Bird",
						",",
						"Lion Stom",
						",",
						"Ancestor"
					]
				}
			},
			{
				"box": {
					"id": "lfo-shape-p-1",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						330,
						2179,
						40,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend lfo_shape 1"
				}
			},
			{
				"box": {
					"id": "lfo-dest-1",
					"maxclass": "umenu",
					"numinlets": 1,
					"numoutlets": 2,
					"patching_rect": [
						225,
						2205,
						100,
						20
					],
					"outlettype": [
						"int",
						""
					],
					"items": [
						"OFF",
						",",
						"Pan",
						",",
						"Pitch",
						",",
						"Stress",
						",",
						"Bloom",
						",",
						"Decay",
						",",
						"Mist",
						",",
						"Heat",
						",",
						"Drift",
						",",
						"Density"
					]
				}
			},
			{
				"box": {
					"id": "lfo-dest-p-1",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						330,
						2205,
						40,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend lfo_dest 1"
				}
			},
			{
				"box": {
					"id": "lfo-vl-2",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						375,
						2085,
						55,
						20
					],
					"text": "SHARD",
					"fontface": 1,
					"fontsize": 10.0
				}
			},
			{
				"box": {
					"id": "lfo-rate-2",
					"maxclass": "dial",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						375,
						2103,
						30,
						30
					],
					"outlettype": [
						"int"
					],
					"parameter_enable": 0
				}
			},
			{
				"box": {
					"id": "lfo-rate-p-2",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						410,
						2107,
						110,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend lfo_rate 2"
				}
			},
			{
				"box": {
					"id": "lfo-depth-2",
					"maxclass": "dial",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						375,
						2141,
						30,
						30
					],
					"outlettype": [
						"int"
					],
					"parameter_enable": 0
				}
			},
			{
				"box": {
					"id": "lfo-depth-p-2",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						410,
						2145,
						110,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend lfo_depth 2"
				}
			},
			{
				"box": {
					"id": "lfo-shape-2",
					"maxclass": "umenu",
					"numinlets": 1,
					"numoutlets": 2,
					"patching_rect": [
						375,
						2179,
						100,
						20
					],
					"outlettype": [
						"int",
						""
					],
					"items": [
						"Sine",
						",",
						"Triangle",
						",",
						"Saw Up",
						",",
						"Saw Down",
						",",
						"Square",
						",",
						"S&H",
						",",
						"Lorenz X",
						",",
						"Lorenz Y",
						",",
						"Myombo 2",
						",",
						"Myombo 3",
						",",
						"Chased Chick",
						",",
						"Hunted Bird",
						",",
						"Lion Stom",
						",",
						"Ancestor"
					]
				}
			},
			{
				"box": {
					"id": "lfo-shape-p-2",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						480,
						2179,
						40,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend lfo_shape 2"
				}
			},
			{
				"box": {
					"id": "lfo-dest-2",
					"maxclass": "umenu",
					"numinlets": 1,
					"numoutlets": 2,
					"patching_rect": [
						375,
						2205,
						100,
						20
					],
					"outlettype": [
						"int",
						""
					],
					"items": [
						"OFF",
						",",
						"Pan",
						",",
						"Pitch",
						",",
						"Stress",
						",",
						"Bloom",
						",",
						"Decay",
						",",
						"Mist",
						",",
						"Heat",
						",",
						"Drift",
						",",
						"Density"
					]
				}
			},
			{
				"box": {
					"id": "lfo-dest-p-2",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						480,
						2205,
						40,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend lfo_dest 2"
				}
			},
			{
				"box": {
					"id": "lfo-vl-3",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						525,
						2085,
						55,
						20
					],
					"text": "HUSK",
					"fontface": 1,
					"fontsize": 10.0
				}
			},
			{
				"box": {
					"id": "lfo-rate-3",
					"maxclass": "dial",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						525,
						2103,
						30,
						30
					],
					"outlettype": [
						"int"
					],
					"parameter_enable": 0
				}
			},
			{
				"box": {
					"id": "lfo-rate-p-3",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						560,
						2107,
						110,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend lfo_rate 3"
				}
			},
			{
				"box": {
					"id": "lfo-depth-3",
					"maxclass": "dial",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						525,
						2141,
						30,
						30
					],
					"outlettype": [
						"int"
					],
					"parameter_enable": 0
				}
			},
			{
				"box": {
					"id": "lfo-depth-p-3",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						560,
						2145,
						110,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend lfo_depth 3"
				}
			},
			{
				"box": {
					"id": "lfo-shape-3",
					"maxclass": "umenu",
					"numinlets": 1,
					"numoutlets": 2,
					"patching_rect": [
						525,
						2179,
						100,
						20
					],
					"outlettype": [
						"int",
						""
					],
					"items": [
						"Sine",
						",",
						"Triangle",
						",",
						"Saw Up",
						",",
						"Saw Down",
						",",
						"Square",
						",",
						"S&H",
						",",
						"Lorenz X",
						",",
						"Lorenz Y",
						",",
						"Myombo 2",
						",",
						"Myombo 3",
						",",
						"Chased Chick",
						",",
						"Hunted Bird",
						",",
						"Lion Stom",
						",",
						"Ancestor"
					]
				}
			},
			{
				"box": {
					"id": "lfo-shape-p-3",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						630,
						2179,
						40,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend lfo_shape 3"
				}
			},
			{
				"box": {
					"id": "lfo-dest-3",
					"maxclass": "umenu",
					"numinlets": 1,
					"numoutlets": 2,
					"patching_rect": [
						525,
						2205,
						100,
						20
					],
					"outlettype": [
						"int",
						""
					],
					"items": [
						"OFF",
						",",
						"Pan",
						",",
						"Pitch",
						",",
						"Stress",
						",",
						"Bloom",
						",",
						"Decay",
						",",
						"Mist",
						",",
						"Heat",
						",",
						"Drift",
						",",
						"Density"
					]
				}
			},
			{
				"box": {
					"id": "lfo-dest-p-3",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						630,
						2205,
						40,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend lfo_dest 3"
				}
			},
			{
				"box": {
					"id": "lfo-vl-4",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						675,
						2085,
						55,
						20
					],
					"text": "FAULT",
					"fontface": 1,
					"fontsize": 10.0
				}
			},
			{
				"box": {
					"id": "lfo-rate-4",
					"maxclass": "dial",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						675,
						2103,
						30,
						30
					],
					"outlettype": [
						"int"
					],
					"parameter_enable": 0
				}
			},
			{
				"box": {
					"id": "lfo-rate-p-4",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						710,
						2107,
						110,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend lfo_rate 4"
				}
			},
			{
				"box": {
					"id": "lfo-depth-4",
					"maxclass": "dial",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						675,
						2141,
						30,
						30
					],
					"outlettype": [
						"int"
					],
					"parameter_enable": 0
				}
			},
			{
				"box": {
					"id": "lfo-depth-p-4",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						710,
						2145,
						110,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend lfo_depth 4"
				}
			},
			{
				"box": {
					"id": "lfo-shape-4",
					"maxclass": "umenu",
					"numinlets": 1,
					"numoutlets": 2,
					"patching_rect": [
						675,
						2179,
						100,
						20
					],
					"outlettype": [
						"int",
						""
					],
					"items": [
						"Sine",
						",",
						"Triangle",
						",",
						"Saw Up",
						",",
						"Saw Down",
						",",
						"Square",
						",",
						"S&H",
						",",
						"Lorenz X",
						",",
						"Lorenz Y",
						",",
						"Myombo 2",
						",",
						"Myombo 3",
						",",
						"Chased Chick",
						",",
						"Hunted Bird",
						",",
						"Lion Stom",
						",",
						"Ancestor"
					]
				}
			},
			{
				"box": {
					"id": "lfo-shape-p-4",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						780,
						2179,
						40,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend lfo_shape 4"
				}
			},
			{
				"box": {
					"id": "lfo-dest-4",
					"maxclass": "umenu",
					"numinlets": 1,
					"numoutlets": 2,
					"patching_rect": [
						675,
						2205,
						100,
						20
					],
					"outlettype": [
						"int",
						""
					],
					"items": [
						"OFF",
						",",
						"Pan",
						",",
						"Pitch",
						",",
						"Stress",
						",",
						"Bloom",
						",",
						"Decay",
						",",
						"Mist",
						",",
						"Heat",
						",",
						"Drift",
						",",
						"Density"
					]
				}
			},
			{
				"box": {
					"id": "lfo-dest-p-4",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						780,
						2205,
						40,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend lfo_dest 4"
				}
			},
			{
				"box": {
					"id": "lfo-vl-5",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						825,
						2085,
						55,
						20
					],
					"text": "HALO",
					"fontface": 1,
					"fontsize": 10.0
				}
			},
			{
				"box": {
					"id": "lfo-rate-5",
					"maxclass": "dial",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						825,
						2103,
						30,
						30
					],
					"outlettype": [
						"int"
					],
					"parameter_enable": 0
				}
			},
			{
				"box": {
					"id": "lfo-rate-p-5",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						860,
						2107,
						110,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend lfo_rate 5"
				}
			},
			{
				"box": {
					"id": "lfo-depth-5",
					"maxclass": "dial",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						825,
						2141,
						30,
						30
					],
					"outlettype": [
						"int"
					],
					"parameter_enable": 0
				}
			},
			{
				"box": {
					"id": "lfo-depth-p-5",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						860,
						2145,
						110,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend lfo_depth 5"
				}
			},
			{
				"box": {
					"id": "lfo-shape-5",
					"maxclass": "umenu",
					"numinlets": 1,
					"numoutlets": 2,
					"patching_rect": [
						825,
						2179,
						100,
						20
					],
					"outlettype": [
						"int",
						""
					],
					"items": [
						"Sine",
						",",
						"Triangle",
						",",
						"Saw Up",
						",",
						"Saw Down",
						",",
						"Square",
						",",
						"S&H",
						",",
						"Lorenz X",
						",",
						"Lorenz Y",
						",",
						"Myombo 2",
						",",
						"Myombo 3",
						",",
						"Chased Chick",
						",",
						"Hunted Bird",
						",",
						"Lion Stom",
						",",
						"Ancestor"
					]
				}
			},
			{
				"box": {
					"id": "lfo-shape-p-5",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						930,
						2179,
						40,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend lfo_shape 5"
				}
			},
			{
				"box": {
					"id": "lfo-dest-5",
					"maxclass": "umenu",
					"numinlets": 1,
					"numoutlets": 2,
					"patching_rect": [
						825,
						2205,
						100,
						20
					],
					"outlettype": [
						"int",
						""
					],
					"items": [
						"OFF",
						",",
						"Pan",
						",",
						"Pitch",
						",",
						"Stress",
						",",
						"Bloom",
						",",
						"Decay",
						",",
						"Mist",
						",",
						"Heat",
						",",
						"Drift",
						",",
						"Density"
					]
				}
			},
			{
				"box": {
					"id": "lfo-dest-p-5",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						930,
						2205,
						40,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend lfo_dest 5"
				}
			},
			{
				"box": {
					"id": "lfo-lbl-rate",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						15,
						2107,
						40,
						20
					],
					"text": "RATE",
					"fontsize": 9.0
				}
			},
			{
				"box": {
					"id": "lfo-lbl-depth",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						15,
						2145,
						45,
						20
					],
					"text": "DEPTH",
					"fontsize": 9.0
				}
			},
			{
				"box": {
					"id": "lfo-lbl-shape",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						15,
						2179,
						45,
						20
					],
					"text": "SHAPE",
					"fontsize": 9.0
				}
			},
			{
				"box": {
					"id": "lfo-lbl-dest",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						15,
						2205,
						40,
						20
					],
					"text": "DEST",
					"fontsize": 9.0
				}
			},
			{
				"box": {
					"id": "sec-km",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						30,
						2405,
						56,
						20
					],
					"text": "KITS",
					"fontface": 1,
					"fontsize": 14.0,
					"textcolor": [
						0.3,
						0.3,
						0.3,
						1.0
					]
				}
			},
			{
				"box": {
					"id": "km-js",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 8,
					"patching_rect": [
						75,
						2420,
						750,
						22
					],
					"outlettype": [
						"",
						"",
						"",
						"",
						"",
						"",
						"",
						""
					],
					"text": "js kitmanager.js"
				}
			},
			{
				"box": {
					"id": "km-init",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						855,
						2420,
						70,
						22
					],
					"outlettype": [
						""
					],
					"text": "init_defaults"
				}
			},
			{
				"box": {
					"id": "km-lvl-route",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 7,
					"patching_rect": [
						75,
						2450,
						250,
						22
					],
					"outlettype": [
						"",
						"",
						"",
						"",
						"",
						"",
						""
					],
					"text": "route 0 1 2 3 4 5"
				}
			},
			{
				"box": {
					"id": "km-lvl-snd-0",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						75,
						2475,
						85,
						22
					],
					"text": "send v0_level"
				}
			},
			{
				"box": {
					"id": "km-lvl-snd-1",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						195,
						2475,
						85,
						22
					],
					"text": "send v1_level"
				}
			},
			{
				"box": {
					"id": "km-lvl-snd-2",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						315,
						2475,
						85,
						22
					],
					"text": "send v2_level"
				}
			},
			{
				"box": {
					"id": "km-lvl-snd-3",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						435,
						2475,
						85,
						22
					],
					"text": "send v3_level"
				}
			},
			{
				"box": {
					"id": "km-lvl-snd-4",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						555,
						2475,
						85,
						22
					],
					"text": "send v4_level"
				}
			},
			{
				"box": {
					"id": "km-lvl-snd-5",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						675,
						2475,
						85,
						22
					],
					"text": "send v5_level"
				}
			},
			{
				"box": {
					"id": "km-pcell",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						75,
						2450,
						120,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend pattern_cell"
				}
			},
			{
				"box": {
					"id": "km-len-0",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						75,
						2500,
						130,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend voice_length 0"
				}
			},
			{
				"box": {
					"id": "km-len-1",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						195,
						2500,
						130,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend voice_length 1"
				}
			},
			{
				"box": {
					"id": "km-len-2",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						315,
						2500,
						130,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend voice_length 2"
				}
			},
			{
				"box": {
					"id": "km-len-3",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						435,
						2500,
						130,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend voice_length 3"
				}
			},
			{
				"box": {
					"id": "km-len-4",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						555,
						2500,
						130,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend voice_length 4"
				}
			},
			{
				"box": {
					"id": "km-len-5",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						675,
						2500,
						130,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend voice_length 5"
				}
			},
			{
				"box": {
					"id": "km-sv-lbl",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						75,
						2530,
						45,
						20
					],
					"text": "SAVE:",
					"fontface": 1
				}
			},
			{
				"box": {
					"id": "km-ld-lbl",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						75,
						2560,
						45,
						20
					],
					"text": "LOAD:",
					"fontface": 1
				}
			},
			{
				"box": {
					"id": "km-sv-0",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						125,
						2530,
						45,
						22
					],
					"outlettype": [
						""
					],
					"text": "save 0"
				}
			},
			{
				"box": {
					"id": "km-nm-0",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						173,
						2530,
						50,
						20
					],
					"text": "---",
					"fontsize": 10.0
				}
			},
			{
				"box": {
					"id": "km-ld-0",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						125,
						2560,
						45,
						22
					],
					"outlettype": [
						""
					],
					"text": "load 0"
				}
			},
			{
				"box": {
					"id": "km-sv-1",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						230,
						2530,
						45,
						22
					],
					"outlettype": [
						""
					],
					"text": "save 1"
				}
			},
			{
				"box": {
					"id": "km-nm-1",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						278,
						2530,
						50,
						20
					],
					"text": "---",
					"fontsize": 10.0
				}
			},
			{
				"box": {
					"id": "km-ld-1",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						230,
						2560,
						45,
						22
					],
					"outlettype": [
						""
					],
					"text": "load 1"
				}
			},
			{
				"box": {
					"id": "km-sv-2",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						335,
						2530,
						45,
						22
					],
					"outlettype": [
						""
					],
					"text": "save 2"
				}
			},
			{
				"box": {
					"id": "km-nm-2",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						383,
						2530,
						50,
						20
					],
					"text": "---",
					"fontsize": 10.0
				}
			},
			{
				"box": {
					"id": "km-ld-2",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						335,
						2560,
						45,
						22
					],
					"outlettype": [
						""
					],
					"text": "load 2"
				}
			},
			{
				"box": {
					"id": "km-sv-3",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						440,
						2530,
						45,
						22
					],
					"outlettype": [
						""
					],
					"text": "save 3"
				}
			},
			{
				"box": {
					"id": "km-nm-3",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						488,
						2530,
						50,
						20
					],
					"text": "---",
					"fontsize": 10.0
				}
			},
			{
				"box": {
					"id": "km-ld-3",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						440,
						2560,
						45,
						22
					],
					"outlettype": [
						""
					],
					"text": "load 3"
				}
			},
			{
				"box": {
					"id": "km-sv-4",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						545,
						2530,
						45,
						22
					],
					"outlettype": [
						""
					],
					"text": "save 4"
				}
			},
			{
				"box": {
					"id": "km-nm-4",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						593,
						2530,
						50,
						20
					],
					"text": "---",
					"fontsize": 10.0
				}
			},
			{
				"box": {
					"id": "km-ld-4",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						545,
						2560,
						45,
						22
					],
					"outlettype": [
						""
					],
					"text": "load 4"
				}
			},
			{
				"box": {
					"id": "km-sv-5",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						650,
						2530,
						45,
						22
					],
					"outlettype": [
						""
					],
					"text": "save 5"
				}
			},
			{
				"box": {
					"id": "km-nm-5",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						698,
						2530,
						50,
						20
					],
					"text": "---",
					"fontsize": 10.0
				}
			},
			{
				"box": {
					"id": "km-ld-5",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						650,
						2560,
						45,
						22
					],
					"outlettype": [
						""
					],
					"text": "load 5"
				}
			},
			{
				"box": {
					"id": "km-sv-6",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						755,
						2530,
						45,
						22
					],
					"outlettype": [
						""
					],
					"text": "save 6"
				}
			},
			{
				"box": {
					"id": "km-nm-6",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						803,
						2530,
						50,
						20
					],
					"text": "---",
					"fontsize": 10.0
				}
			},
			{
				"box": {
					"id": "km-ld-6",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						755,
						2560,
						45,
						22
					],
					"outlettype": [
						""
					],
					"text": "load 6"
				}
			},
			{
				"box": {
					"id": "km-sv-7",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						860,
						2530,
						45,
						22
					],
					"outlettype": [
						""
					],
					"text": "save 7"
				}
			},
			{
				"box": {
					"id": "km-nm-7",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						908,
						2530,
						50,
						20
					],
					"text": "---",
					"fontsize": 10.0
				}
			},
			{
				"box": {
					"id": "km-ld-7",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						860,
						2560,
						45,
						22
					],
					"outlettype": [
						""
					],
					"text": "load 7"
				}
			},
			{
				"box": {
					"id": "km-status-route",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 3,
					"patching_rect": [
						75,
						2590,
						200,
						22
					],
					"outlettype": [
						"",
						"",
						""
					],
					"text": "route status kit_name"
				}
			},
			{
				"box": {
					"id": "km-status",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						285,
						2590,
						300,
						20
					],
					"text": "",
					"fontsize": 11.0
				}
			},
			{
				"box": {
					"id": "sec-mi",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						30,
						2655,
						110,
						20
					],
					"text": "MIDI INPUT",
					"fontface": 1,
					"fontsize": 14.0,
					"textcolor": [
						0.3,
						0.3,
						0.3,
						1.0
					]
				}
			},
			{
				"box": {
					"id": "midi-in",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 3,
					"patching_rect": [
						75,
						2670,
						45,
						22
					],
					"outlettype": [
						"int",
						"int",
						"int"
					],
					"text": "notein"
				}
			},
			{
				"box": {
					"id": "midi-strip",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 2,
					"patching_rect": [
						75,
						2700,
						60,
						22
					],
					"outlettype": [
						"int",
						"int"
					],
					"text": "stripnote"
				}
			},
			{
				"box": {
					"id": "midi-sel",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 7,
					"patching_rect": [
						75,
						2730,
						160,
						22
					],
					"outlettype": [
						"bang",
						"bang",
						"bang",
						"bang",
						"bang",
						"bang",
						""
					],
					"text": "select 36 38 40 41 43 45"
				}
			},
			{
				"box": {
					"id": "mt-0",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						255,
						2730,
						75,
						22
					],
					"text": "send v0_trig"
				}
			},
			{
				"box": {
					"id": "mt-1",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						375,
						2730,
						75,
						22
					],
					"text": "send v1_trig"
				}
			},
			{
				"box": {
					"id": "mt-2",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						495,
						2730,
						75,
						22
					],
					"text": "send v2_trig"
				}
			},
			{
				"box": {
					"id": "mt-3",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						615,
						2730,
						75,
						22
					],
					"text": "send v3_trig"
				}
			},
			{
				"box": {
					"id": "mt-4",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						735,
						2730,
						75,
						22
					],
					"text": "send v4_trig"
				}
			},
			{
				"box": {
					"id": "mt-5",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						855,
						2730,
						75,
						22
					],
					"text": "send v5_trig"
				}
			},
			{
				"box": {
					"id": "vt-0",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						135,
						605,
						85,
						22
					],
					"outlettype": [
						"bang"
					],
					"text": "receive v0_trig"
				}
			},
			{
				"box": {
					"id": "vt-1",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						285,
						605,
						85,
						22
					],
					"outlettype": [
						"bang"
					],
					"text": "receive v1_trig"
				}
			},
			{
				"box": {
					"id": "vt-2",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						435,
						605,
						85,
						22
					],
					"outlettype": [
						"bang"
					],
					"text": "receive v2_trig"
				}
			},
			{
				"box": {
					"id": "vt-3",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						585,
						605,
						85,
						22
					],
					"outlettype": [
						"bang"
					],
					"text": "receive v3_trig"
				}
			},
			{
				"box": {
					"id": "vt-4",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						735,
						605,
						85,
						22
					],
					"outlettype": [
						"bang"
					],
					"text": "receive v4_trig"
				}
			},
			{
				"box": {
					"id": "vt-5",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						885,
						605,
						85,
						22
					],
					"outlettype": [
						"bang"
					],
					"text": "receive v5_trig"
				}
			},
			{
				"box": {
					"id": "midi-hint",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						75,
						2760,
						420,
						20
					],
					"text": "C2=Mass  D2=Vein  E2=Shard  F2=Husk  G2=Fault  A2=Halo"
				}
			},
			{
				"box": {
					"id": "h1",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						75,
						2790,
						400,
						20
					],
					"text": "Click grid to edit patterns. Toggle PLAY to start."
				}
			},
			{
				"box": {
					"id": "h2",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						75,
						2808,
						400,
						20
					],
					"text": "Repeated hits build pressure. Silence cools down."
				}
			},
			{
				"box": {
					"id": "h3",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						75,
						2826,
						450,
						20
					],
					"text": "Select voice tab to edit macros. MIDI pads trigger voices."
				}
			},
			{
				"box": {
					"id": "p-title",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						-900,
						-900,
						200,
						15
					],
					"text": "Maud",
					"presentation": 1,
					"presentation_rect": [
						30,
						24,
						200,
						15
					],
					"textcolor": [
						0.91,
						0.91,
						0.91,
						1.0
					],
					"fontsize": 26,
					"fontface": 0
				}
			},
			{
				"box": {
					"id": "p-sub",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						-900,
						-900,
						240,
						15
					],
					"text": "Six-voice polymetric groovebox",
					"presentation": 1,
					"presentation_rect": [
						30,
						58,
						240,
						15
					],
					"textcolor": [
						0.42,
						0.42,
						0.42,
						1.0
					],
					"fontsize": 11,
					"fontface": 0
				}
			},
			{
				"box": {
					"id": "p-bpm-l",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						-900,
						-900,
						60,
						15
					],
					"text": "Tempo",
					"presentation": 1,
					"presentation_rect": [
						300,
						28,
						60,
						15
					],
					"textcolor": [
						0.42,
						0.42,
						0.42,
						1.0
					],
					"fontsize": 11,
					"fontface": 0
				}
			},
			{
				"box": {
					"id": "p-div-l",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						-900,
						-900,
						60,
						15
					],
					"text": "Division",
					"presentation": 1,
					"presentation_rect": [
						374,
						28,
						60,
						15
					],
					"textcolor": [
						0.42,
						0.42,
						0.42,
						1.0
					],
					"fontsize": 11,
					"fontface": 0
				}
			},
			{
				"box": {
					"id": "p-play-l",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						-900,
						-900,
						40,
						15
					],
					"text": "Play",
					"presentation": 1,
					"presentation_rect": [
						460,
						28,
						40,
						15
					],
					"textcolor": [
						0.42,
						0.42,
						0.42,
						1.0
					],
					"fontsize": 11,
					"fontface": 0
				}
			},
			{
				"box": {
					"id": "p-t-l",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						-900,
						-900,
						180,
						15
					],
					"text": "Step / best / worst, ms",
					"presentation": 1,
					"presentation_rect": [
						530,
						28,
						180,
						15
					],
					"textcolor": [
						0.42,
						0.42,
						0.42,
						1.0
					],
					"fontsize": 11,
					"fontface": 0
				}
			},
			{
				"box": {
					"id": "p-nq-l",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						-900,
						-900,
						120,
						15
					],
					"text": "Native sequencer",
					"presentation": 1,
					"presentation_rect": [
						770,
						28,
						120,
						15
					],
					"textcolor": [
						0.42,
						0.42,
						0.42,
						1.0
					],
					"fontsize": 11,
					"fontface": 0
				}
			},
			{
				"box": {
					"id": "p-au-l",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						-900,
						-900,
						60,
						15
					],
					"text": "Audio",
					"presentation": 1,
					"presentation_rect": [
						890,
						28,
						60,
						15
					],
					"textcolor": [
						0.42,
						0.42,
						0.42,
						1.0
					],
					"fontsize": 11,
					"fontface": 0
				}
			},
			{
				"box": {
					"id": "p-r1",
					"maxclass": "panel",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						-900,
						-900,
						1120,
						1
					],
					"presentation": 1,
					"presentation_rect": [
						30,
						88,
						1120,
						1
					],
					"bgfillcolor_type": "color",
					"bgfillcolor_color": [
						0,
						0,
						0,
						0
					],
					"border": 1,
					"bordercolor": [
						1,
						1,
						1,
						0.07
					],
					"rounded": 0
				}
			},
			{
				"box": {
					"id": "p-seq-l",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						-900,
						-900,
						200,
						15
					],
					"text": "Sequencer",
					"presentation": 1,
					"presentation_rect": [
						30,
						104,
						200,
						15
					],
					"textcolor": [
						0.91,
						0.91,
						0.91,
						1.0
					],
					"fontsize": 13,
					"fontface": 0
				}
			},
			{
				"box": {
					"id": "p-vn-0",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						-900,
						-900,
						86,
						15
					],
					"text": "MASS",
					"presentation": 1,
					"presentation_rect": [
						30,
						150,
						86,
						15
					],
					"textcolor": [
						0.91,
						0.91,
						0.91,
						1.0
					],
					"fontsize": 11,
					"fontface": 0
				}
			},
			{
				"box": {
					"id": "p-vn-1",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						-900,
						-900,
						86,
						15
					],
					"text": "VEIN",
					"presentation": 1,
					"presentation_rect": [
						30,
						175,
						86,
						15
					],
					"textcolor": [
						0.91,
						0.91,
						0.91,
						1.0
					],
					"fontsize": 11,
					"fontface": 0
				}
			},
			{
				"box": {
					"id": "p-vn-2",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						-900,
						-900,
						86,
						15
					],
					"text": "SHARD",
					"presentation": 1,
					"presentation_rect": [
						30,
						200,
						86,
						15
					],
					"textcolor": [
						0.91,
						0.91,
						0.91,
						1.0
					],
					"fontsize": 11,
					"fontface": 0
				}
			},
			{
				"box": {
					"id": "p-vn-3",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						-900,
						-900,
						86,
						15
					],
					"text": "HUSK",
					"presentation": 1,
					"presentation_rect": [
						30,
						225,
						86,
						15
					],
					"textcolor": [
						0.91,
						0.91,
						0.91,
						1.0
					],
					"fontsize": 11,
					"fontface": 0
				}
			},
			{
				"box": {
					"id": "p-vn-4",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						-900,
						-900,
						86,
						15
					],
					"text": "FAULT",
					"presentation": 1,
					"presentation_rect": [
						30,
						250,
						86,
						15
					],
					"textcolor": [
						0.91,
						0.91,
						0.91,
						1.0
					],
					"fontsize": 11,
					"fontface": 0
				}
			},
			{
				"box": {
					"id": "p-vn-5",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						-900,
						-900,
						86,
						15
					],
					"text": "HALO",
					"presentation": 1,
					"presentation_rect": [
						30,
						275,
						86,
						15
					],
					"textcolor": [
						0.91,
						0.91,
						0.91,
						1.0
					],
					"fontsize": 11,
					"fontface": 0
				}
			},
			{
				"box": {
					"id": "p-len-l",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						-900,
						-900,
						60,
						15
					],
					"text": "Length",
					"presentation": 1,
					"presentation_rect": [
						914,
						126,
						60,
						15
					],
					"textcolor": [
						0.42,
						0.42,
						0.42,
						1.0
					],
					"fontsize": 11,
					"fontface": 0
				}
			},
			{
				"box": {
					"id": "p-r2",
					"maxclass": "panel",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						-900,
						-900,
						1120,
						1
					],
					"presentation": 1,
					"presentation_rect": [
						30,
						312,
						1120,
						1
					],
					"bgfillcolor_type": "color",
					"bgfillcolor_color": [
						0,
						0,
						0,
						0
					],
					"border": 1,
					"bordercolor": [
						1,
						1,
						1,
						0.07
					],
					"rounded": 0
				}
			},
			{
				"box": {
					"id": "p-v-l",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						-900,
						-900,
						200,
						15
					],
					"text": "Voice",
					"presentation": 1,
					"presentation_rect": [
						30,
						310,
						200,
						15
					],
					"textcolor": [
						0.91,
						0.91,
						0.91,
						1.0
					],
					"fontsize": 13,
					"fontface": 0
				}
			},
			{
				"box": {
					"id": "p-dl-0",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						-900,
						-900,
						60,
						15
					],
					"text": "Stress",
					"presentation": 1,
					"presentation_rect": [
						24,
						426,
						60,
						15
					],
					"textcolor": [
						0.42,
						0.42,
						0.42,
						1.0
					],
					"fontsize": 10,
					"fontface": 0
				}
			},
			{
				"box": {
					"id": "p-dl-1",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						-900,
						-900,
						60,
						15
					],
					"text": "Bloom",
					"presentation": 1,
					"presentation_rect": [
						120,
						426,
						60,
						15
					],
					"textcolor": [
						0.42,
						0.42,
						0.42,
						1.0
					],
					"fontsize": 10,
					"fontface": 0
				}
			},
			{
				"box": {
					"id": "p-dl-2",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						-900,
						-900,
						60,
						15
					],
					"text": "Scar",
					"presentation": 1,
					"presentation_rect": [
						216,
						426,
						60,
						15
					],
					"textcolor": [
						0.42,
						0.42,
						0.42,
						1.0
					],
					"fontsize": 10,
					"fontface": 0
				}
			},
			{
				"box": {
					"id": "p-dl-3",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						-900,
						-900,
						60,
						15
					],
					"text": "Weight",
					"presentation": 1,
					"presentation_rect": [
						312,
						426,
						60,
						15
					],
					"textcolor": [
						0.42,
						0.42,
						0.42,
						1.0
					],
					"fontsize": 10,
					"fontface": 0
				}
			},
			{
				"box": {
					"id": "p-dl-4",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						-900,
						-900,
						60,
						15
					],
					"text": "Mist",
					"presentation": 1,
					"presentation_rect": [
						408,
						426,
						60,
						15
					],
					"textcolor": [
						0.42,
						0.42,
						0.42,
						1.0
					],
					"fontsize": 10,
					"fontface": 0
				}
			},
			{
				"box": {
					"id": "p-dl-5",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						-900,
						-900,
						60,
						15
					],
					"text": "Heat",
					"presentation": 1,
					"presentation_rect": [
						504,
						426,
						60,
						15
					],
					"textcolor": [
						0.42,
						0.42,
						0.42,
						1.0
					],
					"fontsize": 10,
					"fontface": 0
				}
			},
			{
				"box": {
					"id": "p-dl-6",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						-900,
						-900,
						60,
						15
					],
					"text": "Drift",
					"presentation": 1,
					"presentation_rect": [
						600,
						426,
						60,
						15
					],
					"textcolor": [
						0.42,
						0.42,
						0.42,
						1.0
					],
					"fontsize": 10,
					"fontface": 0
				}
			},
			{
				"box": {
					"id": "p-dl-7",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						-900,
						-900,
						60,
						15
					],
					"text": "Density",
					"presentation": 1,
					"presentation_rect": [
						24,
						508,
						60,
						15
					],
					"textcolor": [
						0.42,
						0.42,
						0.42,
						1.0
					],
					"fontsize": 10,
					"fontface": 0
				}
			},
			{
				"box": {
					"id": "p-dl-8",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						-900,
						-900,
						60,
						15
					],
					"text": "Pitch",
					"presentation": 1,
					"presentation_rect": [
						120,
						508,
						60,
						15
					],
					"textcolor": [
						0.42,
						0.42,
						0.42,
						1.0
					],
					"fontsize": 10,
					"fontface": 0
				}
			},
			{
				"box": {
					"id": "p-dl-9",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						-900,
						-900,
						60,
						15
					],
					"text": "Decay",
					"presentation": 1,
					"presentation_rect": [
						216,
						508,
						60,
						15
					],
					"textcolor": [
						0.42,
						0.42,
						0.42,
						1.0
					],
					"fontsize": 10,
					"fontface": 0
				}
			},
			{
				"box": {
					"id": "p-dl-10",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						-900,
						-900,
						60,
						15
					],
					"text": "Exciter",
					"presentation": 1,
					"presentation_rect": [
						312,
						508,
						60,
						15
					],
					"textcolor": [
						0.42,
						0.42,
						0.42,
						1.0
					],
					"fontsize": 10,
					"fontface": 0
				}
			},
			{
				"box": {
					"id": "p-dl-11",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						-900,
						-900,
						60,
						15
					],
					"text": "Body",
					"presentation": 1,
					"presentation_rect": [
						408,
						508,
						60,
						15
					],
					"textcolor": [
						0.42,
						0.42,
						0.42,
						1.0
					],
					"fontsize": 10,
					"fontface": 0
				}
			},
			{
				"box": {
					"id": "p-dl-12",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						-900,
						-900,
						60,
						15
					],
					"text": "Pan",
					"presentation": 1,
					"presentation_rect": [
						504,
						508,
						60,
						15
					],
					"textcolor": [
						0.42,
						0.42,
						0.42,
						1.0
					],
					"fontsize": 10,
					"fontface": 0
				}
			},
			{
				"box": {
					"id": "p-r3",
					"maxclass": "panel",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						-900,
						-900,
						1120,
						1
					],
					"presentation": 1,
					"presentation_rect": [
						30,
						550,
						1120,
						1
					],
					"bgfillcolor_type": "color",
					"bgfillcolor_color": [
						0,
						0,
						0,
						0
					],
					"border": 1,
					"bordercolor": [
						1,
						1,
						1,
						0.07
					],
					"rounded": 0
				}
			},
			{
				"box": {
					"id": "p-mx-l",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						-900,
						-900,
						200,
						15
					],
					"text": "Mixer",
					"presentation": 1,
					"presentation_rect": [
						30,
						548,
						200,
						15
					],
					"textcolor": [
						0.91,
						0.91,
						0.91,
						1.0
					],
					"fontsize": 13,
					"fontface": 0
				}
			},
			{
				"box": {
					"id": "p-ml-0",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						-900,
						-900,
						80,
						15
					],
					"text": "MASS",
					"presentation": 1,
					"presentation_rect": [
						30,
						596,
						80,
						15
					],
					"textcolor": [
						0.42,
						0.42,
						0.42,
						1.0
					],
					"fontsize": 10,
					"fontface": 0
				}
			},
			{
				"box": {
					"id": "p-ml-1",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						-900,
						-900,
						80,
						15
					],
					"text": "VEIN",
					"presentation": 1,
					"presentation_rect": [
						126,
						596,
						80,
						15
					],
					"textcolor": [
						0.42,
						0.42,
						0.42,
						1.0
					],
					"fontsize": 10,
					"fontface": 0
				}
			},
			{
				"box": {
					"id": "p-ml-2",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						-900,
						-900,
						80,
						15
					],
					"text": "SHARD",
					"presentation": 1,
					"presentation_rect": [
						222,
						596,
						80,
						15
					],
					"textcolor": [
						0.42,
						0.42,
						0.42,
						1.0
					],
					"fontsize": 10,
					"fontface": 0
				}
			},
			{
				"box": {
					"id": "p-ml-3",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						-900,
						-900,
						80,
						15
					],
					"text": "HUSK",
					"presentation": 1,
					"presentation_rect": [
						318,
						596,
						80,
						15
					],
					"textcolor": [
						0.42,
						0.42,
						0.42,
						1.0
					],
					"fontsize": 10,
					"fontface": 0
				}
			},
			{
				"box": {
					"id": "p-ml-4",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						-900,
						-900,
						80,
						15
					],
					"text": "FAULT",
					"presentation": 1,
					"presentation_rect": [
						414,
						596,
						80,
						15
					],
					"textcolor": [
						0.42,
						0.42,
						0.42,
						1.0
					],
					"fontsize": 10,
					"fontface": 0
				}
			},
			{
				"box": {
					"id": "p-ml-5",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						-900,
						-900,
						80,
						15
					],
					"text": "HALO",
					"presentation": 1,
					"presentation_rect": [
						510,
						596,
						80,
						15
					],
					"textcolor": [
						0.42,
						0.42,
						0.42,
						1.0
					],
					"fontsize": 10,
					"fontface": 0
				}
			},
			{
				"box": {
					"id": "p-gain-l",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						-900,
						-900,
						80,
						15
					],
					"text": "Master",
					"presentation": 1,
					"presentation_rect": [
						650,
						550,
						80,
						15
					],
					"textcolor": [
						0.42,
						0.42,
						0.42,
						1.0
					],
					"fontsize": 11,
					"fontface": 0
				}
			}
		],
		"lines": [
			{
				"patchline": {
					"source": [
						"tr-lb",
						0
					],
					"destination": [
						"tr-od",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"tr-lb",
						0
					],
					"destination": [
						"tr-bpmi",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"tr-bpmi",
						0
					],
					"destination": [
						"tr-bpm",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"tr-lb",
						0
					],
					"destination": [
						"tr-div-load",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"tr-div-load",
						0
					],
					"destination": [
						"tr-div-coll",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"tr-lb",
						0
					],
					"destination": [
						"tr-div-init",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"tr-div-init",
						0
					],
					"destination": [
						"tr-div",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"tr-div",
						0
					],
					"destination": [
						"tr-div-coll",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"tr-div-coll",
						0
					],
					"destination": [
						"tr-div-t",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"tr-div-t",
						0
					],
					"destination": [
						"tr-bpm",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"tr-bpm",
						0
					],
					"destination": [
						"tr-hz",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"tr-hz",
						0
					],
					"destination": [
						"tr-sig",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"tr-rsig-def",
						0
					],
					"destination": [
						"tr-rsig",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"tr-div-coll",
						0
					],
					"destination": [
						"tr-rsig",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"tr-sig",
						0
					],
					"destination": [
						"tr-mult",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"tr-rsig",
						0
					],
					"destination": [
						"tr-mult",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"tr-mult",
						0
					],
					"destination": [
						"tr-phasor",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"tr-phasor",
						0
					],
					"destination": [
						"tr-delta",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"tr-delta",
						0
					],
					"destination": [
						"tr-lt",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"tr-lt",
						0
					],
					"destination": [
						"tr-edge",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"tr-edge",
						0
					],
					"destination": [
						"tr-gate",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"tr-play",
						0
					],
					"destination": [
						"tr-gate",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"tr-gate",
						0
					],
					"destination": [
						"tr-cnt",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"tr-cnt",
						0
					],
					"destination": [
						"tr-tt",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"tr-tt",
						1
					],
					"destination": [
						"tr-timer",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"tr-tt",
						0
					],
					"destination": [
						"tr-timer",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"tr-timer",
						0
					],
					"destination": [
						"tr-tnow",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"tr-timer",
						0
					],
					"destination": [
						"tr-tpeak",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"tr-tpeak",
						0
					],
					"destination": [
						"tr-tworst",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"tr-timer",
						0
					],
					"destination": [
						"tr-ttrough",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"tr-ttrough",
						0
					],
					"destination": [
						"tr-tbest",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"tr-play",
						0
					],
					"destination": [
						"tr-trst",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"tr-trst",
						1
					],
					"destination": [
						"tr-rst-hi",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"tr-rst-hi",
						0
					],
					"destination": [
						"tr-ttrough",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"tr-trst",
						0
					],
					"destination": [
						"tr-rst-lo",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"tr-rst-lo",
						0
					],
					"destination": [
						"tr-tpeak",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"tr-cnt",
						0
					],
					"destination": [
						"tr-sn",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"tr-bpm",
						0
					],
					"destination": [
						"tr-ms",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"tr-div-t",
						1
					],
					"destination": [
						"tr-ms",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"tr-ms-def",
						0
					],
					"destination": [
						"tr-ms",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"len-0",
						0
					],
					"destination": [
						"lp-0",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"lp-0",
						0
					],
					"destination": [
						"sq-js",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"tr-lb",
						0
					],
					"destination": [
						"li-0",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"li-0",
						0
					],
					"destination": [
						"len-0",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"len-1",
						0
					],
					"destination": [
						"lp-1",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"lp-1",
						0
					],
					"destination": [
						"sq-js",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"tr-lb",
						0
					],
					"destination": [
						"li-1",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"li-1",
						0
					],
					"destination": [
						"len-1",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"len-2",
						0
					],
					"destination": [
						"lp-2",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"lp-2",
						0
					],
					"destination": [
						"sq-js",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"tr-lb",
						0
					],
					"destination": [
						"li-2",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"li-2",
						0
					],
					"destination": [
						"len-2",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"len-3",
						0
					],
					"destination": [
						"lp-3",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"lp-3",
						0
					],
					"destination": [
						"sq-js",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"tr-lb",
						0
					],
					"destination": [
						"li-3",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"li-3",
						0
					],
					"destination": [
						"len-3",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"len-4",
						0
					],
					"destination": [
						"lp-4",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"lp-4",
						0
					],
					"destination": [
						"sq-js",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"tr-lb",
						0
					],
					"destination": [
						"li-4",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"li-4",
						0
					],
					"destination": [
						"len-4",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"len-5",
						0
					],
					"destination": [
						"lp-5",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"lp-5",
						0
					],
					"destination": [
						"sq-js",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"tr-lb",
						0
					],
					"destination": [
						"li-5",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"li-5",
						0
					],
					"destination": [
						"len-5",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"tr-cnt",
						0
					],
					"destination": [
						"sq-js",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"sq-grid",
						0
					],
					"destination": [
						"sq-js",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"sq-js",
						7
					],
					"destination": [
						"sq-ind",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"tr-lb",
						0
					],
					"destination": [
						"sq-init",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"sq-init",
						0
					],
					"destination": [
						"sq-grid",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"tr-lb",
						0
					],
					"destination": [
						"vld-0",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vld-0",
						0
					],
					"destination": [
						"vlf-0",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vlr-0",
						0
					],
					"destination": [
						"vls-0",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vls-0",
						0
					],
					"destination": [
						"vlf-0",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vlf-0",
						0
					],
					"destination": [
						"vl-0",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vb-0",
						0
					],
					"destination": [
						"vc-0",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vc-0",
						0
					],
					"destination": [
						"vg-0",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vr-0",
						0
					],
					"destination": [
						"vg-0",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vg-0",
						0
					],
					"destination": [
						"vl-0",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vl-0",
						0
					],
					"destination": [
						"vs-0",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vlf-0",
						0
					],
					"destination": [
						"vlk-0",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vlk-0",
						0
					],
					"destination": [
						"km-js",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"tr-lb",
						0
					],
					"destination": [
						"vld-1",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vld-1",
						0
					],
					"destination": [
						"vlf-1",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vlr-1",
						0
					],
					"destination": [
						"vls-1",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vls-1",
						0
					],
					"destination": [
						"vlf-1",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vlf-1",
						0
					],
					"destination": [
						"vl-1",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vb-1",
						0
					],
					"destination": [
						"vc-1",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vc-1",
						0
					],
					"destination": [
						"vg-1",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vr-1",
						0
					],
					"destination": [
						"vg-1",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vg-1",
						0
					],
					"destination": [
						"vl-1",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vl-1",
						0
					],
					"destination": [
						"vs-1",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vlf-1",
						0
					],
					"destination": [
						"vlk-1",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vlk-1",
						0
					],
					"destination": [
						"km-js",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"tr-lb",
						0
					],
					"destination": [
						"vld-2",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vld-2",
						0
					],
					"destination": [
						"vlf-2",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vlr-2",
						0
					],
					"destination": [
						"vls-2",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vls-2",
						0
					],
					"destination": [
						"vlf-2",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vlf-2",
						0
					],
					"destination": [
						"vl-2",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vb-2",
						0
					],
					"destination": [
						"vc-2",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vc-2",
						0
					],
					"destination": [
						"vg-2",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vr-2",
						0
					],
					"destination": [
						"vg-2",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vg-2",
						0
					],
					"destination": [
						"vl-2",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vl-2",
						0
					],
					"destination": [
						"vs-2",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vlf-2",
						0
					],
					"destination": [
						"vlk-2",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vlk-2",
						0
					],
					"destination": [
						"km-js",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"tr-lb",
						0
					],
					"destination": [
						"vld-3",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vld-3",
						0
					],
					"destination": [
						"vlf-3",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vlr-3",
						0
					],
					"destination": [
						"vls-3",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vls-3",
						0
					],
					"destination": [
						"vlf-3",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vlf-3",
						0
					],
					"destination": [
						"vl-3",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vb-3",
						0
					],
					"destination": [
						"vc-3",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vc-3",
						0
					],
					"destination": [
						"vg-3",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vr-3",
						0
					],
					"destination": [
						"vg-3",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vg-3",
						0
					],
					"destination": [
						"vl-3",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vl-3",
						0
					],
					"destination": [
						"vs-3",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vlf-3",
						0
					],
					"destination": [
						"vlk-3",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vlk-3",
						0
					],
					"destination": [
						"km-js",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"tr-lb",
						0
					],
					"destination": [
						"vld-4",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vld-4",
						0
					],
					"destination": [
						"vlf-4",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vlr-4",
						0
					],
					"destination": [
						"vls-4",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vls-4",
						0
					],
					"destination": [
						"vlf-4",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vlf-4",
						0
					],
					"destination": [
						"vl-4",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vb-4",
						0
					],
					"destination": [
						"vc-4",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vc-4",
						0
					],
					"destination": [
						"vg-4",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vr-4",
						0
					],
					"destination": [
						"vg-4",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vg-4",
						0
					],
					"destination": [
						"vl-4",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vl-4",
						0
					],
					"destination": [
						"vs-4",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vlf-4",
						0
					],
					"destination": [
						"vlk-4",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vlk-4",
						0
					],
					"destination": [
						"km-js",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"tr-lb",
						0
					],
					"destination": [
						"vld-5",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vld-5",
						0
					],
					"destination": [
						"vlf-5",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vlr-5",
						0
					],
					"destination": [
						"vls-5",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vls-5",
						0
					],
					"destination": [
						"vlf-5",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vlf-5",
						0
					],
					"destination": [
						"vl-5",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vb-5",
						0
					],
					"destination": [
						"vc-5",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vc-5",
						0
					],
					"destination": [
						"vg-5",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vr-5",
						0
					],
					"destination": [
						"vg-5",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vg-5",
						0
					],
					"destination": [
						"vl-5",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vl-5",
						0
					],
					"destination": [
						"vs-5",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vlf-5",
						0
					],
					"destination": [
						"vlk-5",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vlk-5",
						0
					],
					"destination": [
						"km-js",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"nq-sw",
						0
					],
					"destination": [
						"nq-swp",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"tr-lb",
						0
					],
					"destination": [
						"nq-lenload",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"nq-lenload",
						0
					],
					"destination": [
						"nq-coll-0",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"len-0",
						0
					],
					"destination": [
						"nq-coll-0",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"nq-coll-0",
						0
					],
					"destination": [
						"nq-mod-0",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"tr-cnt",
						0
					],
					"destination": [
						"nq-mod-0",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"nq-mod-0",
						0
					],
					"destination": [
						"nq-tab-0",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"nq-tab-0",
						0
					],
					"destination": [
						"nq-sel-0",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"nq-swp",
						0
					],
					"destination": [
						"nq-sw-0",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"sq-js",
						0
					],
					"destination": [
						"nq-sw-0",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"nq-sel-0",
						0
					],
					"destination": [
						"nq-sw-0",
						2
					]
				}
			},
			{
				"patchline": {
					"source": [
						"nq-sw-0",
						0
					],
					"destination": [
						"fl-tp-0",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"nq-lenload",
						0
					],
					"destination": [
						"nq-coll-1",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"len-1",
						0
					],
					"destination": [
						"nq-coll-1",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"nq-coll-1",
						0
					],
					"destination": [
						"nq-mod-1",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"tr-cnt",
						0
					],
					"destination": [
						"nq-mod-1",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"nq-mod-1",
						0
					],
					"destination": [
						"nq-tab-1",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"nq-tab-1",
						0
					],
					"destination": [
						"nq-sel-1",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"nq-swp",
						0
					],
					"destination": [
						"nq-sw-1",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"sq-js",
						1
					],
					"destination": [
						"nq-sw-1",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"nq-sel-1",
						0
					],
					"destination": [
						"nq-sw-1",
						2
					]
				}
			},
			{
				"patchline": {
					"source": [
						"nq-sw-1",
						0
					],
					"destination": [
						"fl-tp-1",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"nq-lenload",
						0
					],
					"destination": [
						"nq-coll-2",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"len-2",
						0
					],
					"destination": [
						"nq-coll-2",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"nq-coll-2",
						0
					],
					"destination": [
						"nq-mod-2",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"tr-cnt",
						0
					],
					"destination": [
						"nq-mod-2",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"nq-mod-2",
						0
					],
					"destination": [
						"nq-tab-2",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"nq-tab-2",
						0
					],
					"destination": [
						"nq-sel-2",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"nq-swp",
						0
					],
					"destination": [
						"nq-sw-2",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"sq-js",
						2
					],
					"destination": [
						"nq-sw-2",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"nq-sel-2",
						0
					],
					"destination": [
						"nq-sw-2",
						2
					]
				}
			},
			{
				"patchline": {
					"source": [
						"nq-sw-2",
						0
					],
					"destination": [
						"fl-tp-2",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"nq-lenload",
						0
					],
					"destination": [
						"nq-coll-3",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"len-3",
						0
					],
					"destination": [
						"nq-coll-3",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"nq-coll-3",
						0
					],
					"destination": [
						"nq-mod-3",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"tr-cnt",
						0
					],
					"destination": [
						"nq-mod-3",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"nq-mod-3",
						0
					],
					"destination": [
						"nq-tab-3",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"nq-tab-3",
						0
					],
					"destination": [
						"nq-sel-3",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"nq-swp",
						0
					],
					"destination": [
						"nq-sw-3",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"sq-js",
						3
					],
					"destination": [
						"nq-sw-3",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"nq-sel-3",
						0
					],
					"destination": [
						"nq-sw-3",
						2
					]
				}
			},
			{
				"patchline": {
					"source": [
						"nq-sw-3",
						0
					],
					"destination": [
						"fl-tp-3",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"nq-lenload",
						0
					],
					"destination": [
						"nq-coll-4",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"len-4",
						0
					],
					"destination": [
						"nq-coll-4",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"nq-coll-4",
						0
					],
					"destination": [
						"nq-mod-4",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"tr-cnt",
						0
					],
					"destination": [
						"nq-mod-4",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"nq-mod-4",
						0
					],
					"destination": [
						"nq-tab-4",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"nq-tab-4",
						0
					],
					"destination": [
						"nq-sel-4",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"nq-swp",
						0
					],
					"destination": [
						"nq-sw-4",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"sq-js",
						4
					],
					"destination": [
						"nq-sw-4",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"nq-sel-4",
						0
					],
					"destination": [
						"nq-sw-4",
						2
					]
				}
			},
			{
				"patchline": {
					"source": [
						"nq-sw-4",
						0
					],
					"destination": [
						"fl-tp-4",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"nq-lenload",
						0
					],
					"destination": [
						"nq-coll-5",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"len-5",
						0
					],
					"destination": [
						"nq-coll-5",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"nq-coll-5",
						0
					],
					"destination": [
						"nq-mod-5",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"tr-cnt",
						0
					],
					"destination": [
						"nq-mod-5",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"nq-mod-5",
						0
					],
					"destination": [
						"nq-tab-5",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"nq-tab-5",
						0
					],
					"destination": [
						"nq-sel-5",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"nq-swp",
						0
					],
					"destination": [
						"nq-sw-5",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"sq-js",
						5
					],
					"destination": [
						"nq-sw-5",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"nq-sel-5",
						0
					],
					"destination": [
						"nq-sw-5",
						2
					]
				}
			},
			{
				"patchline": {
					"source": [
						"nq-sw-5",
						0
					],
					"destination": [
						"fl-tp-5",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"sq-grid",
						0
					],
					"destination": [
						"nq-unp",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"nq-unp",
						0
					],
					"destination": [
						"nq-pk",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"nq-unp",
						2
					],
					"destination": [
						"nq-pk",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"nq-unp",
						1
					],
					"destination": [
						"nq-row",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"nq-row",
						0
					],
					"destination": [
						"nq-gate",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"nq-pk",
						0
					],
					"destination": [
						"nq-gate",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"nq-gate",
						0
					],
					"destination": [
						"nq-tab-0",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"nq-gate",
						1
					],
					"destination": [
						"nq-tab-1",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"nq-gate",
						2
					],
					"destination": [
						"nq-tab-2",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"nq-gate",
						3
					],
					"destination": [
						"nq-tab-3",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"nq-gate",
						4
					],
					"destination": [
						"nq-tab-4",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"nq-gate",
						5
					],
					"destination": [
						"nq-tab-5",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mp-rcv-0",
						0
					],
					"destination": [
						"mp-sum-0",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mp-lfo-0",
						0
					],
					"destination": [
						"mp-sum-0",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mp-sum-0",
						0
					],
					"destination": [
						"mp-clip-0",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mp-clip-0",
						0
					],
					"destination": [
						"mp-cos-0",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mp-clip-0",
						0
					],
					"destination": [
						"mp-sin-0",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mr-0",
						0
					],
					"destination": [
						"mp-l-0",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mp-cos-0",
						0
					],
					"destination": [
						"mp-l-0",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mr-0",
						0
					],
					"destination": [
						"mp-r-0",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mp-sin-0",
						0
					],
					"destination": [
						"mp-r-0",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mp-rcv-1",
						0
					],
					"destination": [
						"mp-sum-1",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mp-lfo-1",
						0
					],
					"destination": [
						"mp-sum-1",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mp-sum-1",
						0
					],
					"destination": [
						"mp-clip-1",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mp-clip-1",
						0
					],
					"destination": [
						"mp-cos-1",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mp-clip-1",
						0
					],
					"destination": [
						"mp-sin-1",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mr-1",
						0
					],
					"destination": [
						"mp-l-1",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mp-cos-1",
						0
					],
					"destination": [
						"mp-l-1",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mr-1",
						0
					],
					"destination": [
						"mp-r-1",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mp-sin-1",
						0
					],
					"destination": [
						"mp-r-1",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mp-rcv-2",
						0
					],
					"destination": [
						"mp-sum-2",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mp-lfo-2",
						0
					],
					"destination": [
						"mp-sum-2",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mp-sum-2",
						0
					],
					"destination": [
						"mp-clip-2",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mp-clip-2",
						0
					],
					"destination": [
						"mp-cos-2",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mp-clip-2",
						0
					],
					"destination": [
						"mp-sin-2",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mr-2",
						0
					],
					"destination": [
						"mp-l-2",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mp-cos-2",
						0
					],
					"destination": [
						"mp-l-2",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mr-2",
						0
					],
					"destination": [
						"mp-r-2",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mp-sin-2",
						0
					],
					"destination": [
						"mp-r-2",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mp-rcv-3",
						0
					],
					"destination": [
						"mp-sum-3",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mp-lfo-3",
						0
					],
					"destination": [
						"mp-sum-3",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mp-sum-3",
						0
					],
					"destination": [
						"mp-clip-3",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mp-clip-3",
						0
					],
					"destination": [
						"mp-cos-3",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mp-clip-3",
						0
					],
					"destination": [
						"mp-sin-3",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mr-3",
						0
					],
					"destination": [
						"mp-l-3",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mp-cos-3",
						0
					],
					"destination": [
						"mp-l-3",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mr-3",
						0
					],
					"destination": [
						"mp-r-3",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mp-sin-3",
						0
					],
					"destination": [
						"mp-r-3",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mp-rcv-4",
						0
					],
					"destination": [
						"mp-sum-4",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mp-lfo-4",
						0
					],
					"destination": [
						"mp-sum-4",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mp-sum-4",
						0
					],
					"destination": [
						"mp-clip-4",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mp-clip-4",
						0
					],
					"destination": [
						"mp-cos-4",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mp-clip-4",
						0
					],
					"destination": [
						"mp-sin-4",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mr-4",
						0
					],
					"destination": [
						"mp-l-4",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mp-cos-4",
						0
					],
					"destination": [
						"mp-l-4",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mr-4",
						0
					],
					"destination": [
						"mp-r-4",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mp-sin-4",
						0
					],
					"destination": [
						"mp-r-4",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mp-rcv-5",
						0
					],
					"destination": [
						"mp-sum-5",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mp-lfo-5",
						0
					],
					"destination": [
						"mp-sum-5",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mp-sum-5",
						0
					],
					"destination": [
						"mp-clip-5",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mp-clip-5",
						0
					],
					"destination": [
						"mp-cos-5",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mp-clip-5",
						0
					],
					"destination": [
						"mp-sin-5",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mr-5",
						0
					],
					"destination": [
						"mp-l-5",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mp-cos-5",
						0
					],
					"destination": [
						"mp-l-5",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mr-5",
						0
					],
					"destination": [
						"mp-r-5",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mp-sin-5",
						0
					],
					"destination": [
						"mp-r-5",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mp-l-0",
						0
					],
					"destination": [
						"mx-l-0",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mp-l-1",
						0
					],
					"destination": [
						"mx-l-0",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mx-l-0",
						0
					],
					"destination": [
						"mx-l-1",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mp-l-2",
						0
					],
					"destination": [
						"mx-l-1",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mx-l-1",
						0
					],
					"destination": [
						"mx-l-2",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mp-l-3",
						0
					],
					"destination": [
						"mx-l-2",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mx-l-2",
						0
					],
					"destination": [
						"mx-l-3",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mp-l-4",
						0
					],
					"destination": [
						"mx-l-3",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mx-l-3",
						0
					],
					"destination": [
						"mx-l-4",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mp-l-5",
						0
					],
					"destination": [
						"mx-l-4",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mp-r-0",
						0
					],
					"destination": [
						"mx-r-0",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mp-r-1",
						0
					],
					"destination": [
						"mx-r-0",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mx-r-0",
						0
					],
					"destination": [
						"mx-r-1",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mp-r-2",
						0
					],
					"destination": [
						"mx-r-1",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mx-r-1",
						0
					],
					"destination": [
						"mx-r-2",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mp-r-3",
						0
					],
					"destination": [
						"mx-r-2",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mx-r-2",
						0
					],
					"destination": [
						"mx-r-3",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mp-r-4",
						0
					],
					"destination": [
						"mx-r-3",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mx-r-3",
						0
					],
					"destination": [
						"mx-r-4",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mp-r-5",
						0
					],
					"destination": [
						"mx-r-4",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mx-sig1",
						0
					],
					"destination": [
						"mx-gain",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"tr-lb",
						0
					],
					"destination": [
						"mx-gain-init",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mx-gain-init",
						0
					],
					"destination": [
						"mx-gain",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mx-l-4",
						0
					],
					"destination": [
						"mx-mulL",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mx-gain",
						0
					],
					"destination": [
						"mx-mulL",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mx-r-4",
						0
					],
					"destination": [
						"mx-mulR",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mx-gain",
						0
					],
					"destination": [
						"mx-mulR",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mx-mulL",
						0
					],
					"destination": [
						"mx-limL",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mx-mulR",
						0
					],
					"destination": [
						"mx-limR",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mx-limL",
						0
					],
					"destination": [
						"mx-meter",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mx-limL",
						0
					],
					"destination": [
						"mx-scope",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mx-limR",
						0
					],
					"destination": [
						"mx-scope",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mx-limL",
						0
					],
					"destination": [
						"mx-dac",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mx-limR",
						0
					],
					"destination": [
						"mx-dac",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mx-limL",
						0
					],
					"destination": [
						"mx-rec",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mx-limR",
						0
					],
					"destination": [
						"mx-rec",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mx-recbtn",
						0
					],
					"destination": [
						"mx-rect",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mx-rect",
						1
					],
					"destination": [
						"mx-recopen",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mx-recopen",
						0
					],
					"destination": [
						"mx-rec",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mx-rect",
						0
					],
					"destination": [
						"mx-recon",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mx-recon",
						0
					],
					"destination": [
						"mx-rec",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mx-rect",
						0
					],
					"destination": [
						"mx-recprint",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mx-rect",
						0
					],
					"destination": [
						"mx-recdel",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mx-recdel",
						0
					],
					"destination": [
						"mx-recoff",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mx-recoff",
						0
					],
					"destination": [
						"mx-rec",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"tr-lb",
						0
					],
					"destination": [
						"out-adel",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"out-adel",
						0
					],
					"destination": [
						"out-aon",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"out-aon",
						0
					],
					"destination": [
						"out-at",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"out-at",
						0
					],
					"destination": [
						"out-as",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"out-as",
						0
					],
					"destination": [
						"out-ms",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"out-as",
						1
					],
					"destination": [
						"out-mw",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"out-ms",
						0
					],
					"destination": [
						"mx-dac",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"out-mw",
						0
					],
					"destination": [
						"mx-dac",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vc-tab",
						0
					],
					"destination": [
						"vc-js",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"tr-lb",
						0
					],
					"destination": [
						"vc-initmsg",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vc-initmsg",
						0
					],
					"destination": [
						"vc-js",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vc-js",
						0
					],
					"destination": [
						"vp-0",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vc-js",
						1
					],
					"destination": [
						"vp-1",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vc-js",
						2
					],
					"destination": [
						"vp-2",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vc-js",
						3
					],
					"destination": [
						"vp-3",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vc-js",
						4
					],
					"destination": [
						"vp-4",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vc-js",
						5
					],
					"destination": [
						"vp-5",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vc-js",
						6
					],
					"destination": [
						"vc-route",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vc-route",
						0
					],
					"destination": [
						"ds-0",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"ds-0",
						0
					],
					"destination": [
						"dd-0",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"dd-0",
						0
					],
					"destination": [
						"dp-0",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"dp-0",
						0
					],
					"destination": [
						"vc-js",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vc-route",
						1
					],
					"destination": [
						"ds-1",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"ds-1",
						0
					],
					"destination": [
						"dd-1",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"dd-1",
						0
					],
					"destination": [
						"dp-1",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"dp-1",
						0
					],
					"destination": [
						"vc-js",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vc-route",
						2
					],
					"destination": [
						"ds-2",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"ds-2",
						0
					],
					"destination": [
						"dd-2",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"dd-2",
						0
					],
					"destination": [
						"dp-2",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"dp-2",
						0
					],
					"destination": [
						"vc-js",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vc-route",
						3
					],
					"destination": [
						"ds-3",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"ds-3",
						0
					],
					"destination": [
						"dd-3",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"dd-3",
						0
					],
					"destination": [
						"dp-3",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"dp-3",
						0
					],
					"destination": [
						"vc-js",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vc-route",
						4
					],
					"destination": [
						"ds-4",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"ds-4",
						0
					],
					"destination": [
						"dd-4",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"dd-4",
						0
					],
					"destination": [
						"dp-4",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"dp-4",
						0
					],
					"destination": [
						"vc-js",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vc-route",
						5
					],
					"destination": [
						"ds-5",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"ds-5",
						0
					],
					"destination": [
						"dd-5",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"dd-5",
						0
					],
					"destination": [
						"dp-5",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"dp-5",
						0
					],
					"destination": [
						"vc-js",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vc-route",
						6
					],
					"destination": [
						"ds-6",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"ds-6",
						0
					],
					"destination": [
						"dd-6",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"dd-6",
						0
					],
					"destination": [
						"dp-6",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"dp-6",
						0
					],
					"destination": [
						"vc-js",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vc-route",
						7
					],
					"destination": [
						"ds-7",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"ds-7",
						0
					],
					"destination": [
						"dd-7",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"dd-7",
						0
					],
					"destination": [
						"dp-7",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"dp-7",
						0
					],
					"destination": [
						"vc-js",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vc-route",
						8
					],
					"destination": [
						"ds-8",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"ds-8",
						0
					],
					"destination": [
						"dd-8",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"dd-8",
						0
					],
					"destination": [
						"dp-8",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"dp-8",
						0
					],
					"destination": [
						"vc-js",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vc-route",
						9
					],
					"destination": [
						"ds-9",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"ds-9",
						0
					],
					"destination": [
						"dd-9",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"dd-9",
						0
					],
					"destination": [
						"dp-9",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"dp-9",
						0
					],
					"destination": [
						"vc-js",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vc-route",
						10
					],
					"destination": [
						"ds-10",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"ds-10",
						0
					],
					"destination": [
						"dd-10",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"dd-10",
						0
					],
					"destination": [
						"dp-10",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"dp-10",
						0
					],
					"destination": [
						"vc-js",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vc-route",
						11
					],
					"destination": [
						"ds-11",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"ds-11",
						0
					],
					"destination": [
						"dd-11",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"dd-11",
						0
					],
					"destination": [
						"dp-11",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"dp-11",
						0
					],
					"destination": [
						"vc-js",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vc-route",
						12
					],
					"destination": [
						"ds-12",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"ds-12",
						0
					],
					"destination": [
						"dd-12",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"dd-12",
						0
					],
					"destination": [
						"dp-12",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"dp-12",
						0
					],
					"destination": [
						"vc-js",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-tp-0",
						0
					],
					"destination": [
						"fl-js",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-tp-1",
						0
					],
					"destination": [
						"fl-js",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-tp-2",
						0
					],
					"destination": [
						"fl-js",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-tp-3",
						0
					],
					"destination": [
						"fl-js",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-tp-4",
						0
					],
					"destination": [
						"fl-js",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-tp-5",
						0
					],
					"destination": [
						"fl-js",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-js",
						0
					],
					"destination": [
						"fl-snd-0",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-js",
						1
					],
					"destination": [
						"fl-snd-1",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-js",
						2
					],
					"destination": [
						"fl-snd-2",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-js",
						3
					],
					"destination": [
						"fl-snd-3",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-js",
						4
					],
					"destination": [
						"fl-snd-4",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-js",
						5
					],
					"destination": [
						"fl-snd-5",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"tr-ms",
						0
					],
					"destination": [
						"fl-js",
						2
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-m-sub",
						0
					],
					"destination": [
						"fl-m-sub-p",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-m-sub-p",
						0
					],
					"destination": [
						"fl-js",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-m-prob",
						0
					],
					"destination": [
						"fl-m-prob-p",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-m-prob-p",
						0
					],
					"destination": [
						"fl-js",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-m-hum",
						0
					],
					"destination": [
						"fl-m-hum-p",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-m-hum-p",
						0
					],
					"destination": [
						"fl-js",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-m-burst",
						0
					],
					"destination": [
						"fl-m-burst-p",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-m-burst-p",
						0
					],
					"destination": [
						"fl-js",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-m-pitch",
						0
					],
					"destination": [
						"fl-m-pitch-p",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-m-pitch-p",
						0
					],
					"destination": [
						"fl-js",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-m-vdecay",
						0
					],
					"destination": [
						"fl-m-vdecay-p",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-m-vdecay-p",
						0
					],
					"destination": [
						"fl-js",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-subdivision-0",
						0
					],
					"destination": [
						"fl-subdivision-p-0",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-subdivision-p-0",
						0
					],
					"destination": [
						"fl-sctl-0",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-probability-0",
						0
					],
					"destination": [
						"fl-probability-p-0",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-probability-p-0",
						0
					],
					"destination": [
						"fl-sctl-0",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-humanize-0",
						0
					],
					"destination": [
						"fl-humanize-p-0",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-humanize-p-0",
						0
					],
					"destination": [
						"fl-sctl-0",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-burst-0",
						0
					],
					"destination": [
						"fl-burst-p-0",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-burst-p-0",
						0
					],
					"destination": [
						"fl-sctl-0",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-pitch_mod-0",
						0
					],
					"destination": [
						"fl-pitch_mod-p-0",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-pitch_mod-p-0",
						0
					],
					"destination": [
						"fl-sctl-0",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-vel_decay-0",
						0
					],
					"destination": [
						"fl-vel_decay-p-0",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-vel_decay-p-0",
						0
					],
					"destination": [
						"fl-sctl-0",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-subdivision-1",
						0
					],
					"destination": [
						"fl-subdivision-p-1",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-subdivision-p-1",
						0
					],
					"destination": [
						"fl-sctl-1",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-probability-1",
						0
					],
					"destination": [
						"fl-probability-p-1",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-probability-p-1",
						0
					],
					"destination": [
						"fl-sctl-1",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-humanize-1",
						0
					],
					"destination": [
						"fl-humanize-p-1",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-humanize-p-1",
						0
					],
					"destination": [
						"fl-sctl-1",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-burst-1",
						0
					],
					"destination": [
						"fl-burst-p-1",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-burst-p-1",
						0
					],
					"destination": [
						"fl-sctl-1",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-pitch_mod-1",
						0
					],
					"destination": [
						"fl-pitch_mod-p-1",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-pitch_mod-p-1",
						0
					],
					"destination": [
						"fl-sctl-1",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-vel_decay-1",
						0
					],
					"destination": [
						"fl-vel_decay-p-1",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-vel_decay-p-1",
						0
					],
					"destination": [
						"fl-sctl-1",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-subdivision-2",
						0
					],
					"destination": [
						"fl-subdivision-p-2",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-subdivision-p-2",
						0
					],
					"destination": [
						"fl-sctl-2",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-probability-2",
						0
					],
					"destination": [
						"fl-probability-p-2",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-probability-p-2",
						0
					],
					"destination": [
						"fl-sctl-2",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-humanize-2",
						0
					],
					"destination": [
						"fl-humanize-p-2",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-humanize-p-2",
						0
					],
					"destination": [
						"fl-sctl-2",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-burst-2",
						0
					],
					"destination": [
						"fl-burst-p-2",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-burst-p-2",
						0
					],
					"destination": [
						"fl-sctl-2",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-pitch_mod-2",
						0
					],
					"destination": [
						"fl-pitch_mod-p-2",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-pitch_mod-p-2",
						0
					],
					"destination": [
						"fl-sctl-2",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-vel_decay-2",
						0
					],
					"destination": [
						"fl-vel_decay-p-2",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-vel_decay-p-2",
						0
					],
					"destination": [
						"fl-sctl-2",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-subdivision-3",
						0
					],
					"destination": [
						"fl-subdivision-p-3",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-subdivision-p-3",
						0
					],
					"destination": [
						"fl-sctl-3",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-probability-3",
						0
					],
					"destination": [
						"fl-probability-p-3",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-probability-p-3",
						0
					],
					"destination": [
						"fl-sctl-3",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-humanize-3",
						0
					],
					"destination": [
						"fl-humanize-p-3",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-humanize-p-3",
						0
					],
					"destination": [
						"fl-sctl-3",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-burst-3",
						0
					],
					"destination": [
						"fl-burst-p-3",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-burst-p-3",
						0
					],
					"destination": [
						"fl-sctl-3",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-pitch_mod-3",
						0
					],
					"destination": [
						"fl-pitch_mod-p-3",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-pitch_mod-p-3",
						0
					],
					"destination": [
						"fl-sctl-3",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-vel_decay-3",
						0
					],
					"destination": [
						"fl-vel_decay-p-3",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-vel_decay-p-3",
						0
					],
					"destination": [
						"fl-sctl-3",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-subdivision-4",
						0
					],
					"destination": [
						"fl-subdivision-p-4",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-subdivision-p-4",
						0
					],
					"destination": [
						"fl-sctl-4",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-probability-4",
						0
					],
					"destination": [
						"fl-probability-p-4",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-probability-p-4",
						0
					],
					"destination": [
						"fl-sctl-4",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-humanize-4",
						0
					],
					"destination": [
						"fl-humanize-p-4",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-humanize-p-4",
						0
					],
					"destination": [
						"fl-sctl-4",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-burst-4",
						0
					],
					"destination": [
						"fl-burst-p-4",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-burst-p-4",
						0
					],
					"destination": [
						"fl-sctl-4",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-pitch_mod-4",
						0
					],
					"destination": [
						"fl-pitch_mod-p-4",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-pitch_mod-p-4",
						0
					],
					"destination": [
						"fl-sctl-4",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-vel_decay-4",
						0
					],
					"destination": [
						"fl-vel_decay-p-4",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-vel_decay-p-4",
						0
					],
					"destination": [
						"fl-sctl-4",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-subdivision-5",
						0
					],
					"destination": [
						"fl-subdivision-p-5",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-subdivision-p-5",
						0
					],
					"destination": [
						"fl-sctl-5",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-probability-5",
						0
					],
					"destination": [
						"fl-probability-p-5",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-probability-p-5",
						0
					],
					"destination": [
						"fl-sctl-5",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-humanize-5",
						0
					],
					"destination": [
						"fl-humanize-p-5",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-humanize-p-5",
						0
					],
					"destination": [
						"fl-sctl-5",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-burst-5",
						0
					],
					"destination": [
						"fl-burst-p-5",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-burst-p-5",
						0
					],
					"destination": [
						"fl-sctl-5",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-pitch_mod-5",
						0
					],
					"destination": [
						"fl-pitch_mod-p-5",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-pitch_mod-p-5",
						0
					],
					"destination": [
						"fl-sctl-5",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-vel_decay-5",
						0
					],
					"destination": [
						"fl-vel_decay-p-5",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-vel_decay-p-5",
						0
					],
					"destination": [
						"fl-sctl-5",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-r1",
						0
					],
					"destination": [
						"fl-js",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-r2",
						0
					],
					"destination": [
						"fl-km-notify",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fl-km-notify",
						0
					],
					"destination": [
						"km-js",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"gr-swing",
						0
					],
					"destination": [
						"gr-swing-p",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"gr-swing-p",
						0
					],
					"destination": [
						"fl-js",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"gr-master",
						0
					],
					"destination": [
						"gr-master-p",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"gr-master-p",
						0
					],
					"destination": [
						"fl-js",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"tr-lb",
						0
					],
					"destination": [
						"gr-def-0",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"gr-def-0",
						0
					],
					"destination": [
						"gr-off-0",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"gr-off-0",
						0
					],
					"destination": [
						"gr-off-p-0",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"gr-off-p-0",
						0
					],
					"destination": [
						"fl-js",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"tr-lb",
						0
					],
					"destination": [
						"gr-def-1",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"gr-def-1",
						0
					],
					"destination": [
						"gr-off-1",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"gr-off-1",
						0
					],
					"destination": [
						"gr-off-p-1",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"gr-off-p-1",
						0
					],
					"destination": [
						"fl-js",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"tr-lb",
						0
					],
					"destination": [
						"gr-def-2",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"gr-def-2",
						0
					],
					"destination": [
						"gr-off-2",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"gr-off-2",
						0
					],
					"destination": [
						"gr-off-p-2",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"gr-off-p-2",
						0
					],
					"destination": [
						"fl-js",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"tr-lb",
						0
					],
					"destination": [
						"gr-def-3",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"gr-def-3",
						0
					],
					"destination": [
						"gr-off-3",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"gr-off-3",
						0
					],
					"destination": [
						"gr-off-p-3",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"gr-off-p-3",
						0
					],
					"destination": [
						"fl-js",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"tr-lb",
						0
					],
					"destination": [
						"gr-def-4",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"gr-def-4",
						0
					],
					"destination": [
						"gr-off-4",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"gr-off-4",
						0
					],
					"destination": [
						"gr-off-p-4",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"gr-off-p-4",
						0
					],
					"destination": [
						"fl-js",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"tr-lb",
						0
					],
					"destination": [
						"gr-def-5",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"gr-def-5",
						0
					],
					"destination": [
						"gr-off-5",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"gr-off-5",
						0
					],
					"destination": [
						"gr-off-p-5",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"gr-off-p-5",
						0
					],
					"destination": [
						"fl-js",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"tr-ms",
						0
					],
					"destination": [
						"lfo-js",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"lfo-g-rate",
						0
					],
					"destination": [
						"lfo-g-rate-p",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"lfo-g-rate-p",
						0
					],
					"destination": [
						"lfo-js",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"lfo-g-depth",
						0
					],
					"destination": [
						"lfo-g-depth-p",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"lfo-g-depth-p",
						0
					],
					"destination": [
						"lfo-js",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"lfo-g-K",
						0
					],
					"destination": [
						"lfo-g-K-p",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"lfo-g-K-p",
						0
					],
					"destination": [
						"lfo-js",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"lfo-g-topo",
						0
					],
					"destination": [
						"lfo-g-topo-p",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"lfo-g-topo-p",
						0
					],
					"destination": [
						"lfo-js",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"lfo-g-rho",
						0
					],
					"destination": [
						"lfo-g-rho-p",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"lfo-g-rho-p",
						0
					],
					"destination": [
						"lfo-js",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"lfo-rate-0",
						0
					],
					"destination": [
						"lfo-rate-p-0",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"lfo-rate-p-0",
						0
					],
					"destination": [
						"lfo-js",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"lfo-depth-0",
						0
					],
					"destination": [
						"lfo-depth-p-0",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"lfo-depth-p-0",
						0
					],
					"destination": [
						"lfo-js",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"lfo-shape-0",
						0
					],
					"destination": [
						"lfo-shape-p-0",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"lfo-shape-p-0",
						0
					],
					"destination": [
						"lfo-js",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"lfo-dest-0",
						0
					],
					"destination": [
						"lfo-dest-p-0",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"lfo-dest-p-0",
						0
					],
					"destination": [
						"lfo-js",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"lfo-rate-1",
						0
					],
					"destination": [
						"lfo-rate-p-1",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"lfo-rate-p-1",
						0
					],
					"destination": [
						"lfo-js",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"lfo-depth-1",
						0
					],
					"destination": [
						"lfo-depth-p-1",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"lfo-depth-p-1",
						0
					],
					"destination": [
						"lfo-js",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"lfo-shape-1",
						0
					],
					"destination": [
						"lfo-shape-p-1",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"lfo-shape-p-1",
						0
					],
					"destination": [
						"lfo-js",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"lfo-dest-1",
						0
					],
					"destination": [
						"lfo-dest-p-1",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"lfo-dest-p-1",
						0
					],
					"destination": [
						"lfo-js",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"lfo-rate-2",
						0
					],
					"destination": [
						"lfo-rate-p-2",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"lfo-rate-p-2",
						0
					],
					"destination": [
						"lfo-js",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"lfo-depth-2",
						0
					],
					"destination": [
						"lfo-depth-p-2",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"lfo-depth-p-2",
						0
					],
					"destination": [
						"lfo-js",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"lfo-shape-2",
						0
					],
					"destination": [
						"lfo-shape-p-2",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"lfo-shape-p-2",
						0
					],
					"destination": [
						"lfo-js",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"lfo-dest-2",
						0
					],
					"destination": [
						"lfo-dest-p-2",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"lfo-dest-p-2",
						0
					],
					"destination": [
						"lfo-js",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"lfo-rate-3",
						0
					],
					"destination": [
						"lfo-rate-p-3",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"lfo-rate-p-3",
						0
					],
					"destination": [
						"lfo-js",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"lfo-depth-3",
						0
					],
					"destination": [
						"lfo-depth-p-3",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"lfo-depth-p-3",
						0
					],
					"destination": [
						"lfo-js",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"lfo-shape-3",
						0
					],
					"destination": [
						"lfo-shape-p-3",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"lfo-shape-p-3",
						0
					],
					"destination": [
						"lfo-js",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"lfo-dest-3",
						0
					],
					"destination": [
						"lfo-dest-p-3",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"lfo-dest-p-3",
						0
					],
					"destination": [
						"lfo-js",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"lfo-rate-4",
						0
					],
					"destination": [
						"lfo-rate-p-4",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"lfo-rate-p-4",
						0
					],
					"destination": [
						"lfo-js",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"lfo-depth-4",
						0
					],
					"destination": [
						"lfo-depth-p-4",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"lfo-depth-p-4",
						0
					],
					"destination": [
						"lfo-js",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"lfo-shape-4",
						0
					],
					"destination": [
						"lfo-shape-p-4",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"lfo-shape-p-4",
						0
					],
					"destination": [
						"lfo-js",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"lfo-dest-4",
						0
					],
					"destination": [
						"lfo-dest-p-4",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"lfo-dest-p-4",
						0
					],
					"destination": [
						"lfo-js",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"lfo-rate-5",
						0
					],
					"destination": [
						"lfo-rate-p-5",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"lfo-rate-p-5",
						0
					],
					"destination": [
						"lfo-js",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"lfo-depth-5",
						0
					],
					"destination": [
						"lfo-depth-p-5",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"lfo-depth-p-5",
						0
					],
					"destination": [
						"lfo-js",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"lfo-shape-5",
						0
					],
					"destination": [
						"lfo-shape-p-5",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"lfo-shape-p-5",
						0
					],
					"destination": [
						"lfo-js",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"lfo-dest-5",
						0
					],
					"destination": [
						"lfo-dest-p-5",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"lfo-dest-p-5",
						0
					],
					"destination": [
						"lfo-js",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"tr-lb",
						0
					],
					"destination": [
						"km-init",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"km-init",
						0
					],
					"destination": [
						"km-js",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"km-js",
						0
					],
					"destination": [
						"vc-js",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"km-js",
						1
					],
					"destination": [
						"sq-grid",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"km-js",
						2
					],
					"destination": [
						"sq-js",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"km-js",
						4
					],
					"destination": [
						"fl-js",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"km-js",
						5
					],
					"destination": [
						"km-lvl-route",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"km-lvl-route",
						0
					],
					"destination": [
						"km-lvl-snd-0",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"km-lvl-route",
						1
					],
					"destination": [
						"km-lvl-snd-1",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"km-lvl-route",
						2
					],
					"destination": [
						"km-lvl-snd-2",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"km-lvl-route",
						3
					],
					"destination": [
						"km-lvl-snd-3",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"km-lvl-route",
						4
					],
					"destination": [
						"km-lvl-snd-4",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"km-lvl-route",
						5
					],
					"destination": [
						"km-lvl-snd-5",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"km-js",
						6
					],
					"destination": [
						"lfo-js",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"km-js",
						7
					],
					"destination": [
						"fl-js",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vc-js",
						7
					],
					"destination": [
						"km-js",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"sq-grid",
						0
					],
					"destination": [
						"km-pcell",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"km-pcell",
						0
					],
					"destination": [
						"km-js",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"len-0",
						0
					],
					"destination": [
						"km-len-0",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"km-len-0",
						0
					],
					"destination": [
						"km-js",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"len-1",
						0
					],
					"destination": [
						"km-len-1",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"km-len-1",
						0
					],
					"destination": [
						"km-js",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"len-2",
						0
					],
					"destination": [
						"km-len-2",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"km-len-2",
						0
					],
					"destination": [
						"km-js",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"len-3",
						0
					],
					"destination": [
						"km-len-3",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"km-len-3",
						0
					],
					"destination": [
						"km-js",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"len-4",
						0
					],
					"destination": [
						"km-len-4",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"km-len-4",
						0
					],
					"destination": [
						"km-js",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"len-5",
						0
					],
					"destination": [
						"km-len-5",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"km-len-5",
						0
					],
					"destination": [
						"km-js",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"km-sv-0",
						0
					],
					"destination": [
						"km-js",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"km-ld-0",
						0
					],
					"destination": [
						"km-js",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"km-sv-1",
						0
					],
					"destination": [
						"km-js",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"km-ld-1",
						0
					],
					"destination": [
						"km-js",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"km-sv-2",
						0
					],
					"destination": [
						"km-js",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"km-ld-2",
						0
					],
					"destination": [
						"km-js",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"km-sv-3",
						0
					],
					"destination": [
						"km-js",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"km-ld-3",
						0
					],
					"destination": [
						"km-js",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"km-sv-4",
						0
					],
					"destination": [
						"km-js",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"km-ld-4",
						0
					],
					"destination": [
						"km-js",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"km-sv-5",
						0
					],
					"destination": [
						"km-js",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"km-ld-5",
						0
					],
					"destination": [
						"km-js",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"km-sv-6",
						0
					],
					"destination": [
						"km-js",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"km-ld-6",
						0
					],
					"destination": [
						"km-js",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"km-sv-7",
						0
					],
					"destination": [
						"km-js",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"km-ld-7",
						0
					],
					"destination": [
						"km-js",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"km-js",
						3
					],
					"destination": [
						"km-status-route",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"midi-in",
						0
					],
					"destination": [
						"midi-strip",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"midi-in",
						1
					],
					"destination": [
						"midi-strip",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"midi-strip",
						0
					],
					"destination": [
						"midi-sel",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"midi-sel",
						0
					],
					"destination": [
						"mt-0",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"midi-sel",
						1
					],
					"destination": [
						"mt-1",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"midi-sel",
						2
					],
					"destination": [
						"mt-2",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"midi-sel",
						3
					],
					"destination": [
						"mt-3",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"midi-sel",
						4
					],
					"destination": [
						"mt-4",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"midi-sel",
						5
					],
					"destination": [
						"mt-5",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vt-0",
						0
					],
					"destination": [
						"vc-0",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vt-1",
						0
					],
					"destination": [
						"vc-1",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vt-2",
						0
					],
					"destination": [
						"vc-2",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vt-3",
						0
					],
					"destination": [
						"vc-3",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vt-4",
						0
					],
					"destination": [
						"vc-4",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vt-5",
						0
					],
					"destination": [
						"vc-5",
						0
					]
				}
			}
		]
	}
}