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
			20,
			40,
			1160,
			1180
		],
		"bglocked": 0,
		"openinpresentation": 0,
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
		"description": "Dream Xeno Box - 6-Voice Polymetric Alien Percussion Groovebox",
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
					"text": "DREAM XENO BOX",
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
						45,
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
						75,
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
					"id": "tr-bpmi",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						105,
						75,
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
						75,
						50,
						22
					],
					"outlettype": [
						"",
						"bang"
					],
					"minimum": 30,
					"maximum": 300
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
						75,
						30,
						20
					],
					"text": "BPM"
				}
			},
			{
				"box": {
					"id": "tr-calc",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						255,
						75,
						135,
						22
					],
					"outlettype": [
						""
					],
					"text": "expr 60000. / ($f1 * 4.)"
				}
			},
			{
				"box": {
					"id": "tr-play",
					"maxclass": "toggle",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						435,
						71,
						28,
						28
					],
					"outlettype": [
						"int"
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
						470,
						75,
						40,
						20
					],
					"text": "PLAY",
					"fontface": 1
				}
			},
			{
				"box": {
					"id": "tr-metro",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						435,
						105,
						65,
						22
					],
					"outlettype": [
						"bang"
					],
					"text": "metro 125"
				}
			},
			{
				"box": {
					"id": "tr-cnt",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 4,
					"patching_rect": [
						435,
						135,
						110,
						22
					],
					"outlettype": [
						"int",
						"",
						"",
						"int"
					],
					"text": "counter 0 255"
				}
			},
			{
				"box": {
					"id": "tr-sl",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						570,
						135,
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
						615,
						135,
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
					"id": "sec-sq",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						30,
						105,
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
						122,
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
						146,
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
						170,
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
						194,
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
						218,
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
						242,
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
					"id": "sq-grid",
					"maxclass": "matrixctrl",
					"numinlets": 1,
					"numoutlets": 2,
					"patching_rect": [
						75,
						120,
						780,
						144
					],
					"outlettype": [
						"list",
						""
					],
					"parameter_enable": 0,
					"columns": 32,
					"rows": 6
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
						105,
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
						120,
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
						120,
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
						142,
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
						144,
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
						144,
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
						166,
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
						168,
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
						168,
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
						190,
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
						192,
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
						192,
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
						214,
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
						216,
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
						216,
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
						238,
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
						240,
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
						240,
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
						262,
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
					"numoutlets": 7,
					"patching_rect": [
						75,
						285,
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
						315,
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
						315,
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
						330,
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
						352,
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
						352,
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
						382,
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
						412,
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
									"code": "Param pitch(60);\nParam decay_ms(200);\nParam exciter_type(0);\nParam body_type(0);\nParam stress(0.3);\nParam bloom(0.3);\nParam scar(0);\nParam weight(0.5);\nParam mist(0.2);\nParam heat_macro(0.3);\nParam drift_param(0);\nParam density_param(0.5);\n\nHistory prev_trig(0);\nHistory pressure(0);\nHistory heat_state(0);\nHistory fatigue(0);\nHistory exc_car_phase(0);\nHistory exc_mod_phase(0);\nHistory exc_env(0);\nHistory noise_filt(0);\nHistory ry1_a(0);\nHistory ry2_a(0);\nHistory ry1_b(0);\nHistory ry2_b(0);\nHistory ry1_c(0);\nHistory ry2_c(0);\nHistory ry1_d(0);\nHistory ry2_d(0);\nHistory comb_lp(0);\nHistory halo_env(0);\nHistory main_env(0);\nHistory pitch_env(0);\nHistory fb_state(0);\nHistory fb_hp(0);\nHistory cav_lp(0);\nDelay comb_d(8820);\nDelay cav_d(8820);\n\ntrig_on = (in1 > 0.5) * (prev_trig <= 0.5);\nvel = in1;\nprev_trig = in1;\n\nif (trig_on) {\n    pressure = min(pressure + vel * (0.3 + stress * 0.7) * (1 - pressure), 1);\n    fatigue = min(fatigue + 0.02 * (1 - fatigue), 1);\n    exc_env = 1;\n    halo_env = vel * mist;\n    main_env = vel;\n    pitch_env = vel;\n}\n\np_decay = 0.00002 + (1 - stress) * 0.00008;\npressure = pressure * (1 - p_decay);\nheat_state = heat_state + (pressure - heat_state) * 0.0002;\nheat_state = heat_state * (1 - 0.00005);\nfatigue = fatigue * (1 - 0.000002);\nstiffness = fatigue * 0.6 + pressure * 0.4;\n\neff_heat = clamp(heat_macro + heat_state * 0.5, 0, 1);\neff_scar = clamp(scar + pressure * stress, 0, 1);\n\np_env_rate = 0.002 + weight * 0.008;\npitch_env = pitch_env * (1 - p_env_rate);\np_sweep = pitch_env * weight * 24;\np_mod = pitch + p_sweep + noise() * pressure * drift_param * 2;\nbase_freq = mtof(clamp(p_mod, 10, 130));\nw_scale = 1 - weight * 0.8;\nbody_freq = base_freq * w_scale;\n\ne_decay = 0.001 + density_param * 0.003;\nexc_env = exc_env * (1 - e_decay);\n\nexciter_out = 0;\nif (exciter_type < 0.5) {\n    fm_r = 1.41 + eff_heat * 2;\n    mf = base_freq * fm_r;\n    fm_idx = (8 + eff_heat * 12) * exc_env;\n    exc_mod_phase = wrap(exc_mod_phase + mf / samplerate, 0, 1);\n    mod_sig = sin(exc_mod_phase * twopi) * fm_idx;\n    exc_car_phase = wrap(exc_car_phase + base_freq / samplerate, 0, 1);\n    exciter_out = sin(exc_car_phase * twopi + mod_sig) * exc_env;\n} else {\n    n = noise();\n    cutoff = base_freq * (2 + eff_heat * 8);\n    coeff = clamp(1 - exp(-twopi * cutoff / samplerate), 0.001, 0.999);\n    noise_filt = noise_filt + (n - noise_filt) * coeff;\n    exciter_out = noise_filt * 4 * exc_env;\n}\n\nfb_gain = mist * (0.5 + stress * 0.5);\nfb_gain = clamp(fb_gain, 0, 0.95);\nhp_cut = 200 + (1 - weight) * 800;\nhp_c = clamp(1 - exp(-twopi * hp_cut / samplerate), 0.001, 0.999);\nfb_lp = fb_hp + (fb_state - fb_hp) * hp_c;\nfb_hp = fb_lp;\nfb_hpf = fb_state - fb_lp;\nfb_ltd = tanh(fb_hpf * 2) * 0.5;\nbl_rate = 0.000005 + (1 - bloom) * 0.0003;\nhalo_env = halo_env * (1 - bl_rate);\nfb_sig = fb_ltd * fb_gain * halo_env;\nbody_input = exciter_out + fb_sig;\n\neff_decay = decay_ms * decay_ms * 1.25;\ndecay_norm = clamp(eff_decay / 8000, 0, 1);\neff_Q = clamp(0.98 + decay_norm * 0.015 - fatigue * 0.3, 0.8, 0.9995);\n\nbody_out = 0;\nif (body_type < 0.5) {\n    w1 = twopi * body_freq * 1.0 / samplerate;\n    r1 = eff_Q;\n    ya = body_input + 2 * r1 * cos(w1) * ry1_a - r1 * r1 * ry2_a;\n    ry2_a = ry1_a; ry1_a = ya;\n    w2 = twopi * body_freq * (1.347 + stiffness * 0.15) / samplerate;\n    r2 = eff_Q * 0.99;\n    yb = body_input + 2 * r2 * cos(w2) * ry1_b - r2 * r2 * ry2_b;\n    ry2_b = ry1_b; ry1_b = yb;\n    w3 = twopi * body_freq * (1.891 + stiffness * 0.2) / samplerate;\n    r3 = eff_Q * 0.98;\n    yc = body_input + 2 * r3 * cos(w3) * ry1_c - r3 * r3 * ry2_c;\n    ry2_c = ry1_c; ry1_c = yc;\n    w4 = twopi * body_freq * (2.534 + stiffness * 0.3) / samplerate;\n    r4 = eff_Q * 0.97;\n    yd = body_input + 2 * r4 * cos(w4) * ry1_d - r4 * r4 * ry2_d;\n    ry2_d = ry1_d; ry1_d = yd;\n    body_out = (ya + yb * 0.7 + yc * 0.45 + yd * 0.3) * 0.25;\n} else if (body_type < 1.5) {\n    d_samps = clamp(samplerate / body_freq, 2, 8000);\n    fb = eff_Q * 0.9;\n    delayed = comb_d.read(d_samps);\n    d_coeff = 0.3 + fatigue * 0.4;\n    comb_lp = comb_lp + (delayed - comb_lp) * d_coeff;\n    comb_d.write(body_input + comb_lp * fb);\n    body_out = delayed;\n} else if (body_type < 2.5) {\n    cav_len = clamp(samplerate / (body_freq * 0.5), 2, 8000);\n    cav_fb = eff_Q * (0.85 + pressure * 0.1);\n    cav_fb = clamp(cav_fb, 0, 0.995);\n    cav_del = cav_d.read(cav_len);\n    cav_cut = 0.2 + (1 - pressure) * 0.3 + eff_heat * 0.3;\n    cav_lp = cav_lp + (cav_del - cav_lp) * cav_cut;\n    cav_d.write(body_input + cav_lp * cav_fb);\n    w1 = twopi * body_freq * 1.0 / samplerate;\n    r1 = eff_Q * 0.95;\n    ya = cav_del + 2 * r1 * cos(w1) * ry1_a - r1 * r1 * ry2_a;\n    ry2_a = ry1_a; ry1_a = ya;\n    body_out = (cav_del * 0.6 + ya * 0.4);\n} else {\n    mem_r1 = 1.0;\n    mem_r2 = 1.594;\n    mem_r3 = 2.136;\n    mem_r4 = 2.296;\n    w1 = twopi * body_freq * mem_r1 / samplerate;\n    r1 = eff_Q * 0.998;\n    ya = body_input + 2 * r1 * cos(w1) * ry1_a - r1 * r1 * ry2_a;\n    ry2_a = ry1_a; ry1_a = ya;\n    w2 = twopi * body_freq * mem_r2 / samplerate;\n    r2 = eff_Q * 0.99;\n    yb = body_input + 2 * r2 * cos(w2) * ry1_b - r2 * r2 * ry2_b;\n    ry2_b = ry1_b; ry1_b = yb;\n    w3 = twopi * body_freq * mem_r3 / samplerate;\n    r3 = eff_Q * 0.985;\n    yc = body_input + 2 * r3 * cos(w3) * ry1_c - r3 * r3 * ry2_c;\n    ry2_c = ry1_c; ry1_c = yc;\n    w4 = twopi * body_freq * mem_r4 / samplerate;\n    r4 = eff_Q * 0.98;\n    yd = body_input + 2 * r4 * cos(w4) * ry1_d - r4 * r4 * ry2_d;\n    ry2_d = ry1_d; ry1_d = yd;\n    body_out = (ya * 0.5 + yb * 0.25 + yc * 0.15 + yd * 0.1);\n}\n\nfold_d = 1 + eff_scar * 4;\nfractured = body_out;\nif (eff_scar > 0.01) {\n    biased = body_out + pressure * 0.3;\n    folded = asin(sin(biased * fold_d * 1.5707963)) * 0.6366197;\n    fractured = body_out * (1 - eff_scar) + folded * eff_scar;\n}\n\nfb_source = body_out * (1 - stress) + fractured * stress;\nfb_state = fb_source;\n\nenv_rate = 1.0 / max(eff_decay * samplerate / 1000, 1);\nmain_env = main_env * (1 - env_rate);\n\nout_env = max(main_env, halo_env * mist);\nout1 = fractured * out_env;"
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
						442,
						55,
						22
					],
					"outlettype": [
						"signal"
					],
					"text": "*~ 0.5"
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
						472,
						80,
						22
					],
					"text": "send~ v0_out"
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
						330,
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
						352,
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
						352,
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
						382,
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
						412,
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
									"code": "Param pitch(60);\nParam decay_ms(200);\nParam exciter_type(0);\nParam body_type(0);\nParam stress(0.3);\nParam bloom(0.3);\nParam scar(0);\nParam weight(0.5);\nParam mist(0.2);\nParam heat_macro(0.3);\nParam drift_param(0);\nParam density_param(0.5);\n\nHistory prev_trig(0);\nHistory pressure(0);\nHistory heat_state(0);\nHistory fatigue(0);\nHistory exc_car_phase(0);\nHistory exc_mod_phase(0);\nHistory exc_env(0);\nHistory noise_filt(0);\nHistory ry1_a(0);\nHistory ry2_a(0);\nHistory ry1_b(0);\nHistory ry2_b(0);\nHistory ry1_c(0);\nHistory ry2_c(0);\nHistory ry1_d(0);\nHistory ry2_d(0);\nHistory comb_lp(0);\nHistory halo_env(0);\nHistory main_env(0);\nHistory pitch_env(0);\nHistory fb_state(0);\nHistory fb_hp(0);\nHistory cav_lp(0);\nDelay comb_d(8820);\nDelay cav_d(8820);\n\ntrig_on = (in1 > 0.5) * (prev_trig <= 0.5);\nvel = in1;\nprev_trig = in1;\n\nif (trig_on) {\n    pressure = min(pressure + vel * (0.3 + stress * 0.7) * (1 - pressure), 1);\n    fatigue = min(fatigue + 0.02 * (1 - fatigue), 1);\n    exc_env = 1;\n    halo_env = vel * mist;\n    main_env = vel;\n    pitch_env = vel;\n}\n\np_decay = 0.00002 + (1 - stress) * 0.00008;\npressure = pressure * (1 - p_decay);\nheat_state = heat_state + (pressure - heat_state) * 0.0002;\nheat_state = heat_state * (1 - 0.00005);\nfatigue = fatigue * (1 - 0.000002);\nstiffness = fatigue * 0.6 + pressure * 0.4;\n\neff_heat = clamp(heat_macro + heat_state * 0.5, 0, 1);\neff_scar = clamp(scar + pressure * stress, 0, 1);\n\np_env_rate = 0.002 + weight * 0.008;\npitch_env = pitch_env * (1 - p_env_rate);\np_sweep = pitch_env * weight * 24;\np_mod = pitch + p_sweep + noise() * pressure * drift_param * 2;\nbase_freq = mtof(clamp(p_mod, 10, 130));\nw_scale = 1 - weight * 0.8;\nbody_freq = base_freq * w_scale;\n\ne_decay = 0.001 + density_param * 0.003;\nexc_env = exc_env * (1 - e_decay);\n\nexciter_out = 0;\nif (exciter_type < 0.5) {\n    fm_r = 1.41 + eff_heat * 2;\n    mf = base_freq * fm_r;\n    fm_idx = (8 + eff_heat * 12) * exc_env;\n    exc_mod_phase = wrap(exc_mod_phase + mf / samplerate, 0, 1);\n    mod_sig = sin(exc_mod_phase * twopi) * fm_idx;\n    exc_car_phase = wrap(exc_car_phase + base_freq / samplerate, 0, 1);\n    exciter_out = sin(exc_car_phase * twopi + mod_sig) * exc_env;\n} else {\n    n = noise();\n    cutoff = base_freq * (2 + eff_heat * 8);\n    coeff = clamp(1 - exp(-twopi * cutoff / samplerate), 0.001, 0.999);\n    noise_filt = noise_filt + (n - noise_filt) * coeff;\n    exciter_out = noise_filt * 4 * exc_env;\n}\n\nfb_gain = mist * (0.5 + stress * 0.5);\nfb_gain = clamp(fb_gain, 0, 0.95);\nhp_cut = 200 + (1 - weight) * 800;\nhp_c = clamp(1 - exp(-twopi * hp_cut / samplerate), 0.001, 0.999);\nfb_lp = fb_hp + (fb_state - fb_hp) * hp_c;\nfb_hp = fb_lp;\nfb_hpf = fb_state - fb_lp;\nfb_ltd = tanh(fb_hpf * 2) * 0.5;\nbl_rate = 0.000005 + (1 - bloom) * 0.0003;\nhalo_env = halo_env * (1 - bl_rate);\nfb_sig = fb_ltd * fb_gain * halo_env;\nbody_input = exciter_out + fb_sig;\n\neff_decay = decay_ms * decay_ms * 1.25;\ndecay_norm = clamp(eff_decay / 8000, 0, 1);\neff_Q = clamp(0.98 + decay_norm * 0.015 - fatigue * 0.3, 0.8, 0.9995);\n\nbody_out = 0;\nif (body_type < 0.5) {\n    w1 = twopi * body_freq * 1.0 / samplerate;\n    r1 = eff_Q;\n    ya = body_input + 2 * r1 * cos(w1) * ry1_a - r1 * r1 * ry2_a;\n    ry2_a = ry1_a; ry1_a = ya;\n    w2 = twopi * body_freq * (1.347 + stiffness * 0.15) / samplerate;\n    r2 = eff_Q * 0.99;\n    yb = body_input + 2 * r2 * cos(w2) * ry1_b - r2 * r2 * ry2_b;\n    ry2_b = ry1_b; ry1_b = yb;\n    w3 = twopi * body_freq * (1.891 + stiffness * 0.2) / samplerate;\n    r3 = eff_Q * 0.98;\n    yc = body_input + 2 * r3 * cos(w3) * ry1_c - r3 * r3 * ry2_c;\n    ry2_c = ry1_c; ry1_c = yc;\n    w4 = twopi * body_freq * (2.534 + stiffness * 0.3) / samplerate;\n    r4 = eff_Q * 0.97;\n    yd = body_input + 2 * r4 * cos(w4) * ry1_d - r4 * r4 * ry2_d;\n    ry2_d = ry1_d; ry1_d = yd;\n    body_out = (ya + yb * 0.7 + yc * 0.45 + yd * 0.3) * 0.25;\n} else if (body_type < 1.5) {\n    d_samps = clamp(samplerate / body_freq, 2, 8000);\n    fb = eff_Q * 0.9;\n    delayed = comb_d.read(d_samps);\n    d_coeff = 0.3 + fatigue * 0.4;\n    comb_lp = comb_lp + (delayed - comb_lp) * d_coeff;\n    comb_d.write(body_input + comb_lp * fb);\n    body_out = delayed;\n} else if (body_type < 2.5) {\n    cav_len = clamp(samplerate / (body_freq * 0.5), 2, 8000);\n    cav_fb = eff_Q * (0.85 + pressure * 0.1);\n    cav_fb = clamp(cav_fb, 0, 0.995);\n    cav_del = cav_d.read(cav_len);\n    cav_cut = 0.2 + (1 - pressure) * 0.3 + eff_heat * 0.3;\n    cav_lp = cav_lp + (cav_del - cav_lp) * cav_cut;\n    cav_d.write(body_input + cav_lp * cav_fb);\n    w1 = twopi * body_freq * 1.0 / samplerate;\n    r1 = eff_Q * 0.95;\n    ya = cav_del + 2 * r1 * cos(w1) * ry1_a - r1 * r1 * ry2_a;\n    ry2_a = ry1_a; ry1_a = ya;\n    body_out = (cav_del * 0.6 + ya * 0.4);\n} else {\n    mem_r1 = 1.0;\n    mem_r2 = 1.594;\n    mem_r3 = 2.136;\n    mem_r4 = 2.296;\n    w1 = twopi * body_freq * mem_r1 / samplerate;\n    r1 = eff_Q * 0.998;\n    ya = body_input + 2 * r1 * cos(w1) * ry1_a - r1 * r1 * ry2_a;\n    ry2_a = ry1_a; ry1_a = ya;\n    w2 = twopi * body_freq * mem_r2 / samplerate;\n    r2 = eff_Q * 0.99;\n    yb = body_input + 2 * r2 * cos(w2) * ry1_b - r2 * r2 * ry2_b;\n    ry2_b = ry1_b; ry1_b = yb;\n    w3 = twopi * body_freq * mem_r3 / samplerate;\n    r3 = eff_Q * 0.985;\n    yc = body_input + 2 * r3 * cos(w3) * ry1_c - r3 * r3 * ry2_c;\n    ry2_c = ry1_c; ry1_c = yc;\n    w4 = twopi * body_freq * mem_r4 / samplerate;\n    r4 = eff_Q * 0.98;\n    yd = body_input + 2 * r4 * cos(w4) * ry1_d - r4 * r4 * ry2_d;\n    ry2_d = ry1_d; ry1_d = yd;\n    body_out = (ya * 0.5 + yb * 0.25 + yc * 0.15 + yd * 0.1);\n}\n\nfold_d = 1 + eff_scar * 4;\nfractured = body_out;\nif (eff_scar > 0.01) {\n    biased = body_out + pressure * 0.3;\n    folded = asin(sin(biased * fold_d * 1.5707963)) * 0.6366197;\n    fractured = body_out * (1 - eff_scar) + folded * eff_scar;\n}\n\nfb_source = body_out * (1 - stress) + fractured * stress;\nfb_state = fb_source;\n\nenv_rate = 1.0 / max(eff_decay * samplerate / 1000, 1);\nmain_env = main_env * (1 - env_rate);\n\nout_env = max(main_env, halo_env * mist);\nout1 = fractured * out_env;"
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
						442,
						55,
						22
					],
					"outlettype": [
						"signal"
					],
					"text": "*~ 0.3"
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
						472,
						80,
						22
					],
					"text": "send~ v1_out"
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
						330,
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
						352,
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
						352,
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
						382,
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
						412,
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
									"code": "Param pitch(60);\nParam decay_ms(200);\nParam exciter_type(0);\nParam body_type(0);\nParam stress(0.3);\nParam bloom(0.3);\nParam scar(0);\nParam weight(0.5);\nParam mist(0.2);\nParam heat_macro(0.3);\nParam drift_param(0);\nParam density_param(0.5);\n\nHistory prev_trig(0);\nHistory pressure(0);\nHistory heat_state(0);\nHistory fatigue(0);\nHistory exc_car_phase(0);\nHistory exc_mod_phase(0);\nHistory exc_env(0);\nHistory noise_filt(0);\nHistory ry1_a(0);\nHistory ry2_a(0);\nHistory ry1_b(0);\nHistory ry2_b(0);\nHistory ry1_c(0);\nHistory ry2_c(0);\nHistory ry1_d(0);\nHistory ry2_d(0);\nHistory comb_lp(0);\nHistory halo_env(0);\nHistory main_env(0);\nHistory pitch_env(0);\nHistory fb_state(0);\nHistory fb_hp(0);\nHistory cav_lp(0);\nDelay comb_d(8820);\nDelay cav_d(8820);\n\ntrig_on = (in1 > 0.5) * (prev_trig <= 0.5);\nvel = in1;\nprev_trig = in1;\n\nif (trig_on) {\n    pressure = min(pressure + vel * (0.3 + stress * 0.7) * (1 - pressure), 1);\n    fatigue = min(fatigue + 0.02 * (1 - fatigue), 1);\n    exc_env = 1;\n    halo_env = vel * mist;\n    main_env = vel;\n    pitch_env = vel;\n}\n\np_decay = 0.00002 + (1 - stress) * 0.00008;\npressure = pressure * (1 - p_decay);\nheat_state = heat_state + (pressure - heat_state) * 0.0002;\nheat_state = heat_state * (1 - 0.00005);\nfatigue = fatigue * (1 - 0.000002);\nstiffness = fatigue * 0.6 + pressure * 0.4;\n\neff_heat = clamp(heat_macro + heat_state * 0.5, 0, 1);\neff_scar = clamp(scar + pressure * stress, 0, 1);\n\np_env_rate = 0.002 + weight * 0.008;\npitch_env = pitch_env * (1 - p_env_rate);\np_sweep = pitch_env * weight * 24;\np_mod = pitch + p_sweep + noise() * pressure * drift_param * 2;\nbase_freq = mtof(clamp(p_mod, 10, 130));\nw_scale = 1 - weight * 0.8;\nbody_freq = base_freq * w_scale;\n\ne_decay = 0.001 + density_param * 0.003;\nexc_env = exc_env * (1 - e_decay);\n\nexciter_out = 0;\nif (exciter_type < 0.5) {\n    fm_r = 1.41 + eff_heat * 2;\n    mf = base_freq * fm_r;\n    fm_idx = (8 + eff_heat * 12) * exc_env;\n    exc_mod_phase = wrap(exc_mod_phase + mf / samplerate, 0, 1);\n    mod_sig = sin(exc_mod_phase * twopi) * fm_idx;\n    exc_car_phase = wrap(exc_car_phase + base_freq / samplerate, 0, 1);\n    exciter_out = sin(exc_car_phase * twopi + mod_sig) * exc_env;\n} else {\n    n = noise();\n    cutoff = base_freq * (2 + eff_heat * 8);\n    coeff = clamp(1 - exp(-twopi * cutoff / samplerate), 0.001, 0.999);\n    noise_filt = noise_filt + (n - noise_filt) * coeff;\n    exciter_out = noise_filt * 4 * exc_env;\n}\n\nfb_gain = mist * (0.5 + stress * 0.5);\nfb_gain = clamp(fb_gain, 0, 0.95);\nhp_cut = 200 + (1 - weight) * 800;\nhp_c = clamp(1 - exp(-twopi * hp_cut / samplerate), 0.001, 0.999);\nfb_lp = fb_hp + (fb_state - fb_hp) * hp_c;\nfb_hp = fb_lp;\nfb_hpf = fb_state - fb_lp;\nfb_ltd = tanh(fb_hpf * 2) * 0.5;\nbl_rate = 0.000005 + (1 - bloom) * 0.0003;\nhalo_env = halo_env * (1 - bl_rate);\nfb_sig = fb_ltd * fb_gain * halo_env;\nbody_input = exciter_out + fb_sig;\n\neff_decay = decay_ms * decay_ms * 1.25;\ndecay_norm = clamp(eff_decay / 8000, 0, 1);\neff_Q = clamp(0.98 + decay_norm * 0.015 - fatigue * 0.3, 0.8, 0.9995);\n\nbody_out = 0;\nif (body_type < 0.5) {\n    w1 = twopi * body_freq * 1.0 / samplerate;\n    r1 = eff_Q;\n    ya = body_input + 2 * r1 * cos(w1) * ry1_a - r1 * r1 * ry2_a;\n    ry2_a = ry1_a; ry1_a = ya;\n    w2 = twopi * body_freq * (1.347 + stiffness * 0.15) / samplerate;\n    r2 = eff_Q * 0.99;\n    yb = body_input + 2 * r2 * cos(w2) * ry1_b - r2 * r2 * ry2_b;\n    ry2_b = ry1_b; ry1_b = yb;\n    w3 = twopi * body_freq * (1.891 + stiffness * 0.2) / samplerate;\n    r3 = eff_Q * 0.98;\n    yc = body_input + 2 * r3 * cos(w3) * ry1_c - r3 * r3 * ry2_c;\n    ry2_c = ry1_c; ry1_c = yc;\n    w4 = twopi * body_freq * (2.534 + stiffness * 0.3) / samplerate;\n    r4 = eff_Q * 0.97;\n    yd = body_input + 2 * r4 * cos(w4) * ry1_d - r4 * r4 * ry2_d;\n    ry2_d = ry1_d; ry1_d = yd;\n    body_out = (ya + yb * 0.7 + yc * 0.45 + yd * 0.3) * 0.25;\n} else if (body_type < 1.5) {\n    d_samps = clamp(samplerate / body_freq, 2, 8000);\n    fb = eff_Q * 0.9;\n    delayed = comb_d.read(d_samps);\n    d_coeff = 0.3 + fatigue * 0.4;\n    comb_lp = comb_lp + (delayed - comb_lp) * d_coeff;\n    comb_d.write(body_input + comb_lp * fb);\n    body_out = delayed;\n} else if (body_type < 2.5) {\n    cav_len = clamp(samplerate / (body_freq * 0.5), 2, 8000);\n    cav_fb = eff_Q * (0.85 + pressure * 0.1);\n    cav_fb = clamp(cav_fb, 0, 0.995);\n    cav_del = cav_d.read(cav_len);\n    cav_cut = 0.2 + (1 - pressure) * 0.3 + eff_heat * 0.3;\n    cav_lp = cav_lp + (cav_del - cav_lp) * cav_cut;\n    cav_d.write(body_input + cav_lp * cav_fb);\n    w1 = twopi * body_freq * 1.0 / samplerate;\n    r1 = eff_Q * 0.95;\n    ya = cav_del + 2 * r1 * cos(w1) * ry1_a - r1 * r1 * ry2_a;\n    ry2_a = ry1_a; ry1_a = ya;\n    body_out = (cav_del * 0.6 + ya * 0.4);\n} else {\n    mem_r1 = 1.0;\n    mem_r2 = 1.594;\n    mem_r3 = 2.136;\n    mem_r4 = 2.296;\n    w1 = twopi * body_freq * mem_r1 / samplerate;\n    r1 = eff_Q * 0.998;\n    ya = body_input + 2 * r1 * cos(w1) * ry1_a - r1 * r1 * ry2_a;\n    ry2_a = ry1_a; ry1_a = ya;\n    w2 = twopi * body_freq * mem_r2 / samplerate;\n    r2 = eff_Q * 0.99;\n    yb = body_input + 2 * r2 * cos(w2) * ry1_b - r2 * r2 * ry2_b;\n    ry2_b = ry1_b; ry1_b = yb;\n    w3 = twopi * body_freq * mem_r3 / samplerate;\n    r3 = eff_Q * 0.985;\n    yc = body_input + 2 * r3 * cos(w3) * ry1_c - r3 * r3 * ry2_c;\n    ry2_c = ry1_c; ry1_c = yc;\n    w4 = twopi * body_freq * mem_r4 / samplerate;\n    r4 = eff_Q * 0.98;\n    yd = body_input + 2 * r4 * cos(w4) * ry1_d - r4 * r4 * ry2_d;\n    ry2_d = ry1_d; ry1_d = yd;\n    body_out = (ya * 0.5 + yb * 0.25 + yc * 0.15 + yd * 0.1);\n}\n\nfold_d = 1 + eff_scar * 4;\nfractured = body_out;\nif (eff_scar > 0.01) {\n    biased = body_out + pressure * 0.3;\n    folded = asin(sin(biased * fold_d * 1.5707963)) * 0.6366197;\n    fractured = body_out * (1 - eff_scar) + folded * eff_scar;\n}\n\nfb_source = body_out * (1 - stress) + fractured * stress;\nfb_state = fb_source;\n\nenv_rate = 1.0 / max(eff_decay * samplerate / 1000, 1);\nmain_env = main_env * (1 - env_rate);\n\nout_env = max(main_env, halo_env * mist);\nout1 = fractured * out_env;"
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
						442,
						55,
						22
					],
					"outlettype": [
						"signal"
					],
					"text": "*~ 0.25"
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
						472,
						80,
						22
					],
					"text": "send~ v2_out"
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
						330,
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
						352,
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
						352,
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
						382,
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
						412,
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
									"code": "Param pitch(60);\nParam decay_ms(200);\nParam exciter_type(0);\nParam body_type(0);\nParam stress(0.3);\nParam bloom(0.3);\nParam scar(0);\nParam weight(0.5);\nParam mist(0.2);\nParam heat_macro(0.3);\nParam drift_param(0);\nParam density_param(0.5);\n\nHistory prev_trig(0);\nHistory pressure(0);\nHistory heat_state(0);\nHistory fatigue(0);\nHistory exc_car_phase(0);\nHistory exc_mod_phase(0);\nHistory exc_env(0);\nHistory noise_filt(0);\nHistory ry1_a(0);\nHistory ry2_a(0);\nHistory ry1_b(0);\nHistory ry2_b(0);\nHistory ry1_c(0);\nHistory ry2_c(0);\nHistory ry1_d(0);\nHistory ry2_d(0);\nHistory comb_lp(0);\nHistory halo_env(0);\nHistory main_env(0);\nHistory pitch_env(0);\nHistory fb_state(0);\nHistory fb_hp(0);\nHistory cav_lp(0);\nDelay comb_d(8820);\nDelay cav_d(8820);\n\ntrig_on = (in1 > 0.5) * (prev_trig <= 0.5);\nvel = in1;\nprev_trig = in1;\n\nif (trig_on) {\n    pressure = min(pressure + vel * (0.3 + stress * 0.7) * (1 - pressure), 1);\n    fatigue = min(fatigue + 0.02 * (1 - fatigue), 1);\n    exc_env = 1;\n    halo_env = vel * mist;\n    main_env = vel;\n    pitch_env = vel;\n}\n\np_decay = 0.00002 + (1 - stress) * 0.00008;\npressure = pressure * (1 - p_decay);\nheat_state = heat_state + (pressure - heat_state) * 0.0002;\nheat_state = heat_state * (1 - 0.00005);\nfatigue = fatigue * (1 - 0.000002);\nstiffness = fatigue * 0.6 + pressure * 0.4;\n\neff_heat = clamp(heat_macro + heat_state * 0.5, 0, 1);\neff_scar = clamp(scar + pressure * stress, 0, 1);\n\np_env_rate = 0.002 + weight * 0.008;\npitch_env = pitch_env * (1 - p_env_rate);\np_sweep = pitch_env * weight * 24;\np_mod = pitch + p_sweep + noise() * pressure * drift_param * 2;\nbase_freq = mtof(clamp(p_mod, 10, 130));\nw_scale = 1 - weight * 0.8;\nbody_freq = base_freq * w_scale;\n\ne_decay = 0.001 + density_param * 0.003;\nexc_env = exc_env * (1 - e_decay);\n\nexciter_out = 0;\nif (exciter_type < 0.5) {\n    fm_r = 1.41 + eff_heat * 2;\n    mf = base_freq * fm_r;\n    fm_idx = (8 + eff_heat * 12) * exc_env;\n    exc_mod_phase = wrap(exc_mod_phase + mf / samplerate, 0, 1);\n    mod_sig = sin(exc_mod_phase * twopi) * fm_idx;\n    exc_car_phase = wrap(exc_car_phase + base_freq / samplerate, 0, 1);\n    exciter_out = sin(exc_car_phase * twopi + mod_sig) * exc_env;\n} else {\n    n = noise();\n    cutoff = base_freq * (2 + eff_heat * 8);\n    coeff = clamp(1 - exp(-twopi * cutoff / samplerate), 0.001, 0.999);\n    noise_filt = noise_filt + (n - noise_filt) * coeff;\n    exciter_out = noise_filt * 4 * exc_env;\n}\n\nfb_gain = mist * (0.5 + stress * 0.5);\nfb_gain = clamp(fb_gain, 0, 0.95);\nhp_cut = 200 + (1 - weight) * 800;\nhp_c = clamp(1 - exp(-twopi * hp_cut / samplerate), 0.001, 0.999);\nfb_lp = fb_hp + (fb_state - fb_hp) * hp_c;\nfb_hp = fb_lp;\nfb_hpf = fb_state - fb_lp;\nfb_ltd = tanh(fb_hpf * 2) * 0.5;\nbl_rate = 0.000005 + (1 - bloom) * 0.0003;\nhalo_env = halo_env * (1 - bl_rate);\nfb_sig = fb_ltd * fb_gain * halo_env;\nbody_input = exciter_out + fb_sig;\n\neff_decay = decay_ms * decay_ms * 1.25;\ndecay_norm = clamp(eff_decay / 8000, 0, 1);\neff_Q = clamp(0.98 + decay_norm * 0.015 - fatigue * 0.3, 0.8, 0.9995);\n\nbody_out = 0;\nif (body_type < 0.5) {\n    w1 = twopi * body_freq * 1.0 / samplerate;\n    r1 = eff_Q;\n    ya = body_input + 2 * r1 * cos(w1) * ry1_a - r1 * r1 * ry2_a;\n    ry2_a = ry1_a; ry1_a = ya;\n    w2 = twopi * body_freq * (1.347 + stiffness * 0.15) / samplerate;\n    r2 = eff_Q * 0.99;\n    yb = body_input + 2 * r2 * cos(w2) * ry1_b - r2 * r2 * ry2_b;\n    ry2_b = ry1_b; ry1_b = yb;\n    w3 = twopi * body_freq * (1.891 + stiffness * 0.2) / samplerate;\n    r3 = eff_Q * 0.98;\n    yc = body_input + 2 * r3 * cos(w3) * ry1_c - r3 * r3 * ry2_c;\n    ry2_c = ry1_c; ry1_c = yc;\n    w4 = twopi * body_freq * (2.534 + stiffness * 0.3) / samplerate;\n    r4 = eff_Q * 0.97;\n    yd = body_input + 2 * r4 * cos(w4) * ry1_d - r4 * r4 * ry2_d;\n    ry2_d = ry1_d; ry1_d = yd;\n    body_out = (ya + yb * 0.7 + yc * 0.45 + yd * 0.3) * 0.25;\n} else if (body_type < 1.5) {\n    d_samps = clamp(samplerate / body_freq, 2, 8000);\n    fb = eff_Q * 0.9;\n    delayed = comb_d.read(d_samps);\n    d_coeff = 0.3 + fatigue * 0.4;\n    comb_lp = comb_lp + (delayed - comb_lp) * d_coeff;\n    comb_d.write(body_input + comb_lp * fb);\n    body_out = delayed;\n} else if (body_type < 2.5) {\n    cav_len = clamp(samplerate / (body_freq * 0.5), 2, 8000);\n    cav_fb = eff_Q * (0.85 + pressure * 0.1);\n    cav_fb = clamp(cav_fb, 0, 0.995);\n    cav_del = cav_d.read(cav_len);\n    cav_cut = 0.2 + (1 - pressure) * 0.3 + eff_heat * 0.3;\n    cav_lp = cav_lp + (cav_del - cav_lp) * cav_cut;\n    cav_d.write(body_input + cav_lp * cav_fb);\n    w1 = twopi * body_freq * 1.0 / samplerate;\n    r1 = eff_Q * 0.95;\n    ya = cav_del + 2 * r1 * cos(w1) * ry1_a - r1 * r1 * ry2_a;\n    ry2_a = ry1_a; ry1_a = ya;\n    body_out = (cav_del * 0.6 + ya * 0.4);\n} else {\n    mem_r1 = 1.0;\n    mem_r2 = 1.594;\n    mem_r3 = 2.136;\n    mem_r4 = 2.296;\n    w1 = twopi * body_freq * mem_r1 / samplerate;\n    r1 = eff_Q * 0.998;\n    ya = body_input + 2 * r1 * cos(w1) * ry1_a - r1 * r1 * ry2_a;\n    ry2_a = ry1_a; ry1_a = ya;\n    w2 = twopi * body_freq * mem_r2 / samplerate;\n    r2 = eff_Q * 0.99;\n    yb = body_input + 2 * r2 * cos(w2) * ry1_b - r2 * r2 * ry2_b;\n    ry2_b = ry1_b; ry1_b = yb;\n    w3 = twopi * body_freq * mem_r3 / samplerate;\n    r3 = eff_Q * 0.985;\n    yc = body_input + 2 * r3 * cos(w3) * ry1_c - r3 * r3 * ry2_c;\n    ry2_c = ry1_c; ry1_c = yc;\n    w4 = twopi * body_freq * mem_r4 / samplerate;\n    r4 = eff_Q * 0.98;\n    yd = body_input + 2 * r4 * cos(w4) * ry1_d - r4 * r4 * ry2_d;\n    ry2_d = ry1_d; ry1_d = yd;\n    body_out = (ya * 0.5 + yb * 0.25 + yc * 0.15 + yd * 0.1);\n}\n\nfold_d = 1 + eff_scar * 4;\nfractured = body_out;\nif (eff_scar > 0.01) {\n    biased = body_out + pressure * 0.3;\n    folded = asin(sin(biased * fold_d * 1.5707963)) * 0.6366197;\n    fractured = body_out * (1 - eff_scar) + folded * eff_scar;\n}\n\nfb_source = body_out * (1 - stress) + fractured * stress;\nfb_state = fb_source;\n\nenv_rate = 1.0 / max(eff_decay * samplerate / 1000, 1);\nmain_env = main_env * (1 - env_rate);\n\nout_env = max(main_env, halo_env * mist);\nout1 = fractured * out_env;"
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
						442,
						55,
						22
					],
					"outlettype": [
						"signal"
					],
					"text": "*~ 0.3"
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
						472,
						80,
						22
					],
					"text": "send~ v3_out"
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
						330,
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
						352,
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
						352,
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
						382,
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
						412,
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
									"code": "Param pitch(60);\nParam decay_ms(200);\nParam exciter_type(0);\nParam body_type(0);\nParam stress(0.3);\nParam bloom(0.3);\nParam scar(0);\nParam weight(0.5);\nParam mist(0.2);\nParam heat_macro(0.3);\nParam drift_param(0);\nParam density_param(0.5);\n\nHistory prev_trig(0);\nHistory pressure(0);\nHistory heat_state(0);\nHistory fatigue(0);\nHistory exc_car_phase(0);\nHistory exc_mod_phase(0);\nHistory exc_env(0);\nHistory noise_filt(0);\nHistory ry1_a(0);\nHistory ry2_a(0);\nHistory ry1_b(0);\nHistory ry2_b(0);\nHistory ry1_c(0);\nHistory ry2_c(0);\nHistory ry1_d(0);\nHistory ry2_d(0);\nHistory comb_lp(0);\nHistory halo_env(0);\nHistory main_env(0);\nHistory pitch_env(0);\nHistory fb_state(0);\nHistory fb_hp(0);\nHistory cav_lp(0);\nDelay comb_d(8820);\nDelay cav_d(8820);\n\ntrig_on = (in1 > 0.5) * (prev_trig <= 0.5);\nvel = in1;\nprev_trig = in1;\n\nif (trig_on) {\n    pressure = min(pressure + vel * (0.3 + stress * 0.7) * (1 - pressure), 1);\n    fatigue = min(fatigue + 0.02 * (1 - fatigue), 1);\n    exc_env = 1;\n    halo_env = vel * mist;\n    main_env = vel;\n    pitch_env = vel;\n}\n\np_decay = 0.00002 + (1 - stress) * 0.00008;\npressure = pressure * (1 - p_decay);\nheat_state = heat_state + (pressure - heat_state) * 0.0002;\nheat_state = heat_state * (1 - 0.00005);\nfatigue = fatigue * (1 - 0.000002);\nstiffness = fatigue * 0.6 + pressure * 0.4;\n\neff_heat = clamp(heat_macro + heat_state * 0.5, 0, 1);\neff_scar = clamp(scar + pressure * stress, 0, 1);\n\np_env_rate = 0.002 + weight * 0.008;\npitch_env = pitch_env * (1 - p_env_rate);\np_sweep = pitch_env * weight * 24;\np_mod = pitch + p_sweep + noise() * pressure * drift_param * 2;\nbase_freq = mtof(clamp(p_mod, 10, 130));\nw_scale = 1 - weight * 0.8;\nbody_freq = base_freq * w_scale;\n\ne_decay = 0.001 + density_param * 0.003;\nexc_env = exc_env * (1 - e_decay);\n\nexciter_out = 0;\nif (exciter_type < 0.5) {\n    fm_r = 1.41 + eff_heat * 2;\n    mf = base_freq * fm_r;\n    fm_idx = (8 + eff_heat * 12) * exc_env;\n    exc_mod_phase = wrap(exc_mod_phase + mf / samplerate, 0, 1);\n    mod_sig = sin(exc_mod_phase * twopi) * fm_idx;\n    exc_car_phase = wrap(exc_car_phase + base_freq / samplerate, 0, 1);\n    exciter_out = sin(exc_car_phase * twopi + mod_sig) * exc_env;\n} else {\n    n = noise();\n    cutoff = base_freq * (2 + eff_heat * 8);\n    coeff = clamp(1 - exp(-twopi * cutoff / samplerate), 0.001, 0.999);\n    noise_filt = noise_filt + (n - noise_filt) * coeff;\n    exciter_out = noise_filt * 4 * exc_env;\n}\n\nfb_gain = mist * (0.5 + stress * 0.5);\nfb_gain = clamp(fb_gain, 0, 0.95);\nhp_cut = 200 + (1 - weight) * 800;\nhp_c = clamp(1 - exp(-twopi * hp_cut / samplerate), 0.001, 0.999);\nfb_lp = fb_hp + (fb_state - fb_hp) * hp_c;\nfb_hp = fb_lp;\nfb_hpf = fb_state - fb_lp;\nfb_ltd = tanh(fb_hpf * 2) * 0.5;\nbl_rate = 0.000005 + (1 - bloom) * 0.0003;\nhalo_env = halo_env * (1 - bl_rate);\nfb_sig = fb_ltd * fb_gain * halo_env;\nbody_input = exciter_out + fb_sig;\n\neff_decay = decay_ms * decay_ms * 1.25;\ndecay_norm = clamp(eff_decay / 8000, 0, 1);\neff_Q = clamp(0.98 + decay_norm * 0.015 - fatigue * 0.3, 0.8, 0.9995);\n\nbody_out = 0;\nif (body_type < 0.5) {\n    w1 = twopi * body_freq * 1.0 / samplerate;\n    r1 = eff_Q;\n    ya = body_input + 2 * r1 * cos(w1) * ry1_a - r1 * r1 * ry2_a;\n    ry2_a = ry1_a; ry1_a = ya;\n    w2 = twopi * body_freq * (1.347 + stiffness * 0.15) / samplerate;\n    r2 = eff_Q * 0.99;\n    yb = body_input + 2 * r2 * cos(w2) * ry1_b - r2 * r2 * ry2_b;\n    ry2_b = ry1_b; ry1_b = yb;\n    w3 = twopi * body_freq * (1.891 + stiffness * 0.2) / samplerate;\n    r3 = eff_Q * 0.98;\n    yc = body_input + 2 * r3 * cos(w3) * ry1_c - r3 * r3 * ry2_c;\n    ry2_c = ry1_c; ry1_c = yc;\n    w4 = twopi * body_freq * (2.534 + stiffness * 0.3) / samplerate;\n    r4 = eff_Q * 0.97;\n    yd = body_input + 2 * r4 * cos(w4) * ry1_d - r4 * r4 * ry2_d;\n    ry2_d = ry1_d; ry1_d = yd;\n    body_out = (ya + yb * 0.7 + yc * 0.45 + yd * 0.3) * 0.25;\n} else if (body_type < 1.5) {\n    d_samps = clamp(samplerate / body_freq, 2, 8000);\n    fb = eff_Q * 0.9;\n    delayed = comb_d.read(d_samps);\n    d_coeff = 0.3 + fatigue * 0.4;\n    comb_lp = comb_lp + (delayed - comb_lp) * d_coeff;\n    comb_d.write(body_input + comb_lp * fb);\n    body_out = delayed;\n} else if (body_type < 2.5) {\n    cav_len = clamp(samplerate / (body_freq * 0.5), 2, 8000);\n    cav_fb = eff_Q * (0.85 + pressure * 0.1);\n    cav_fb = clamp(cav_fb, 0, 0.995);\n    cav_del = cav_d.read(cav_len);\n    cav_cut = 0.2 + (1 - pressure) * 0.3 + eff_heat * 0.3;\n    cav_lp = cav_lp + (cav_del - cav_lp) * cav_cut;\n    cav_d.write(body_input + cav_lp * cav_fb);\n    w1 = twopi * body_freq * 1.0 / samplerate;\n    r1 = eff_Q * 0.95;\n    ya = cav_del + 2 * r1 * cos(w1) * ry1_a - r1 * r1 * ry2_a;\n    ry2_a = ry1_a; ry1_a = ya;\n    body_out = (cav_del * 0.6 + ya * 0.4);\n} else {\n    mem_r1 = 1.0;\n    mem_r2 = 1.594;\n    mem_r3 = 2.136;\n    mem_r4 = 2.296;\n    w1 = twopi * body_freq * mem_r1 / samplerate;\n    r1 = eff_Q * 0.998;\n    ya = body_input + 2 * r1 * cos(w1) * ry1_a - r1 * r1 * ry2_a;\n    ry2_a = ry1_a; ry1_a = ya;\n    w2 = twopi * body_freq * mem_r2 / samplerate;\n    r2 = eff_Q * 0.99;\n    yb = body_input + 2 * r2 * cos(w2) * ry1_b - r2 * r2 * ry2_b;\n    ry2_b = ry1_b; ry1_b = yb;\n    w3 = twopi * body_freq * mem_r3 / samplerate;\n    r3 = eff_Q * 0.985;\n    yc = body_input + 2 * r3 * cos(w3) * ry1_c - r3 * r3 * ry2_c;\n    ry2_c = ry1_c; ry1_c = yc;\n    w4 = twopi * body_freq * mem_r4 / samplerate;\n    r4 = eff_Q * 0.98;\n    yd = body_input + 2 * r4 * cos(w4) * ry1_d - r4 * r4 * ry2_d;\n    ry2_d = ry1_d; ry1_d = yd;\n    body_out = (ya * 0.5 + yb * 0.25 + yc * 0.15 + yd * 0.1);\n}\n\nfold_d = 1 + eff_scar * 4;\nfractured = body_out;\nif (eff_scar > 0.01) {\n    biased = body_out + pressure * 0.3;\n    folded = asin(sin(biased * fold_d * 1.5707963)) * 0.6366197;\n    fractured = body_out * (1 - eff_scar) + folded * eff_scar;\n}\n\nfb_source = body_out * (1 - stress) + fractured * stress;\nfb_state = fb_source;\n\nenv_rate = 1.0 / max(eff_decay * samplerate / 1000, 1);\nmain_env = main_env * (1 - env_rate);\n\nout_env = max(main_env, halo_env * mist);\nout1 = fractured * out_env;"
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
						442,
						55,
						22
					],
					"outlettype": [
						"signal"
					],
					"text": "*~ 0.35"
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
						472,
						80,
						22
					],
					"text": "send~ v4_out"
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
						330,
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
						352,
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
						352,
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
						382,
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
						412,
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
									"code": "Param pitch(60);\nParam decay_ms(200);\nParam exciter_type(0);\nParam body_type(0);\nParam stress(0.3);\nParam bloom(0.3);\nParam scar(0);\nParam weight(0.5);\nParam mist(0.2);\nParam heat_macro(0.3);\nParam drift_param(0);\nParam density_param(0.5);\n\nHistory prev_trig(0);\nHistory pressure(0);\nHistory heat_state(0);\nHistory fatigue(0);\nHistory exc_car_phase(0);\nHistory exc_mod_phase(0);\nHistory exc_env(0);\nHistory noise_filt(0);\nHistory ry1_a(0);\nHistory ry2_a(0);\nHistory ry1_b(0);\nHistory ry2_b(0);\nHistory ry1_c(0);\nHistory ry2_c(0);\nHistory ry1_d(0);\nHistory ry2_d(0);\nHistory comb_lp(0);\nHistory halo_env(0);\nHistory main_env(0);\nHistory pitch_env(0);\nHistory fb_state(0);\nHistory fb_hp(0);\nHistory cav_lp(0);\nDelay comb_d(8820);\nDelay cav_d(8820);\n\ntrig_on = (in1 > 0.5) * (prev_trig <= 0.5);\nvel = in1;\nprev_trig = in1;\n\nif (trig_on) {\n    pressure = min(pressure + vel * (0.3 + stress * 0.7) * (1 - pressure), 1);\n    fatigue = min(fatigue + 0.02 * (1 - fatigue), 1);\n    exc_env = 1;\n    halo_env = vel * mist;\n    main_env = vel;\n    pitch_env = vel;\n}\n\np_decay = 0.00002 + (1 - stress) * 0.00008;\npressure = pressure * (1 - p_decay);\nheat_state = heat_state + (pressure - heat_state) * 0.0002;\nheat_state = heat_state * (1 - 0.00005);\nfatigue = fatigue * (1 - 0.000002);\nstiffness = fatigue * 0.6 + pressure * 0.4;\n\neff_heat = clamp(heat_macro + heat_state * 0.5, 0, 1);\neff_scar = clamp(scar + pressure * stress, 0, 1);\n\np_env_rate = 0.002 + weight * 0.008;\npitch_env = pitch_env * (1 - p_env_rate);\np_sweep = pitch_env * weight * 24;\np_mod = pitch + p_sweep + noise() * pressure * drift_param * 2;\nbase_freq = mtof(clamp(p_mod, 10, 130));\nw_scale = 1 - weight * 0.8;\nbody_freq = base_freq * w_scale;\n\ne_decay = 0.001 + density_param * 0.003;\nexc_env = exc_env * (1 - e_decay);\n\nexciter_out = 0;\nif (exciter_type < 0.5) {\n    fm_r = 1.41 + eff_heat * 2;\n    mf = base_freq * fm_r;\n    fm_idx = (8 + eff_heat * 12) * exc_env;\n    exc_mod_phase = wrap(exc_mod_phase + mf / samplerate, 0, 1);\n    mod_sig = sin(exc_mod_phase * twopi) * fm_idx;\n    exc_car_phase = wrap(exc_car_phase + base_freq / samplerate, 0, 1);\n    exciter_out = sin(exc_car_phase * twopi + mod_sig) * exc_env;\n} else {\n    n = noise();\n    cutoff = base_freq * (2 + eff_heat * 8);\n    coeff = clamp(1 - exp(-twopi * cutoff / samplerate), 0.001, 0.999);\n    noise_filt = noise_filt + (n - noise_filt) * coeff;\n    exciter_out = noise_filt * 4 * exc_env;\n}\n\nfb_gain = mist * (0.5 + stress * 0.5);\nfb_gain = clamp(fb_gain, 0, 0.95);\nhp_cut = 200 + (1 - weight) * 800;\nhp_c = clamp(1 - exp(-twopi * hp_cut / samplerate), 0.001, 0.999);\nfb_lp = fb_hp + (fb_state - fb_hp) * hp_c;\nfb_hp = fb_lp;\nfb_hpf = fb_state - fb_lp;\nfb_ltd = tanh(fb_hpf * 2) * 0.5;\nbl_rate = 0.000005 + (1 - bloom) * 0.0003;\nhalo_env = halo_env * (1 - bl_rate);\nfb_sig = fb_ltd * fb_gain * halo_env;\nbody_input = exciter_out + fb_sig;\n\neff_decay = decay_ms * decay_ms * 1.25;\ndecay_norm = clamp(eff_decay / 8000, 0, 1);\neff_Q = clamp(0.98 + decay_norm * 0.015 - fatigue * 0.3, 0.8, 0.9995);\n\nbody_out = 0;\nif (body_type < 0.5) {\n    w1 = twopi * body_freq * 1.0 / samplerate;\n    r1 = eff_Q;\n    ya = body_input + 2 * r1 * cos(w1) * ry1_a - r1 * r1 * ry2_a;\n    ry2_a = ry1_a; ry1_a = ya;\n    w2 = twopi * body_freq * (1.347 + stiffness * 0.15) / samplerate;\n    r2 = eff_Q * 0.99;\n    yb = body_input + 2 * r2 * cos(w2) * ry1_b - r2 * r2 * ry2_b;\n    ry2_b = ry1_b; ry1_b = yb;\n    w3 = twopi * body_freq * (1.891 + stiffness * 0.2) / samplerate;\n    r3 = eff_Q * 0.98;\n    yc = body_input + 2 * r3 * cos(w3) * ry1_c - r3 * r3 * ry2_c;\n    ry2_c = ry1_c; ry1_c = yc;\n    w4 = twopi * body_freq * (2.534 + stiffness * 0.3) / samplerate;\n    r4 = eff_Q * 0.97;\n    yd = body_input + 2 * r4 * cos(w4) * ry1_d - r4 * r4 * ry2_d;\n    ry2_d = ry1_d; ry1_d = yd;\n    body_out = (ya + yb * 0.7 + yc * 0.45 + yd * 0.3) * 0.25;\n} else if (body_type < 1.5) {\n    d_samps = clamp(samplerate / body_freq, 2, 8000);\n    fb = eff_Q * 0.9;\n    delayed = comb_d.read(d_samps);\n    d_coeff = 0.3 + fatigue * 0.4;\n    comb_lp = comb_lp + (delayed - comb_lp) * d_coeff;\n    comb_d.write(body_input + comb_lp * fb);\n    body_out = delayed;\n} else if (body_type < 2.5) {\n    cav_len = clamp(samplerate / (body_freq * 0.5), 2, 8000);\n    cav_fb = eff_Q * (0.85 + pressure * 0.1);\n    cav_fb = clamp(cav_fb, 0, 0.995);\n    cav_del = cav_d.read(cav_len);\n    cav_cut = 0.2 + (1 - pressure) * 0.3 + eff_heat * 0.3;\n    cav_lp = cav_lp + (cav_del - cav_lp) * cav_cut;\n    cav_d.write(body_input + cav_lp * cav_fb);\n    w1 = twopi * body_freq * 1.0 / samplerate;\n    r1 = eff_Q * 0.95;\n    ya = cav_del + 2 * r1 * cos(w1) * ry1_a - r1 * r1 * ry2_a;\n    ry2_a = ry1_a; ry1_a = ya;\n    body_out = (cav_del * 0.6 + ya * 0.4);\n} else {\n    mem_r1 = 1.0;\n    mem_r2 = 1.594;\n    mem_r3 = 2.136;\n    mem_r4 = 2.296;\n    w1 = twopi * body_freq * mem_r1 / samplerate;\n    r1 = eff_Q * 0.998;\n    ya = body_input + 2 * r1 * cos(w1) * ry1_a - r1 * r1 * ry2_a;\n    ry2_a = ry1_a; ry1_a = ya;\n    w2 = twopi * body_freq * mem_r2 / samplerate;\n    r2 = eff_Q * 0.99;\n    yb = body_input + 2 * r2 * cos(w2) * ry1_b - r2 * r2 * ry2_b;\n    ry2_b = ry1_b; ry1_b = yb;\n    w3 = twopi * body_freq * mem_r3 / samplerate;\n    r3 = eff_Q * 0.985;\n    yc = body_input + 2 * r3 * cos(w3) * ry1_c - r3 * r3 * ry2_c;\n    ry2_c = ry1_c; ry1_c = yc;\n    w4 = twopi * body_freq * mem_r4 / samplerate;\n    r4 = eff_Q * 0.98;\n    yd = body_input + 2 * r4 * cos(w4) * ry1_d - r4 * r4 * ry2_d;\n    ry2_d = ry1_d; ry1_d = yd;\n    body_out = (ya * 0.5 + yb * 0.25 + yc * 0.15 + yd * 0.1);\n}\n\nfold_d = 1 + eff_scar * 4;\nfractured = body_out;\nif (eff_scar > 0.01) {\n    biased = body_out + pressure * 0.3;\n    folded = asin(sin(biased * fold_d * 1.5707963)) * 0.6366197;\n    fractured = body_out * (1 - eff_scar) + folded * eff_scar;\n}\n\nfb_source = body_out * (1 - stress) + fractured * stress;\nfb_state = fb_source;\n\nenv_rate = 1.0 / max(eff_decay * samplerate / 1000, 1);\nmain_env = main_env * (1 - env_rate);\n\nout_env = max(main_env, halo_env * mist);\nout1 = fractured * out_env;"
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
						442,
						55,
						22
					],
					"outlettype": [
						"signal"
					],
					"text": "*~ 0.2"
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
						472,
						80,
						22
					],
					"text": "send~ v5_out"
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
						495,
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
						510,
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
					"id": "mr-1",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						195,
						510,
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
					"id": "mr-2",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						315,
						510,
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
					"id": "mr-3",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						435,
						510,
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
					"id": "mr-4",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						555,
						510,
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
					"id": "mr-5",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						675,
						510,
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
					"id": "mx-0",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						75,
						540,
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
					"id": "mx-1",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						195,
						540,
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
					"id": "mx-2",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						315,
						540,
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
					"id": "mx-3",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						435,
						540,
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
					"id": "mx-4",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						555,
						540,
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
					"id": "mx-gain",
					"maxclass": "gain~",
					"numinlets": 1,
					"numoutlets": 2,
					"patching_rect": [
						75,
						570,
						500,
						30
					],
					"outlettype": [
						"signal",
						""
					],
					"parameter_enable": 0,
					"orientation": 1
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
						608,
						500,
						18
					],
					"outlettype": [
						"float"
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
						570,
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
						635,
						60,
						22
					],
					"text": "dac~ 1 2"
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
						633,
						25,
						25
					],
					"outlettype": [
						"int"
					]
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
						635,
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
						665,
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
						695,
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
						695,
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
						645,
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
						660,
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
					}
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
						695,
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
						660,
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
						725,
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
						725,
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
						725,
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
						725,
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
						725,
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
						725,
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
					"numoutlets": 13,
					"patching_rect": [
						75,
						755,
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
						""
					],
					"text": "route stress bloom scar weight mist heat_macro drift_param density_param pitch decay_ms exciter_type body_type"
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
						785,
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
						803,
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
					"id": "ds-0",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						40,
						847,
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
						875,
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
						120,
						785,
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
						130,
						803,
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
					"id": "ds-1",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						130,
						847,
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
						130,
						875,
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
						210,
						785,
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
						220,
						803,
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
					"id": "ds-2",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						220,
						847,
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
						220,
						875,
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
						300,
						785,
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
						310,
						803,
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
					"id": "ds-3",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						310,
						847,
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
						310,
						875,
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
						390,
						785,
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
						400,
						803,
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
					"id": "ds-4",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						400,
						847,
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
						400,
						875,
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
						480,
						785,
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
						490,
						803,
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
					"id": "ds-5",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						490,
						847,
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
						490,
						875,
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
						570,
						785,
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
						580,
						803,
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
					"id": "ds-6",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						580,
						847,
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
						580,
						875,
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
						660,
						785,
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
						670,
						803,
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
					"id": "ds-7",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						670,
						847,
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
						670,
						875,
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
						750,
						785,
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
						760,
						803,
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
					"id": "ds-8",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						760,
						847,
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
						760,
						875,
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
						840,
						785,
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
						850,
						803,
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
					"id": "ds-9",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						850,
						847,
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
						850,
						875,
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
						930,
						785,
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
						940,
						803,
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
					"id": "ds-10",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						940,
						847,
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
						940,
						875,
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
						1020,
						785,
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
						1030,
						803,
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
					"id": "ds-11",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						1030,
						847,
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
						1030,
						875,
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
					"id": "sec-km",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						30,
						855,
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
					"numoutlets": 4,
					"patching_rect": [
						75,
						870,
						750,
						22
					],
					"outlettype": [
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
						870,
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
					"id": "km-pcell",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						75,
						900,
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
						925,
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
						925,
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
						925,
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
						925,
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
						925,
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
						925,
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
						955,
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
						985,
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
						955,
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
						955,
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
						985,
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
						955,
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
						955,
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
						985,
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
						955,
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
						955,
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
						985,
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
						955,
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
						955,
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
						985,
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
						955,
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
						955,
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
						985,
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
						955,
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
						955,
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
						985,
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
						955,
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
						955,
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
						985,
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
						955,
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
						955,
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
						985,
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
						1015,
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
						1015,
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
						960,
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
						975,
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
						1005,
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
						1035,
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
						1035,
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
						1035,
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
						1035,
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
						1035,
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
						1035,
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
						1035,
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
						375,
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
						375,
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
						375,
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
						375,
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
						375,
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
						375,
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
						1065,
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
						1095,
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
						1113,
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
						1131,
						450,
						20
					],
					"text": "Select voice tab to edit macros. MIDI pads trigger voices."
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
						"tr-bpm",
						0
					],
					"destination": [
						"tr-calc",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"tr-calc",
						0
					],
					"destination": [
						"tr-metro",
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
						"tr-metro",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"tr-metro",
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
						"tr-sn",
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
						"sq-js",
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
						"sq-js",
						1
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
						"sq-js",
						2
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
						"sq-js",
						3
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
						"sq-js",
						4
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
						"sq-js",
						5
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
						"mr-0",
						0
					],
					"destination": [
						"mx-0",
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
						"mx-0",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mx-0",
						0
					],
					"destination": [
						"mx-1",
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
						"mx-1",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mx-1",
						0
					],
					"destination": [
						"mx-2",
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
						"mx-2",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mx-2",
						0
					],
					"destination": [
						"mx-3",
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
						"mx-3",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mx-3",
						0
					],
					"destination": [
						"mx-4",
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
						"mx-4",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mx-4",
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
						"mx-gain",
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
						"mx-gain",
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
						"mx-gain",
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
						"mx-gain",
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