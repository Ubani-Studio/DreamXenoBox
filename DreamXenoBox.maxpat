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
			30,
			50,
			1050,
			700
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
		"description": "Dream Xeno Box - 6-Voice Alien Percussion Groovebox",
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
						24
					],
					"text": "DREAM XENO BOX \u2014 6-Voice Alien Percussion Groovebox",
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
						45,
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
					"id": "tr-bpminit",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						100,
						45,
						30,
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
					"id": "tr-bpm-lbl",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						145,
						45,
						30,
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
						45,
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
						45,
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
					"id": "tr-play-lbl",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						400,
						45,
						35,
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
						40,
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
						80,
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
					"id": "tr-count",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 4,
					"patching_rect": [
						440,
						110,
						85,
						22
					],
					"outlettype": [
						"int",
						"",
						"",
						"int"
					],
					"text": "counter 0 15"
				}
			},
			{
				"box": {
					"id": "tr-step-lbl",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						540,
						110,
						35,
						20
					],
					"text": "STEP"
				}
			},
			{
				"box": {
					"id": "tr-step",
					"maxclass": "number",
					"numinlets": 1,
					"numoutlets": 2,
					"patching_rect": [
						575,
						110,
						40,
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
					"id": "sq-js",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 6,
					"patching_rect": [
						440,
						145,
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
					"text": "js sequencer.js"
				}
			},
			{
				"box": {
					"id": "sq-v0-lbl",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						30,
						140,
						80,
						20
					],
					"text": "MASS",
					"fontface": 1,
					"fontsize": 12.0
				}
			},
			{
				"box": {
					"id": "sq-v0-ms",
					"maxclass": "multislider",
					"numinlets": 1,
					"numoutlets": 2,
					"patching_rect": [
						30,
						160,
						140,
						90
					],
					"outlettype": [
						"",
						""
					],
					"parameter_enable": 0,
					"setminmax": [
						0.0,
						1.0
					],
					"setstyle": 1,
					"size": 16,
					"slidercolor": [
						0.9,
						0.2,
						0.2,
						1.0
					],
					"candicane2": [
						0.9,
						0.2,
						0.2,
						1.0
					],
					"orientation": 1,
					"spacing": 1,
					"thickness": 2
				}
			},
			{
				"box": {
					"id": "sq-v0-pi",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						30,
						255,
						65,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend 0"
				}
			},
			{
				"box": {
					"id": "sq-v0-ps",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						30,
						280,
						110,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend setpattern"
				}
			},
			{
				"box": {
					"id": "sq-v0-pat",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						30,
						308,
						140,
						22
					],
					"outlettype": [
						""
					],
					"text": "1.0 0.0 0.0 0.0 1.0 0.0 0.0 0.0 1.0 0.0 0.0 0.0 1.0 0.0 0.0 0.0"
				}
			},
			{
				"box": {
					"id": "vo-v0-click",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						30,
						345,
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
					"id": "vo-v0-gen",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						30,
						375,
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
									"id": "obj-gin",
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
									"id": "obj-gcb",
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
									"id": "obj-gout",
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
										"obj-gin",
										0
									],
									"destination": [
										"obj-gcb",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"obj-gcb",
										0
									],
									"destination": [
										"obj-gout",
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
					"id": "vo-v0-init",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						30,
						415,
						140,
						22
					],
					"outlettype": [
						""
					],
					"text": "pitch 36, decay_ms 300, exciter_type 0, body_type 1, stress 0.3, bloom 0.3, scar 0.2, weight 0.9, mist 0.1, heat_macro 0.3, drift_param 0.1, density_param 0.5"
				}
			},
			{
				"box": {
					"id": "vo-v0-lvl",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						30,
						445,
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
					"id": "vo-v0-btn",
					"maxclass": "button",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						140,
						340,
						25,
						25
					],
					"outlettype": [
						"bang"
					]
				}
			},
			{
				"box": {
					"id": "sq-v1-lbl",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						190,
						140,
						80,
						20
					],
					"text": "VEIN",
					"fontface": 1,
					"fontsize": 12.0
				}
			},
			{
				"box": {
					"id": "sq-v1-ms",
					"maxclass": "multislider",
					"numinlets": 1,
					"numoutlets": 2,
					"patching_rect": [
						190,
						160,
						140,
						90
					],
					"outlettype": [
						"",
						""
					],
					"parameter_enable": 0,
					"setminmax": [
						0.0,
						1.0
					],
					"setstyle": 1,
					"size": 16,
					"slidercolor": [
						0.8,
						0.5,
						0.1,
						1.0
					],
					"candicane2": [
						0.8,
						0.5,
						0.1,
						1.0
					],
					"orientation": 1,
					"spacing": 1,
					"thickness": 2
				}
			},
			{
				"box": {
					"id": "sq-v1-pi",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						190,
						255,
						65,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend 1"
				}
			},
			{
				"box": {
					"id": "sq-v1-ps",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						190,
						280,
						110,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend setpattern"
				}
			},
			{
				"box": {
					"id": "sq-v1-pat",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						190,
						308,
						140,
						22
					],
					"outlettype": [
						""
					],
					"text": "0.0 0.0 1.0 0.0 0.0 0.0 1.0 0.0 0.0 0.0 1.0 0.0 0.0 0.0 1.0 0.0"
				}
			},
			{
				"box": {
					"id": "vo-v1-click",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						190,
						345,
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
					"id": "vo-v1-gen",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						190,
						375,
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
									"id": "obj-gin",
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
									"id": "obj-gcb",
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
									"id": "obj-gout",
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
										"obj-gin",
										0
									],
									"destination": [
										"obj-gcb",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"obj-gcb",
										0
									],
									"destination": [
										"obj-gout",
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
					"id": "vo-v1-init",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						190,
						415,
						140,
						22
					],
					"outlettype": [
						""
					],
					"text": "pitch 62, decay_ms 120, exciter_type 0, body_type 0, stress 0.4, bloom 0.2, scar 0.4, weight 0.4, mist 0.15, heat_macro 0.5, drift_param 0.05, density_param 0.5"
				}
			},
			{
				"box": {
					"id": "vo-v1-lvl",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						190,
						445,
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
					"id": "vo-v1-btn",
					"maxclass": "button",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						300,
						340,
						25,
						25
					],
					"outlettype": [
						"bang"
					]
				}
			},
			{
				"box": {
					"id": "sq-v2-lbl",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						350,
						140,
						80,
						20
					],
					"text": "SHARD",
					"fontface": 1,
					"fontsize": 12.0
				}
			},
			{
				"box": {
					"id": "sq-v2-ms",
					"maxclass": "multislider",
					"numinlets": 1,
					"numoutlets": 2,
					"patching_rect": [
						350,
						160,
						140,
						90
					],
					"outlettype": [
						"",
						""
					],
					"parameter_enable": 0,
					"setminmax": [
						0.0,
						1.0
					],
					"setstyle": 1,
					"size": 16,
					"slidercolor": [
						0.2,
						0.7,
						0.9,
						1.0
					],
					"candicane2": [
						0.2,
						0.7,
						0.9,
						1.0
					],
					"orientation": 1,
					"spacing": 1,
					"thickness": 2
				}
			},
			{
				"box": {
					"id": "sq-v2-pi",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						350,
						255,
						65,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend 2"
				}
			},
			{
				"box": {
					"id": "sq-v2-ps",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						350,
						280,
						110,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend setpattern"
				}
			},
			{
				"box": {
					"id": "sq-v2-pat",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						350,
						308,
						140,
						22
					],
					"outlettype": [
						""
					],
					"text": "1.0 0.0 1.0 1.0 0.0 0.0 1.0 0.0 1.0 0.0 1.0 1.0 0.0 0.0 1.0 0.0"
				}
			},
			{
				"box": {
					"id": "vo-v2-click",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						350,
						345,
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
					"id": "vo-v2-gen",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						350,
						375,
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
									"id": "obj-gin",
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
									"id": "obj-gcb",
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
									"id": "obj-gout",
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
										"obj-gin",
										0
									],
									"destination": [
										"obj-gcb",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"obj-gcb",
										0
									],
									"destination": [
										"obj-gout",
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
					"id": "vo-v2-init",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						350,
						415,
						140,
						22
					],
					"outlettype": [
						""
					],
					"text": "pitch 84, decay_ms 60, exciter_type 1, body_type 0, stress 0.5, bloom 0.15, scar 0.6, weight 0.1, mist 0.3, heat_macro 0.7, drift_param 0.1, density_param 0.7"
				}
			},
			{
				"box": {
					"id": "vo-v2-lvl",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						350,
						445,
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
					"id": "vo-v2-btn",
					"maxclass": "button",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						460,
						340,
						25,
						25
					],
					"outlettype": [
						"bang"
					]
				}
			},
			{
				"box": {
					"id": "sq-v3-lbl",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						510,
						140,
						80,
						20
					],
					"text": "HUSK",
					"fontface": 1,
					"fontsize": 12.0
				}
			},
			{
				"box": {
					"id": "sq-v3-ms",
					"maxclass": "multislider",
					"numinlets": 1,
					"numoutlets": 2,
					"patching_rect": [
						510,
						160,
						140,
						90
					],
					"outlettype": [
						"",
						""
					],
					"parameter_enable": 0,
					"setminmax": [
						0.0,
						1.0
					],
					"setstyle": 1,
					"size": 16,
					"slidercolor": [
						0.6,
						0.5,
						0.3,
						1.0
					],
					"candicane2": [
						0.6,
						0.5,
						0.3,
						1.0
					],
					"orientation": 1,
					"spacing": 1,
					"thickness": 2
				}
			},
			{
				"box": {
					"id": "sq-v3-pi",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						510,
						255,
						65,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend 3"
				}
			},
			{
				"box": {
					"id": "sq-v3-ps",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						510,
						280,
						110,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend setpattern"
				}
			},
			{
				"box": {
					"id": "sq-v3-pat",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						510,
						308,
						140,
						22
					],
					"outlettype": [
						""
					],
					"text": "0.0 0.0 0.0 0.0 1.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 1.0 0.0 0.0 0.0"
				}
			},
			{
				"box": {
					"id": "vo-v3-click",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						510,
						345,
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
					"id": "vo-v3-gen",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						510,
						375,
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
									"id": "obj-gin",
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
									"id": "obj-gcb",
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
									"id": "obj-gout",
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
										"obj-gin",
										0
									],
									"destination": [
										"obj-gcb",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"obj-gcb",
										0
									],
									"destination": [
										"obj-gout",
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
					"id": "vo-v3-init",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						510,
						415,
						140,
						22
					],
					"outlettype": [
						""
					],
					"text": "pitch 52, decay_ms 200, exciter_type 1, body_type 1, stress 0.2, bloom 0.3, scar 0.15, weight 0.6, mist 0.05, heat_macro 0.2, drift_param 0.02, density_param 0.4"
				}
			},
			{
				"box": {
					"id": "vo-v3-lvl",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						510,
						445,
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
					"id": "vo-v3-btn",
					"maxclass": "button",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						620,
						340,
						25,
						25
					],
					"outlettype": [
						"bang"
					]
				}
			},
			{
				"box": {
					"id": "sq-v4-lbl",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						670,
						140,
						80,
						20
					],
					"text": "FAULT",
					"fontface": 1,
					"fontsize": 12.0
				}
			},
			{
				"box": {
					"id": "sq-v4-ms",
					"maxclass": "multislider",
					"numinlets": 1,
					"numoutlets": 2,
					"patching_rect": [
						670,
						160,
						140,
						90
					],
					"outlettype": [
						"",
						""
					],
					"parameter_enable": 0,
					"setminmax": [
						0.0,
						1.0
					],
					"setstyle": 1,
					"size": 16,
					"slidercolor": [
						0.5,
						0.1,
						0.6,
						1.0
					],
					"candicane2": [
						0.5,
						0.1,
						0.6,
						1.0
					],
					"orientation": 1,
					"spacing": 1,
					"thickness": 2
				}
			},
			{
				"box": {
					"id": "sq-v4-pi",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						670,
						255,
						65,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend 4"
				}
			},
			{
				"box": {
					"id": "sq-v4-ps",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						670,
						280,
						110,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend setpattern"
				}
			},
			{
				"box": {
					"id": "sq-v4-pat",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						670,
						308,
						140,
						22
					],
					"outlettype": [
						""
					],
					"text": "1.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 1.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0"
				}
			},
			{
				"box": {
					"id": "vo-v4-click",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						670,
						345,
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
					"id": "vo-v4-gen",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						670,
						375,
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
									"id": "obj-gin",
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
									"id": "obj-gcb",
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
									"id": "obj-gout",
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
										"obj-gin",
										0
									],
									"destination": [
										"obj-gcb",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"obj-gcb",
										0
									],
									"destination": [
										"obj-gout",
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
					"id": "vo-v4-init",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						670,
						415,
						140,
						22
					],
					"outlettype": [
						""
					],
					"text": "pitch 40, decay_ms 400, exciter_type 0, body_type 1, stress 0.7, bloom 0.4, scar 0.7, weight 0.8, mist 0.2, heat_macro 0.4, drift_param 0.15, density_param 0.5"
				}
			},
			{
				"box": {
					"id": "vo-v4-lvl",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						670,
						445,
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
					"id": "vo-v4-btn",
					"maxclass": "button",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						780,
						340,
						25,
						25
					],
					"outlettype": [
						"bang"
					]
				}
			},
			{
				"box": {
					"id": "sq-v5-lbl",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						830,
						140,
						80,
						20
					],
					"text": "HALO",
					"fontface": 1,
					"fontsize": 12.0
				}
			},
			{
				"box": {
					"id": "sq-v5-ms",
					"maxclass": "multislider",
					"numinlets": 1,
					"numoutlets": 2,
					"patching_rect": [
						830,
						160,
						140,
						90
					],
					"outlettype": [
						"",
						""
					],
					"parameter_enable": 0,
					"setminmax": [
						0.0,
						1.0
					],
					"setstyle": 1,
					"size": 16,
					"slidercolor": [
						0.3,
						0.8,
						0.5,
						1.0
					],
					"candicane2": [
						0.3,
						0.8,
						0.5,
						1.0
					],
					"orientation": 1,
					"spacing": 1,
					"thickness": 2
				}
			},
			{
				"box": {
					"id": "sq-v5-pi",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						830,
						255,
						65,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend 5"
				}
			},
			{
				"box": {
					"id": "sq-v5-ps",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						830,
						280,
						110,
						22
					],
					"outlettype": [
						""
					],
					"text": "prepend setpattern"
				}
			},
			{
				"box": {
					"id": "sq-v5-pat",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						830,
						308,
						140,
						22
					],
					"outlettype": [
						""
					],
					"text": "0.0 0.0 0.0 1.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 1.0 0.0 0.0 0.0 0.0"
				}
			},
			{
				"box": {
					"id": "vo-v5-click",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						830,
						345,
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
					"id": "vo-v5-gen",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						830,
						375,
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
									"id": "obj-gin",
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
									"id": "obj-gcb",
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
									"id": "obj-gout",
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
										"obj-gin",
										0
									],
									"destination": [
										"obj-gcb",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"obj-gcb",
										0
									],
									"destination": [
										"obj-gout",
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
					"id": "vo-v5-init",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						830,
						415,
						140,
						22
					],
					"outlettype": [
						""
					],
					"text": "pitch 72, decay_ms 500, exciter_type 1, body_type 0, stress 0.2, bloom 0.7, scar 0.1, weight 0.2, mist 0.8, heat_macro 0.3, drift_param 0.05, density_param 0.3"
				}
			},
			{
				"box": {
					"id": "vo-v5-lvl",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						830,
						445,
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
					"id": "vo-v5-btn",
					"maxclass": "button",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						940,
						340,
						25,
						25
					],
					"outlettype": [
						"bang"
					]
				}
			},
			{
				"box": {
					"id": "mx-sum0",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						30,
						480,
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
					"id": "mx-sum1",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						110,
						480,
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
					"id": "mx-sum2",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						190,
						480,
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
					"id": "mx-sum3",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						270,
						480,
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
					"id": "mx-sum4",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						350,
						480,
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
						515,
						350,
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
					"id": "mx-scope",
					"maxclass": "scope~",
					"numinlets": 2,
					"numoutlets": 0,
					"patching_rect": [
						420,
						510,
						200,
						60
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
						555,
						350,
						20
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
						585,
						60,
						22
					],
					"text": "dac~ 1 2"
				}
			},
			{
				"box": {
					"id": "out-atog",
					"maxclass": "toggle",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						120,
						580,
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
					"id": "out-asel",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 3,
					"patching_rect": [
						120,
						610,
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
					"id": "out-stop",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						120,
						635,
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
					"id": "out-start",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						170,
						635,
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
					"id": "out-albl",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						150,
						580,
						80,
						20
					],
					"text": "AUDIO ON/OFF"
				}
			},
			{
				"box": {
					"id": "hint1",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						420,
						585,
						350,
						20
					],
					"text": "Click multisliders to edit. Toggle PLAY to start."
				}
			},
			{
				"box": {
					"id": "hint2",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						420,
						605,
						400,
						20
					],
					"text": "Repeated hits build pressure. Silence cools it down. Buttons = manual trigger."
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
						"tr-bpminit",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"tr-bpminit",
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
						"tr-count",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"tr-count",
						0
					],
					"destination": [
						"tr-step",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"tr-count",
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
						"sq-v0-ms",
						0
					],
					"destination": [
						"sq-v0-pi",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"sq-v0-pi",
						0
					],
					"destination": [
						"sq-v0-ps",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"sq-v0-ps",
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
						"sq-v0-pat",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"sq-v0-pat",
						0
					],
					"destination": [
						"sq-v0-ms",
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
						"vo-v0-click",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vo-v0-click",
						0
					],
					"destination": [
						"vo-v0-gen",
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
						"vo-v0-init",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vo-v0-init",
						0
					],
					"destination": [
						"vo-v0-gen",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vo-v0-gen",
						0
					],
					"destination": [
						"vo-v0-lvl",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vo-v0-btn",
						0
					],
					"destination": [
						"vo-v0-click",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"sq-v1-ms",
						0
					],
					"destination": [
						"sq-v1-pi",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"sq-v1-pi",
						0
					],
					"destination": [
						"sq-v1-ps",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"sq-v1-ps",
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
						"sq-v1-pat",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"sq-v1-pat",
						0
					],
					"destination": [
						"sq-v1-ms",
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
						"vo-v1-click",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vo-v1-click",
						0
					],
					"destination": [
						"vo-v1-gen",
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
						"vo-v1-init",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vo-v1-init",
						0
					],
					"destination": [
						"vo-v1-gen",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vo-v1-gen",
						0
					],
					"destination": [
						"vo-v1-lvl",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vo-v1-btn",
						0
					],
					"destination": [
						"vo-v1-click",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"sq-v2-ms",
						0
					],
					"destination": [
						"sq-v2-pi",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"sq-v2-pi",
						0
					],
					"destination": [
						"sq-v2-ps",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"sq-v2-ps",
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
						"sq-v2-pat",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"sq-v2-pat",
						0
					],
					"destination": [
						"sq-v2-ms",
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
						"vo-v2-click",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vo-v2-click",
						0
					],
					"destination": [
						"vo-v2-gen",
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
						"vo-v2-init",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vo-v2-init",
						0
					],
					"destination": [
						"vo-v2-gen",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vo-v2-gen",
						0
					],
					"destination": [
						"vo-v2-lvl",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vo-v2-btn",
						0
					],
					"destination": [
						"vo-v2-click",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"sq-v3-ms",
						0
					],
					"destination": [
						"sq-v3-pi",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"sq-v3-pi",
						0
					],
					"destination": [
						"sq-v3-ps",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"sq-v3-ps",
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
						"sq-v3-pat",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"sq-v3-pat",
						0
					],
					"destination": [
						"sq-v3-ms",
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
						"vo-v3-click",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vo-v3-click",
						0
					],
					"destination": [
						"vo-v3-gen",
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
						"vo-v3-init",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vo-v3-init",
						0
					],
					"destination": [
						"vo-v3-gen",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vo-v3-gen",
						0
					],
					"destination": [
						"vo-v3-lvl",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vo-v3-btn",
						0
					],
					"destination": [
						"vo-v3-click",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"sq-v4-ms",
						0
					],
					"destination": [
						"sq-v4-pi",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"sq-v4-pi",
						0
					],
					"destination": [
						"sq-v4-ps",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"sq-v4-ps",
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
						"sq-v4-pat",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"sq-v4-pat",
						0
					],
					"destination": [
						"sq-v4-ms",
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
						"vo-v4-click",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vo-v4-click",
						0
					],
					"destination": [
						"vo-v4-gen",
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
						"vo-v4-init",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vo-v4-init",
						0
					],
					"destination": [
						"vo-v4-gen",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vo-v4-gen",
						0
					],
					"destination": [
						"vo-v4-lvl",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vo-v4-btn",
						0
					],
					"destination": [
						"vo-v4-click",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"sq-v5-ms",
						0
					],
					"destination": [
						"sq-v5-pi",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"sq-v5-pi",
						0
					],
					"destination": [
						"sq-v5-ps",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"sq-v5-ps",
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
						"sq-v5-pat",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"sq-v5-pat",
						0
					],
					"destination": [
						"sq-v5-ms",
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
						"vo-v5-click",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vo-v5-click",
						0
					],
					"destination": [
						"vo-v5-gen",
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
						"vo-v5-init",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vo-v5-init",
						0
					],
					"destination": [
						"vo-v5-gen",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vo-v5-gen",
						0
					],
					"destination": [
						"vo-v5-lvl",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vo-v5-btn",
						0
					],
					"destination": [
						"vo-v5-click",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vo-v0-lvl",
						0
					],
					"destination": [
						"mx-sum0",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vo-v1-lvl",
						0
					],
					"destination": [
						"mx-sum0",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mx-sum0",
						0
					],
					"destination": [
						"mx-sum1",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vo-v2-lvl",
						0
					],
					"destination": [
						"mx-sum1",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mx-sum1",
						0
					],
					"destination": [
						"mx-sum2",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vo-v3-lvl",
						0
					],
					"destination": [
						"mx-sum2",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mx-sum2",
						0
					],
					"destination": [
						"mx-sum3",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vo-v4-lvl",
						0
					],
					"destination": [
						"mx-sum3",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mx-sum3",
						0
					],
					"destination": [
						"mx-sum4",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"vo-v5-lvl",
						0
					],
					"destination": [
						"mx-sum4",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"mx-sum4",
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
						"out-atog",
						0
					],
					"destination": [
						"out-asel",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"out-asel",
						0
					],
					"destination": [
						"out-stop",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"out-asel",
						1
					],
					"destination": [
						"out-start",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"out-stop",
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
						"out-start",
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