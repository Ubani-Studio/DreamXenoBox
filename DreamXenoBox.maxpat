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
			1060,
			820
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
						10,
						600,
						20
					],
					"text": "DREAM XENO BOX",
					"fontsize": 16.0,
					"fontface": 1
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
						42,
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
						100,
						42,
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
					"id": "tr-bl",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						145,
						42,
						31,
						20
					],
					"text": "BPM"
				}
			},
			{
				"box": {
					"id": "tr-bpm",
					"maxclass": "number",
					"numinlets": 1,
					"numoutlets": 2,
					"patching_rect": [
						175,
						42,
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
					"id": "tr-calc",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						240,
						42,
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
					"id": "tr-pl",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						400,
						42,
						38,
						20
					],
					"text": "PLAY"
				}
			},
			{
				"box": {
					"id": "tr-play",
					"maxclass": "toggle",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						440,
						38,
						30,
						30
					],
					"outlettype": [
						"int"
					]
				}
			},
			{
				"box": {
					"id": "tr-metro",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						440,
						76,
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
						440,
						100,
						100,
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
						555,
						100,
						38,
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
						590,
						100,
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
					"id": "rl-0",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						10,
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
						10,
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
						10,
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
						10,
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
						10,
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
						10,
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
						70,
						120,
						800,
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
						885,
						102,
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
						885,
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
						945,
						120,
						115,
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
						945,
						140,
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
						885,
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
						945,
						144,
						115,
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
						945,
						164,
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
						885,
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
						945,
						168,
						115,
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
						945,
						188,
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
						885,
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
						945,
						192,
						115,
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
						945,
						212,
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
						885,
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
						945,
						216,
						115,
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
						945,
						236,
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
						885,
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
						945,
						240,
						115,
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
						945,
						260,
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
						70,
						274,
						240,
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
						320,
						274,
						400,
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
					"id": "vc-0",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						30,
						309,
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
					"id": "vg-0",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						30,
						337,
						150,
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
									"code": "Param pitch(60);\nParam decay_ms(200);\nParam exciter_type(0);\nParam body_type(0);\nParam stress(0.3);\nParam bloom(0.3);\nParam scar(0);\nParam weight(0.5);\nParam mist(0.2);\nParam heat_macro(0.3);\nParam drift_param(0);\nParam density_param(0.5);\n\nHistory prev_trig(0);\nHistory pressure(0);\nHistory heat_state(0);\nHistory fatigue(0);\nHistory exc_car_phase(0);\nHistory exc_mod_phase(0);\nHistory exc_env(0);\nHistory noise_filt(0);\nHistory ry1_a(0);\nHistory ry2_a(0);\nHistory ry1_b(0);\nHistory ry2_b(0);\nHistory ry1_c(0);\nHistory ry2_c(0);\nHistory ry1_d(0);\nHistory ry2_d(0);\nHistory comb_lp(0);\nHistory halo_env(0);\nHistory main_env(0);\nDelay comb_d(8820);\n\ntrig_on = (in1 > 0.5) * (prev_trig <= 0.5);\nvel = in1;\nprev_trig = in1;\n\nif (trig_on) {\n    pressure = min(pressure + vel * (0.3 + stress * 0.7) * (1 - pressure), 1);\n    fatigue = min(fatigue + 0.02 * (1 - fatigue), 1);\n    exc_env = 1;\n    halo_env = vel * mist;\n    main_env = vel;\n}\n\np_decay = 0.00002 + (1 - stress) * 0.00008;\npressure = pressure * (1 - p_decay);\nheat_state = heat_state + (pressure - heat_state) * 0.0002;\nheat_state = heat_state * (1 - 0.00005);\nfatigue = fatigue * (1 - 0.000002);\nstiffness = fatigue * 0.6 + pressure * 0.4;\n\neff_heat = clamp(heat_macro + heat_state * 0.5, 0, 1);\neff_scar = clamp(scar + pressure * stress, 0, 1);\np_mod = pitch + noise() * pressure * drift_param * 2;\nbase_freq = mtof(clamp(p_mod, 10, 130));\nw_scale = 1 - weight * 0.8;\nbody_freq = base_freq * w_scale;\n\ne_decay = 0.001 + density_param * 0.003;\nexc_env = exc_env * (1 - e_decay);\n\nexciter_out = 0;\nif (exciter_type < 0.5) {\n    fm_r = 1.41 + eff_heat * 2;\n    mf = base_freq * fm_r;\n    fm_idx = (8 + eff_heat * 12) * exc_env;\n    exc_mod_phase = wrap(exc_mod_phase + mf / samplerate, 0, 1);\n    mod_sig = sin(exc_mod_phase * twopi) * fm_idx;\n    exc_car_phase = wrap(exc_car_phase + base_freq / samplerate, 0, 1);\n    exciter_out = sin(exc_car_phase * twopi + mod_sig) * exc_env;\n} else {\n    n = noise();\n    cutoff = base_freq * (2 + eff_heat * 8);\n    coeff = clamp(1 - exp(-twopi * cutoff / samplerate), 0.001, 0.999);\n    noise_filt = noise_filt + (n - noise_filt) * coeff;\n    exciter_out = noise_filt * 4 * exc_env;\n}\n\nbody_out = 0;\neff_Q = clamp(0.995 - fatigue * 0.3, 0.8, 0.999);\n\nif (body_type < 0.5) {\n    w1 = twopi * body_freq * 1.0 / samplerate;\n    r1 = eff_Q;\n    ya = exciter_out + 2 * r1 * cos(w1) * ry1_a - r1 * r1 * ry2_a;\n    ry2_a = ry1_a; ry1_a = ya;\n    w2 = twopi * body_freq * (1.347 + stiffness * 0.15) / samplerate;\n    r2 = eff_Q * 0.99;\n    yb = exciter_out + 2 * r2 * cos(w2) * ry1_b - r2 * r2 * ry2_b;\n    ry2_b = ry1_b; ry1_b = yb;\n    w3 = twopi * body_freq * (1.891 + stiffness * 0.2) / samplerate;\n    r3 = eff_Q * 0.98;\n    yc = exciter_out + 2 * r3 * cos(w3) * ry1_c - r3 * r3 * ry2_c;\n    ry2_c = ry1_c; ry1_c = yc;\n    w4 = twopi * body_freq * (2.534 + stiffness * 0.3) / samplerate;\n    r4 = eff_Q * 0.97;\n    yd = exciter_out + 2 * r4 * cos(w4) * ry1_d - r4 * r4 * ry2_d;\n    ry2_d = ry1_d; ry1_d = yd;\n    body_out = (ya + yb * 0.7 + yc * 0.45 + yd * 0.3) * 0.25;\n} else {\n    d_samps = clamp(samplerate / body_freq, 2, 8000);\n    fb = eff_Q * 0.9;\n    delayed = comb_d.read(d_samps);\n    d_coeff = 0.3 + fatigue * 0.4;\n    comb_lp = comb_lp + (delayed - comb_lp) * d_coeff;\n    comb_d.write(exciter_out + comb_lp * fb);\n    body_out = delayed;\n}\n\nfold_d = 1 + eff_scar * 4;\nfractured = body_out;\nif (eff_scar > 0.01) {\n    biased = body_out + pressure * 0.3;\n    folded = asin(sin(biased * fold_d * 1.5707963)) * 0.6366197;\n    fractured = body_out * (1 - eff_scar) + folded * eff_scar;\n}\n\nbl_decay = 0.0001 + bloom * 0.001;\nhalo_env = halo_env * (1 - bl_decay);\nh_out = noise() * halo_env * clamp(body_freq * 2 / samplerate, 0.01, 0.49) * 4;\n\nenv_rate = 1.0 / max(decay_ms * samplerate / 1000, 1);\nmain_env = main_env * (1 - env_rate);\n\nmixed = fractured * (1 - mist * 0.5) + h_out;\nout1 = mixed * main_env;"
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
						30,
						367,
						55,
						22
					],
					"outlettype": [
						"signal"
					],
					"text": "*~ 0.4"
				}
			},
			{
				"box": {
					"id": "vb-0",
					"maxclass": "button",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						85,
						304,
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
						190,
						309,
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
					"id": "vg-1",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						190,
						337,
						150,
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
									"code": "Param pitch(60);\nParam decay_ms(200);\nParam exciter_type(0);\nParam body_type(0);\nParam stress(0.3);\nParam bloom(0.3);\nParam scar(0);\nParam weight(0.5);\nParam mist(0.2);\nParam heat_macro(0.3);\nParam drift_param(0);\nParam density_param(0.5);\n\nHistory prev_trig(0);\nHistory pressure(0);\nHistory heat_state(0);\nHistory fatigue(0);\nHistory exc_car_phase(0);\nHistory exc_mod_phase(0);\nHistory exc_env(0);\nHistory noise_filt(0);\nHistory ry1_a(0);\nHistory ry2_a(0);\nHistory ry1_b(0);\nHistory ry2_b(0);\nHistory ry1_c(0);\nHistory ry2_c(0);\nHistory ry1_d(0);\nHistory ry2_d(0);\nHistory comb_lp(0);\nHistory halo_env(0);\nHistory main_env(0);\nDelay comb_d(8820);\n\ntrig_on = (in1 > 0.5) * (prev_trig <= 0.5);\nvel = in1;\nprev_trig = in1;\n\nif (trig_on) {\n    pressure = min(pressure + vel * (0.3 + stress * 0.7) * (1 - pressure), 1);\n    fatigue = min(fatigue + 0.02 * (1 - fatigue), 1);\n    exc_env = 1;\n    halo_env = vel * mist;\n    main_env = vel;\n}\n\np_decay = 0.00002 + (1 - stress) * 0.00008;\npressure = pressure * (1 - p_decay);\nheat_state = heat_state + (pressure - heat_state) * 0.0002;\nheat_state = heat_state * (1 - 0.00005);\nfatigue = fatigue * (1 - 0.000002);\nstiffness = fatigue * 0.6 + pressure * 0.4;\n\neff_heat = clamp(heat_macro + heat_state * 0.5, 0, 1);\neff_scar = clamp(scar + pressure * stress, 0, 1);\np_mod = pitch + noise() * pressure * drift_param * 2;\nbase_freq = mtof(clamp(p_mod, 10, 130));\nw_scale = 1 - weight * 0.8;\nbody_freq = base_freq * w_scale;\n\ne_decay = 0.001 + density_param * 0.003;\nexc_env = exc_env * (1 - e_decay);\n\nexciter_out = 0;\nif (exciter_type < 0.5) {\n    fm_r = 1.41 + eff_heat * 2;\n    mf = base_freq * fm_r;\n    fm_idx = (8 + eff_heat * 12) * exc_env;\n    exc_mod_phase = wrap(exc_mod_phase + mf / samplerate, 0, 1);\n    mod_sig = sin(exc_mod_phase * twopi) * fm_idx;\n    exc_car_phase = wrap(exc_car_phase + base_freq / samplerate, 0, 1);\n    exciter_out = sin(exc_car_phase * twopi + mod_sig) * exc_env;\n} else {\n    n = noise();\n    cutoff = base_freq * (2 + eff_heat * 8);\n    coeff = clamp(1 - exp(-twopi * cutoff / samplerate), 0.001, 0.999);\n    noise_filt = noise_filt + (n - noise_filt) * coeff;\n    exciter_out = noise_filt * 4 * exc_env;\n}\n\nbody_out = 0;\neff_Q = clamp(0.995 - fatigue * 0.3, 0.8, 0.999);\n\nif (body_type < 0.5) {\n    w1 = twopi * body_freq * 1.0 / samplerate;\n    r1 = eff_Q;\n    ya = exciter_out + 2 * r1 * cos(w1) * ry1_a - r1 * r1 * ry2_a;\n    ry2_a = ry1_a; ry1_a = ya;\n    w2 = twopi * body_freq * (1.347 + stiffness * 0.15) / samplerate;\n    r2 = eff_Q * 0.99;\n    yb = exciter_out + 2 * r2 * cos(w2) * ry1_b - r2 * r2 * ry2_b;\n    ry2_b = ry1_b; ry1_b = yb;\n    w3 = twopi * body_freq * (1.891 + stiffness * 0.2) / samplerate;\n    r3 = eff_Q * 0.98;\n    yc = exciter_out + 2 * r3 * cos(w3) * ry1_c - r3 * r3 * ry2_c;\n    ry2_c = ry1_c; ry1_c = yc;\n    w4 = twopi * body_freq * (2.534 + stiffness * 0.3) / samplerate;\n    r4 = eff_Q * 0.97;\n    yd = exciter_out + 2 * r4 * cos(w4) * ry1_d - r4 * r4 * ry2_d;\n    ry2_d = ry1_d; ry1_d = yd;\n    body_out = (ya + yb * 0.7 + yc * 0.45 + yd * 0.3) * 0.25;\n} else {\n    d_samps = clamp(samplerate / body_freq, 2, 8000);\n    fb = eff_Q * 0.9;\n    delayed = comb_d.read(d_samps);\n    d_coeff = 0.3 + fatigue * 0.4;\n    comb_lp = comb_lp + (delayed - comb_lp) * d_coeff;\n    comb_d.write(exciter_out + comb_lp * fb);\n    body_out = delayed;\n}\n\nfold_d = 1 + eff_scar * 4;\nfractured = body_out;\nif (eff_scar > 0.01) {\n    biased = body_out + pressure * 0.3;\n    folded = asin(sin(biased * fold_d * 1.5707963)) * 0.6366197;\n    fractured = body_out * (1 - eff_scar) + folded * eff_scar;\n}\n\nbl_decay = 0.0001 + bloom * 0.001;\nhalo_env = halo_env * (1 - bl_decay);\nh_out = noise() * halo_env * clamp(body_freq * 2 / samplerate, 0.01, 0.49) * 4;\n\nenv_rate = 1.0 / max(decay_ms * samplerate / 1000, 1);\nmain_env = main_env * (1 - env_rate);\n\nmixed = fractured * (1 - mist * 0.5) + h_out;\nout1 = mixed * main_env;"
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
						190,
						367,
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
					"id": "vb-1",
					"maxclass": "button",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						245,
						304,
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
						350,
						309,
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
					"id": "vg-2",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						350,
						337,
						150,
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
									"code": "Param pitch(60);\nParam decay_ms(200);\nParam exciter_type(0);\nParam body_type(0);\nParam stress(0.3);\nParam bloom(0.3);\nParam scar(0);\nParam weight(0.5);\nParam mist(0.2);\nParam heat_macro(0.3);\nParam drift_param(0);\nParam density_param(0.5);\n\nHistory prev_trig(0);\nHistory pressure(0);\nHistory heat_state(0);\nHistory fatigue(0);\nHistory exc_car_phase(0);\nHistory exc_mod_phase(0);\nHistory exc_env(0);\nHistory noise_filt(0);\nHistory ry1_a(0);\nHistory ry2_a(0);\nHistory ry1_b(0);\nHistory ry2_b(0);\nHistory ry1_c(0);\nHistory ry2_c(0);\nHistory ry1_d(0);\nHistory ry2_d(0);\nHistory comb_lp(0);\nHistory halo_env(0);\nHistory main_env(0);\nDelay comb_d(8820);\n\ntrig_on = (in1 > 0.5) * (prev_trig <= 0.5);\nvel = in1;\nprev_trig = in1;\n\nif (trig_on) {\n    pressure = min(pressure + vel * (0.3 + stress * 0.7) * (1 - pressure), 1);\n    fatigue = min(fatigue + 0.02 * (1 - fatigue), 1);\n    exc_env = 1;\n    halo_env = vel * mist;\n    main_env = vel;\n}\n\np_decay = 0.00002 + (1 - stress) * 0.00008;\npressure = pressure * (1 - p_decay);\nheat_state = heat_state + (pressure - heat_state) * 0.0002;\nheat_state = heat_state * (1 - 0.00005);\nfatigue = fatigue * (1 - 0.000002);\nstiffness = fatigue * 0.6 + pressure * 0.4;\n\neff_heat = clamp(heat_macro + heat_state * 0.5, 0, 1);\neff_scar = clamp(scar + pressure * stress, 0, 1);\np_mod = pitch + noise() * pressure * drift_param * 2;\nbase_freq = mtof(clamp(p_mod, 10, 130));\nw_scale = 1 - weight * 0.8;\nbody_freq = base_freq * w_scale;\n\ne_decay = 0.001 + density_param * 0.003;\nexc_env = exc_env * (1 - e_decay);\n\nexciter_out = 0;\nif (exciter_type < 0.5) {\n    fm_r = 1.41 + eff_heat * 2;\n    mf = base_freq * fm_r;\n    fm_idx = (8 + eff_heat * 12) * exc_env;\n    exc_mod_phase = wrap(exc_mod_phase + mf / samplerate, 0, 1);\n    mod_sig = sin(exc_mod_phase * twopi) * fm_idx;\n    exc_car_phase = wrap(exc_car_phase + base_freq / samplerate, 0, 1);\n    exciter_out = sin(exc_car_phase * twopi + mod_sig) * exc_env;\n} else {\n    n = noise();\n    cutoff = base_freq * (2 + eff_heat * 8);\n    coeff = clamp(1 - exp(-twopi * cutoff / samplerate), 0.001, 0.999);\n    noise_filt = noise_filt + (n - noise_filt) * coeff;\n    exciter_out = noise_filt * 4 * exc_env;\n}\n\nbody_out = 0;\neff_Q = clamp(0.995 - fatigue * 0.3, 0.8, 0.999);\n\nif (body_type < 0.5) {\n    w1 = twopi * body_freq * 1.0 / samplerate;\n    r1 = eff_Q;\n    ya = exciter_out + 2 * r1 * cos(w1) * ry1_a - r1 * r1 * ry2_a;\n    ry2_a = ry1_a; ry1_a = ya;\n    w2 = twopi * body_freq * (1.347 + stiffness * 0.15) / samplerate;\n    r2 = eff_Q * 0.99;\n    yb = exciter_out + 2 * r2 * cos(w2) * ry1_b - r2 * r2 * ry2_b;\n    ry2_b = ry1_b; ry1_b = yb;\n    w3 = twopi * body_freq * (1.891 + stiffness * 0.2) / samplerate;\n    r3 = eff_Q * 0.98;\n    yc = exciter_out + 2 * r3 * cos(w3) * ry1_c - r3 * r3 * ry2_c;\n    ry2_c = ry1_c; ry1_c = yc;\n    w4 = twopi * body_freq * (2.534 + stiffness * 0.3) / samplerate;\n    r4 = eff_Q * 0.97;\n    yd = exciter_out + 2 * r4 * cos(w4) * ry1_d - r4 * r4 * ry2_d;\n    ry2_d = ry1_d; ry1_d = yd;\n    body_out = (ya + yb * 0.7 + yc * 0.45 + yd * 0.3) * 0.25;\n} else {\n    d_samps = clamp(samplerate / body_freq, 2, 8000);\n    fb = eff_Q * 0.9;\n    delayed = comb_d.read(d_samps);\n    d_coeff = 0.3 + fatigue * 0.4;\n    comb_lp = comb_lp + (delayed - comb_lp) * d_coeff;\n    comb_d.write(exciter_out + comb_lp * fb);\n    body_out = delayed;\n}\n\nfold_d = 1 + eff_scar * 4;\nfractured = body_out;\nif (eff_scar > 0.01) {\n    biased = body_out + pressure * 0.3;\n    folded = asin(sin(biased * fold_d * 1.5707963)) * 0.6366197;\n    fractured = body_out * (1 - eff_scar) + folded * eff_scar;\n}\n\nbl_decay = 0.0001 + bloom * 0.001;\nhalo_env = halo_env * (1 - bl_decay);\nh_out = noise() * halo_env * clamp(body_freq * 2 / samplerate, 0.01, 0.49) * 4;\n\nenv_rate = 1.0 / max(decay_ms * samplerate / 1000, 1);\nmain_env = main_env * (1 - env_rate);\n\nmixed = fractured * (1 - mist * 0.5) + h_out;\nout1 = mixed * main_env;"
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
						350,
						367,
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
					"id": "vb-2",
					"maxclass": "button",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						405,
						304,
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
						510,
						309,
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
					"id": "vg-3",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						510,
						337,
						150,
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
									"code": "Param pitch(60);\nParam decay_ms(200);\nParam exciter_type(0);\nParam body_type(0);\nParam stress(0.3);\nParam bloom(0.3);\nParam scar(0);\nParam weight(0.5);\nParam mist(0.2);\nParam heat_macro(0.3);\nParam drift_param(0);\nParam density_param(0.5);\n\nHistory prev_trig(0);\nHistory pressure(0);\nHistory heat_state(0);\nHistory fatigue(0);\nHistory exc_car_phase(0);\nHistory exc_mod_phase(0);\nHistory exc_env(0);\nHistory noise_filt(0);\nHistory ry1_a(0);\nHistory ry2_a(0);\nHistory ry1_b(0);\nHistory ry2_b(0);\nHistory ry1_c(0);\nHistory ry2_c(0);\nHistory ry1_d(0);\nHistory ry2_d(0);\nHistory comb_lp(0);\nHistory halo_env(0);\nHistory main_env(0);\nDelay comb_d(8820);\n\ntrig_on = (in1 > 0.5) * (prev_trig <= 0.5);\nvel = in1;\nprev_trig = in1;\n\nif (trig_on) {\n    pressure = min(pressure + vel * (0.3 + stress * 0.7) * (1 - pressure), 1);\n    fatigue = min(fatigue + 0.02 * (1 - fatigue), 1);\n    exc_env = 1;\n    halo_env = vel * mist;\n    main_env = vel;\n}\n\np_decay = 0.00002 + (1 - stress) * 0.00008;\npressure = pressure * (1 - p_decay);\nheat_state = heat_state + (pressure - heat_state) * 0.0002;\nheat_state = heat_state * (1 - 0.00005);\nfatigue = fatigue * (1 - 0.000002);\nstiffness = fatigue * 0.6 + pressure * 0.4;\n\neff_heat = clamp(heat_macro + heat_state * 0.5, 0, 1);\neff_scar = clamp(scar + pressure * stress, 0, 1);\np_mod = pitch + noise() * pressure * drift_param * 2;\nbase_freq = mtof(clamp(p_mod, 10, 130));\nw_scale = 1 - weight * 0.8;\nbody_freq = base_freq * w_scale;\n\ne_decay = 0.001 + density_param * 0.003;\nexc_env = exc_env * (1 - e_decay);\n\nexciter_out = 0;\nif (exciter_type < 0.5) {\n    fm_r = 1.41 + eff_heat * 2;\n    mf = base_freq * fm_r;\n    fm_idx = (8 + eff_heat * 12) * exc_env;\n    exc_mod_phase = wrap(exc_mod_phase + mf / samplerate, 0, 1);\n    mod_sig = sin(exc_mod_phase * twopi) * fm_idx;\n    exc_car_phase = wrap(exc_car_phase + base_freq / samplerate, 0, 1);\n    exciter_out = sin(exc_car_phase * twopi + mod_sig) * exc_env;\n} else {\n    n = noise();\n    cutoff = base_freq * (2 + eff_heat * 8);\n    coeff = clamp(1 - exp(-twopi * cutoff / samplerate), 0.001, 0.999);\n    noise_filt = noise_filt + (n - noise_filt) * coeff;\n    exciter_out = noise_filt * 4 * exc_env;\n}\n\nbody_out = 0;\neff_Q = clamp(0.995 - fatigue * 0.3, 0.8, 0.999);\n\nif (body_type < 0.5) {\n    w1 = twopi * body_freq * 1.0 / samplerate;\n    r1 = eff_Q;\n    ya = exciter_out + 2 * r1 * cos(w1) * ry1_a - r1 * r1 * ry2_a;\n    ry2_a = ry1_a; ry1_a = ya;\n    w2 = twopi * body_freq * (1.347 + stiffness * 0.15) / samplerate;\n    r2 = eff_Q * 0.99;\n    yb = exciter_out + 2 * r2 * cos(w2) * ry1_b - r2 * r2 * ry2_b;\n    ry2_b = ry1_b; ry1_b = yb;\n    w3 = twopi * body_freq * (1.891 + stiffness * 0.2) / samplerate;\n    r3 = eff_Q * 0.98;\n    yc = exciter_out + 2 * r3 * cos(w3) * ry1_c - r3 * r3 * ry2_c;\n    ry2_c = ry1_c; ry1_c = yc;\n    w4 = twopi * body_freq * (2.534 + stiffness * 0.3) / samplerate;\n    r4 = eff_Q * 0.97;\n    yd = exciter_out + 2 * r4 * cos(w4) * ry1_d - r4 * r4 * ry2_d;\n    ry2_d = ry1_d; ry1_d = yd;\n    body_out = (ya + yb * 0.7 + yc * 0.45 + yd * 0.3) * 0.25;\n} else {\n    d_samps = clamp(samplerate / body_freq, 2, 8000);\n    fb = eff_Q * 0.9;\n    delayed = comb_d.read(d_samps);\n    d_coeff = 0.3 + fatigue * 0.4;\n    comb_lp = comb_lp + (delayed - comb_lp) * d_coeff;\n    comb_d.write(exciter_out + comb_lp * fb);\n    body_out = delayed;\n}\n\nfold_d = 1 + eff_scar * 4;\nfractured = body_out;\nif (eff_scar > 0.01) {\n    biased = body_out + pressure * 0.3;\n    folded = asin(sin(biased * fold_d * 1.5707963)) * 0.6366197;\n    fractured = body_out * (1 - eff_scar) + folded * eff_scar;\n}\n\nbl_decay = 0.0001 + bloom * 0.001;\nhalo_env = halo_env * (1 - bl_decay);\nh_out = noise() * halo_env * clamp(body_freq * 2 / samplerate, 0.01, 0.49) * 4;\n\nenv_rate = 1.0 / max(decay_ms * samplerate / 1000, 1);\nmain_env = main_env * (1 - env_rate);\n\nmixed = fractured * (1 - mist * 0.5) + h_out;\nout1 = mixed * main_env;"
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
						510,
						367,
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
					"id": "vb-3",
					"maxclass": "button",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						565,
						304,
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
						670,
						309,
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
					"id": "vg-4",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						670,
						337,
						150,
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
									"code": "Param pitch(60);\nParam decay_ms(200);\nParam exciter_type(0);\nParam body_type(0);\nParam stress(0.3);\nParam bloom(0.3);\nParam scar(0);\nParam weight(0.5);\nParam mist(0.2);\nParam heat_macro(0.3);\nParam drift_param(0);\nParam density_param(0.5);\n\nHistory prev_trig(0);\nHistory pressure(0);\nHistory heat_state(0);\nHistory fatigue(0);\nHistory exc_car_phase(0);\nHistory exc_mod_phase(0);\nHistory exc_env(0);\nHistory noise_filt(0);\nHistory ry1_a(0);\nHistory ry2_a(0);\nHistory ry1_b(0);\nHistory ry2_b(0);\nHistory ry1_c(0);\nHistory ry2_c(0);\nHistory ry1_d(0);\nHistory ry2_d(0);\nHistory comb_lp(0);\nHistory halo_env(0);\nHistory main_env(0);\nDelay comb_d(8820);\n\ntrig_on = (in1 > 0.5) * (prev_trig <= 0.5);\nvel = in1;\nprev_trig = in1;\n\nif (trig_on) {\n    pressure = min(pressure + vel * (0.3 + stress * 0.7) * (1 - pressure), 1);\n    fatigue = min(fatigue + 0.02 * (1 - fatigue), 1);\n    exc_env = 1;\n    halo_env = vel * mist;\n    main_env = vel;\n}\n\np_decay = 0.00002 + (1 - stress) * 0.00008;\npressure = pressure * (1 - p_decay);\nheat_state = heat_state + (pressure - heat_state) * 0.0002;\nheat_state = heat_state * (1 - 0.00005);\nfatigue = fatigue * (1 - 0.000002);\nstiffness = fatigue * 0.6 + pressure * 0.4;\n\neff_heat = clamp(heat_macro + heat_state * 0.5, 0, 1);\neff_scar = clamp(scar + pressure * stress, 0, 1);\np_mod = pitch + noise() * pressure * drift_param * 2;\nbase_freq = mtof(clamp(p_mod, 10, 130));\nw_scale = 1 - weight * 0.8;\nbody_freq = base_freq * w_scale;\n\ne_decay = 0.001 + density_param * 0.003;\nexc_env = exc_env * (1 - e_decay);\n\nexciter_out = 0;\nif (exciter_type < 0.5) {\n    fm_r = 1.41 + eff_heat * 2;\n    mf = base_freq * fm_r;\n    fm_idx = (8 + eff_heat * 12) * exc_env;\n    exc_mod_phase = wrap(exc_mod_phase + mf / samplerate, 0, 1);\n    mod_sig = sin(exc_mod_phase * twopi) * fm_idx;\n    exc_car_phase = wrap(exc_car_phase + base_freq / samplerate, 0, 1);\n    exciter_out = sin(exc_car_phase * twopi + mod_sig) * exc_env;\n} else {\n    n = noise();\n    cutoff = base_freq * (2 + eff_heat * 8);\n    coeff = clamp(1 - exp(-twopi * cutoff / samplerate), 0.001, 0.999);\n    noise_filt = noise_filt + (n - noise_filt) * coeff;\n    exciter_out = noise_filt * 4 * exc_env;\n}\n\nbody_out = 0;\neff_Q = clamp(0.995 - fatigue * 0.3, 0.8, 0.999);\n\nif (body_type < 0.5) {\n    w1 = twopi * body_freq * 1.0 / samplerate;\n    r1 = eff_Q;\n    ya = exciter_out + 2 * r1 * cos(w1) * ry1_a - r1 * r1 * ry2_a;\n    ry2_a = ry1_a; ry1_a = ya;\n    w2 = twopi * body_freq * (1.347 + stiffness * 0.15) / samplerate;\n    r2 = eff_Q * 0.99;\n    yb = exciter_out + 2 * r2 * cos(w2) * ry1_b - r2 * r2 * ry2_b;\n    ry2_b = ry1_b; ry1_b = yb;\n    w3 = twopi * body_freq * (1.891 + stiffness * 0.2) / samplerate;\n    r3 = eff_Q * 0.98;\n    yc = exciter_out + 2 * r3 * cos(w3) * ry1_c - r3 * r3 * ry2_c;\n    ry2_c = ry1_c; ry1_c = yc;\n    w4 = twopi * body_freq * (2.534 + stiffness * 0.3) / samplerate;\n    r4 = eff_Q * 0.97;\n    yd = exciter_out + 2 * r4 * cos(w4) * ry1_d - r4 * r4 * ry2_d;\n    ry2_d = ry1_d; ry1_d = yd;\n    body_out = (ya + yb * 0.7 + yc * 0.45 + yd * 0.3) * 0.25;\n} else {\n    d_samps = clamp(samplerate / body_freq, 2, 8000);\n    fb = eff_Q * 0.9;\n    delayed = comb_d.read(d_samps);\n    d_coeff = 0.3 + fatigue * 0.4;\n    comb_lp = comb_lp + (delayed - comb_lp) * d_coeff;\n    comb_d.write(exciter_out + comb_lp * fb);\n    body_out = delayed;\n}\n\nfold_d = 1 + eff_scar * 4;\nfractured = body_out;\nif (eff_scar > 0.01) {\n    biased = body_out + pressure * 0.3;\n    folded = asin(sin(biased * fold_d * 1.5707963)) * 0.6366197;\n    fractured = body_out * (1 - eff_scar) + folded * eff_scar;\n}\n\nbl_decay = 0.0001 + bloom * 0.001;\nhalo_env = halo_env * (1 - bl_decay);\nh_out = noise() * halo_env * clamp(body_freq * 2 / samplerate, 0.01, 0.49) * 4;\n\nenv_rate = 1.0 / max(decay_ms * samplerate / 1000, 1);\nmain_env = main_env * (1 - env_rate);\n\nmixed = fractured * (1 - mist * 0.5) + h_out;\nout1 = mixed * main_env;"
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
						670,
						367,
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
					"id": "vb-4",
					"maxclass": "button",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						725,
						304,
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
						830,
						309,
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
					"id": "vg-5",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						830,
						337,
						150,
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
									"code": "Param pitch(60);\nParam decay_ms(200);\nParam exciter_type(0);\nParam body_type(0);\nParam stress(0.3);\nParam bloom(0.3);\nParam scar(0);\nParam weight(0.5);\nParam mist(0.2);\nParam heat_macro(0.3);\nParam drift_param(0);\nParam density_param(0.5);\n\nHistory prev_trig(0);\nHistory pressure(0);\nHistory heat_state(0);\nHistory fatigue(0);\nHistory exc_car_phase(0);\nHistory exc_mod_phase(0);\nHistory exc_env(0);\nHistory noise_filt(0);\nHistory ry1_a(0);\nHistory ry2_a(0);\nHistory ry1_b(0);\nHistory ry2_b(0);\nHistory ry1_c(0);\nHistory ry2_c(0);\nHistory ry1_d(0);\nHistory ry2_d(0);\nHistory comb_lp(0);\nHistory halo_env(0);\nHistory main_env(0);\nDelay comb_d(8820);\n\ntrig_on = (in1 > 0.5) * (prev_trig <= 0.5);\nvel = in1;\nprev_trig = in1;\n\nif (trig_on) {\n    pressure = min(pressure + vel * (0.3 + stress * 0.7) * (1 - pressure), 1);\n    fatigue = min(fatigue + 0.02 * (1 - fatigue), 1);\n    exc_env = 1;\n    halo_env = vel * mist;\n    main_env = vel;\n}\n\np_decay = 0.00002 + (1 - stress) * 0.00008;\npressure = pressure * (1 - p_decay);\nheat_state = heat_state + (pressure - heat_state) * 0.0002;\nheat_state = heat_state * (1 - 0.00005);\nfatigue = fatigue * (1 - 0.000002);\nstiffness = fatigue * 0.6 + pressure * 0.4;\n\neff_heat = clamp(heat_macro + heat_state * 0.5, 0, 1);\neff_scar = clamp(scar + pressure * stress, 0, 1);\np_mod = pitch + noise() * pressure * drift_param * 2;\nbase_freq = mtof(clamp(p_mod, 10, 130));\nw_scale = 1 - weight * 0.8;\nbody_freq = base_freq * w_scale;\n\ne_decay = 0.001 + density_param * 0.003;\nexc_env = exc_env * (1 - e_decay);\n\nexciter_out = 0;\nif (exciter_type < 0.5) {\n    fm_r = 1.41 + eff_heat * 2;\n    mf = base_freq * fm_r;\n    fm_idx = (8 + eff_heat * 12) * exc_env;\n    exc_mod_phase = wrap(exc_mod_phase + mf / samplerate, 0, 1);\n    mod_sig = sin(exc_mod_phase * twopi) * fm_idx;\n    exc_car_phase = wrap(exc_car_phase + base_freq / samplerate, 0, 1);\n    exciter_out = sin(exc_car_phase * twopi + mod_sig) * exc_env;\n} else {\n    n = noise();\n    cutoff = base_freq * (2 + eff_heat * 8);\n    coeff = clamp(1 - exp(-twopi * cutoff / samplerate), 0.001, 0.999);\n    noise_filt = noise_filt + (n - noise_filt) * coeff;\n    exciter_out = noise_filt * 4 * exc_env;\n}\n\nbody_out = 0;\neff_Q = clamp(0.995 - fatigue * 0.3, 0.8, 0.999);\n\nif (body_type < 0.5) {\n    w1 = twopi * body_freq * 1.0 / samplerate;\n    r1 = eff_Q;\n    ya = exciter_out + 2 * r1 * cos(w1) * ry1_a - r1 * r1 * ry2_a;\n    ry2_a = ry1_a; ry1_a = ya;\n    w2 = twopi * body_freq * (1.347 + stiffness * 0.15) / samplerate;\n    r2 = eff_Q * 0.99;\n    yb = exciter_out + 2 * r2 * cos(w2) * ry1_b - r2 * r2 * ry2_b;\n    ry2_b = ry1_b; ry1_b = yb;\n    w3 = twopi * body_freq * (1.891 + stiffness * 0.2) / samplerate;\n    r3 = eff_Q * 0.98;\n    yc = exciter_out + 2 * r3 * cos(w3) * ry1_c - r3 * r3 * ry2_c;\n    ry2_c = ry1_c; ry1_c = yc;\n    w4 = twopi * body_freq * (2.534 + stiffness * 0.3) / samplerate;\n    r4 = eff_Q * 0.97;\n    yd = exciter_out + 2 * r4 * cos(w4) * ry1_d - r4 * r4 * ry2_d;\n    ry2_d = ry1_d; ry1_d = yd;\n    body_out = (ya + yb * 0.7 + yc * 0.45 + yd * 0.3) * 0.25;\n} else {\n    d_samps = clamp(samplerate / body_freq, 2, 8000);\n    fb = eff_Q * 0.9;\n    delayed = comb_d.read(d_samps);\n    d_coeff = 0.3 + fatigue * 0.4;\n    comb_lp = comb_lp + (delayed - comb_lp) * d_coeff;\n    comb_d.write(exciter_out + comb_lp * fb);\n    body_out = delayed;\n}\n\nfold_d = 1 + eff_scar * 4;\nfractured = body_out;\nif (eff_scar > 0.01) {\n    biased = body_out + pressure * 0.3;\n    folded = asin(sin(biased * fold_d * 1.5707963)) * 0.6366197;\n    fractured = body_out * (1 - eff_scar) + folded * eff_scar;\n}\n\nbl_decay = 0.0001 + bloom * 0.001;\nhalo_env = halo_env * (1 - bl_decay);\nh_out = noise() * halo_env * clamp(body_freq * 2 / samplerate, 0.01, 0.49) * 4;\n\nenv_rate = 1.0 / max(decay_ms * samplerate / 1000, 1);\nmain_env = main_env * (1 - env_rate);\n\nmixed = fractured * (1 - mist * 0.5) + h_out;\nout1 = mixed * main_env;"
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
						830,
						367,
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
					"id": "vb-5",
					"maxclass": "button",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						885,
						304,
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
					"id": "vc-tab",
					"maxclass": "tab",
					"numinlets": 1,
					"numoutlets": 3,
					"patching_rect": [
						30,
						404,
						580,
						28
					],
					"outlettype": [
						"int",
						"",
						""
					],
					"parameter_enable": 0,
					"fontface": 1,
					"fontsize": 12.0,
					"tabs": [
						"MASS",
						"VEIN",
						"SHARD",
						"HUSK",
						"FAULT",
						"HALO"
					]
				}
			},
			{
				"box": {
					"id": "vc-js",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 7,
					"patching_rect": [
						550,
						404,
						220,
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
						550,
						382,
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
					"id": "vc-route",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 13,
					"patching_rect": [
						30,
						436,
						650,
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
						466,
						70,
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
						35,
						484,
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
						35,
						528,
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
						35,
						554,
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
						112,
						466,
						70,
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
						117,
						484,
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
						117,
						528,
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
						117,
						554,
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
						194,
						466,
						70,
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
						199,
						484,
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
						199,
						528,
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
						199,
						554,
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
						276,
						466,
						70,
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
						281,
						484,
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
						281,
						528,
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
						281,
						554,
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
						358,
						466,
						70,
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
						363,
						484,
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
						363,
						528,
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
						363,
						554,
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
						440,
						466,
						70,
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
						445,
						484,
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
						445,
						528,
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
						445,
						554,
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
						522,
						466,
						70,
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
						527,
						484,
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
						527,
						528,
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
						527,
						554,
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
						604,
						466,
						70,
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
						609,
						484,
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
						609,
						528,
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
						609,
						554,
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
						686,
						466,
						70,
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
						691,
						484,
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
						691,
						528,
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
						691,
						554,
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
						768,
						466,
						70,
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
						773,
						484,
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
						773,
						528,
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
						773,
						554,
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
						850,
						466,
						70,
						20
					],
					"text": "EXC TYPE",
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
						855,
						484,
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
						855,
						528,
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
						855,
						554,
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
						932,
						466,
						70,
						20
					],
					"text": "BODY TYPE",
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
						937,
						484,
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
						937,
						528,
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
						937,
						554,
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
					"id": "midi-lbl",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						30,
						584,
						60,
						20
					],
					"text": "MIDI IN",
					"fontface": 1
				}
			},
			{
				"box": {
					"id": "midi-in",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 3,
					"patching_rect": [
						100,
						584,
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
						100,
						609,
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
						100,
						634,
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
					"id": "midi-hint",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						280,
						634,
						400,
						20
					],
					"text": "Notes: C2=Mass D2=Vein E2=Shard F2=Husk G2=Fault A2=Halo"
				}
			},
			{
				"box": {
					"id": "mx-0",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						30,
						666,
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
						100,
						666,
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
						170,
						666,
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
						240,
						666,
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
						310,
						666,
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
						30,
						696,
						350,
						28
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
					"id": "mx-scope",
					"maxclass": "scope~",
					"numinlets": 2,
					"numoutlets": 0,
					"patching_rect": [
						420,
						686,
						200,
						55
					]
				}
			},
			{
				"box": {
					"id": "mx-meter",
					"maxclass": "meter~",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						30,
						730,
						350,
						18
					],
					"outlettype": [
						"float"
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
						30,
						756,
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
						120,
						752,
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
					"id": "out-as",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 3,
					"patching_rect": [
						120,
						780,
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
						120,
						806,
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
						170,
						806,
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
					"id": "out-al",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						150,
						754,
						50,
						20
					],
					"text": "AUDIO"
				}
			},
			{
				"box": {
					"id": "h1",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						420,
						746,
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
						420,
						766,
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
						420,
						786,
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
						"vg-0",
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
						"vg-1",
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
						"vg-2",
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
						"vg-3",
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
						"vg-4",
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
						"vg-5",
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
						"vc-0",
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
						"vc-1",
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
						"vc-2",
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
						"vc-3",
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
						"vc-4",
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
						"vc-5",
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
						"mx-0",
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
						"vl-2",
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
						"vl-3",
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
						"vl-4",
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
						"vl-5",
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
						"mx-meter",
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
			}
		]
	}
}