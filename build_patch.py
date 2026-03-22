#!/usr/bin/env python3
"""Generate DreamXenoBox.maxpat — 6-voice sequencer groovebox."""
import json

# Voice engine codebox code (no comments — comments break gen~ JSON embedding)
VOICE_CODE = r"""Param pitch(60);
Param decay_ms(200);
Param exciter_type(0);
Param body_type(0);
Param stress(0.3);
Param bloom(0.3);
Param scar(0);
Param weight(0.5);
Param mist(0.2);
Param heat_macro(0.3);
Param drift_param(0);
Param density_param(0.5);

History prev_trig(0);
History pressure(0);
History heat_state(0);
History fatigue(0);
History exc_car_phase(0);
History exc_mod_phase(0);
History exc_env(0);
History noise_filt(0);
History ry1_a(0);
History ry2_a(0);
History ry1_b(0);
History ry2_b(0);
History ry1_c(0);
History ry2_c(0);
History ry1_d(0);
History ry2_d(0);
History comb_lp(0);
History halo_env(0);
History main_env(0);
Delay comb_d(8820);

trig_on = (in1 > 0.5) * (prev_trig <= 0.5);
vel = in1;
prev_trig = in1;

if (trig_on) {
    pressure = min(pressure + vel * (0.3 + stress * 0.7) * (1 - pressure), 1);
    fatigue = min(fatigue + 0.02 * (1 - fatigue), 1);
    exc_env = 1;
    halo_env = vel * mist;
    main_env = vel;
}

p_decay = 0.00002 + (1 - stress) * 0.00008;
pressure = pressure * (1 - p_decay);
heat_state = heat_state + (pressure - heat_state) * 0.0002;
heat_state = heat_state * (1 - 0.00005);
fatigue = fatigue * (1 - 0.000002);
stiffness = fatigue * 0.6 + pressure * 0.4;

eff_heat = clamp(heat_macro + heat_state * 0.5, 0, 1);
eff_scar = clamp(scar + pressure * stress, 0, 1);
p_mod = pitch + noise() * pressure * drift_param * 2;
base_freq = mtof(clamp(p_mod, 10, 130));
w_scale = 1 - weight * 0.8;
body_freq = base_freq * w_scale;

e_decay = 0.001 + density_param * 0.003;
exc_env = exc_env * (1 - e_decay);

exciter_out = 0;
if (exciter_type < 0.5) {
    fm_r = 1.41 + eff_heat * 2;
    mf = base_freq * fm_r;
    fm_idx = (8 + eff_heat * 12) * exc_env;
    exc_mod_phase = wrap(exc_mod_phase + mf / samplerate, 0, 1);
    mod_sig = sin(exc_mod_phase * twopi) * fm_idx;
    exc_car_phase = wrap(exc_car_phase + base_freq / samplerate, 0, 1);
    exciter_out = sin(exc_car_phase * twopi + mod_sig) * exc_env;
} else {
    n = noise();
    cutoff = base_freq * (2 + eff_heat * 8);
    coeff = clamp(1 - exp(-twopi * cutoff / samplerate), 0.001, 0.999);
    noise_filt = noise_filt + (n - noise_filt) * coeff;
    exciter_out = noise_filt * 4 * exc_env;
}

body_out = 0;
eff_Q = clamp(0.995 - fatigue * 0.3, 0.8, 0.999);

if (body_type < 0.5) {
    w1 = twopi * body_freq * 1.0 / samplerate;
    r1 = eff_Q;
    ya = exciter_out + 2 * r1 * cos(w1) * ry1_a - r1 * r1 * ry2_a;
    ry2_a = ry1_a; ry1_a = ya;
    w2 = twopi * body_freq * (1.347 + stiffness * 0.15) / samplerate;
    r2 = eff_Q * 0.99;
    yb = exciter_out + 2 * r2 * cos(w2) * ry1_b - r2 * r2 * ry2_b;
    ry2_b = ry1_b; ry1_b = yb;
    w3 = twopi * body_freq * (1.891 + stiffness * 0.2) / samplerate;
    r3 = eff_Q * 0.98;
    yc = exciter_out + 2 * r3 * cos(w3) * ry1_c - r3 * r3 * ry2_c;
    ry2_c = ry1_c; ry1_c = yc;
    w4 = twopi * body_freq * (2.534 + stiffness * 0.3) / samplerate;
    r4 = eff_Q * 0.97;
    yd = exciter_out + 2 * r4 * cos(w4) * ry1_d - r4 * r4 * ry2_d;
    ry2_d = ry1_d; ry1_d = yd;
    body_out = (ya + yb * 0.7 + yc * 0.45 + yd * 0.3) * 0.25;
} else {
    d_samps = clamp(samplerate / body_freq, 2, 8000);
    fb = eff_Q * 0.9;
    delayed = comb_d.read(d_samps);
    d_coeff = 0.3 + fatigue * 0.4;
    comb_lp = comb_lp + (delayed - comb_lp) * d_coeff;
    comb_d.write(exciter_out + comb_lp * fb);
    body_out = delayed;
}

fold_d = 1 + eff_scar * 4;
fractured = body_out;
if (eff_scar > 0.01) {
    biased = body_out + pressure * 0.3;
    folded = asin(sin(biased * fold_d * 1.5707963)) * 0.6366197;
    fractured = body_out * (1 - eff_scar) + folded * eff_scar;
}

bl_decay = 0.0001 + bloom * 0.001;
halo_env = halo_env * (1 - bl_decay);
h_out = noise() * halo_env * clamp(body_freq * 2 / samplerate, 0.01, 0.49) * 4;

env_rate = 1.0 / max(decay_ms * samplerate / 1000, 1);
main_env = main_env * (1 - env_rate);

mixed = fractured * (1 - mist * 0.5) + h_out;
out1 = mixed * main_env;""".strip()

# Gen~ patcher (embedded in each voice's gen~ object)
def gen_patcher():
    return {
        "fileversion": 1,
        "appversion": {"major": 9, "minor": 0, "revision": 0, "architecture": "x64", "modernui": 1},
        "rect": [0, 0, 800, 600],
        "editing_bgcolor": [0.65, 0.65, 0.65, 1.0],
        "boxes": [
            {"box": {"id": "obj-gin", "maxclass": "newobj", "numinlets": 1, "numoutlets": 1,
                     "outlettype": [""], "patching_rect": [50, 14, 30, 22], "text": "in 1"}},
            {"box": {"id": "obj-gcb", "maxclass": "codebox", "numinlets": 1, "numoutlets": 1,
                     "outlettype": [""], "patching_rect": [50, 50, 700, 450], "code": VOICE_CODE}},
            {"box": {"id": "obj-gout", "maxclass": "newobj", "numinlets": 1, "numoutlets": 0,
                     "patching_rect": [50, 520, 35, 22], "text": "out 1"}}
        ],
        "lines": [
            {"patchline": {"source": ["obj-gin", 0], "destination": ["obj-gcb", 0]}},
            {"patchline": {"source": ["obj-gcb", 0], "destination": ["obj-gout", 0]}}
        ]
    }

# ── Voice definitions ──
VOICES = [
    {"name": "MASS",  "color": [0.9, 0.2, 0.2, 1.0], "level": 0.4,
     "params": "pitch 36, decay_ms 300, exciter_type 0, body_type 1, stress 0.3, bloom 0.3, scar 0.2, weight 0.9, mist 0.1, heat_macro 0.3, drift_param 0.1, density_param 0.5",
     "pattern": [1,0,0,0, 1,0,0,0, 1,0,0,0, 1,0,0,0]},
    {"name": "VEIN",  "color": [0.8, 0.5, 0.1, 1.0], "level": 0.3,
     "params": "pitch 62, decay_ms 120, exciter_type 0, body_type 0, stress 0.4, bloom 0.2, scar 0.4, weight 0.4, mist 0.15, heat_macro 0.5, drift_param 0.05, density_param 0.5",
     "pattern": [0,0,1,0, 0,0,1,0, 0,0,1,0, 0,0,1,0]},
    {"name": "SHARD", "color": [0.2, 0.7, 0.9, 1.0], "level": 0.25,
     "params": "pitch 84, decay_ms 60, exciter_type 1, body_type 0, stress 0.5, bloom 0.15, scar 0.6, weight 0.1, mist 0.3, heat_macro 0.7, drift_param 0.1, density_param 0.7",
     "pattern": [1,0,1,1, 0,0,1,0, 1,0,1,1, 0,0,1,0]},
    {"name": "HUSK",  "color": [0.6, 0.5, 0.3, 1.0], "level": 0.3,
     "params": "pitch 52, decay_ms 200, exciter_type 1, body_type 1, stress 0.2, bloom 0.3, scar 0.15, weight 0.6, mist 0.05, heat_macro 0.2, drift_param 0.02, density_param 0.4",
     "pattern": [0,0,0,0, 1,0,0,0, 0,0,0,0, 1,0,0,0]},
    {"name": "FAULT", "color": [0.5, 0.1, 0.6, 1.0], "level": 0.35,
     "params": "pitch 40, decay_ms 400, exciter_type 0, body_type 1, stress 0.7, bloom 0.4, scar 0.7, weight 0.8, mist 0.2, heat_macro 0.4, drift_param 0.15, density_param 0.5",
     "pattern": [1,0,0,0, 0,0,0,0, 1,0,0,0, 0,0,0,0]},
    {"name": "HALO",  "color": [0.3, 0.8, 0.5, 1.0], "level": 0.2,
     "params": "pitch 72, decay_ms 500, exciter_type 1, body_type 0, stress 0.2, bloom 0.7, scar 0.1, weight 0.2, mist 0.8, heat_macro 0.3, drift_param 0.05, density_param 0.3",
     "pattern": [0,0,0,1, 0,0,0,0, 0,0,0,1, 0,0,0,0]},
]

COL_W = 160       # column width per voice
COL_X0 = 30       # first column x
MS_W = 140        # multislider width
MS_H = 90         # multislider height

def vx(i):
    return COL_X0 + i * COL_W

def box(id, cls, x, y, w, h, text=None, **kw):
    b = {"id": id, "maxclass": cls, "numinlets": kw.pop("ni", 1), "numoutlets": kw.pop("no", 1),
         "patching_rect": [x, y, w, h]}
    if "ot" in kw:
        b["outlettype"] = kw.pop("ot")
    if text is not None:
        b["text"] = text
    b.update(kw)
    return {"box": b}

def line(src_id, src_out, dst_id, dst_in):
    return {"patchline": {"source": [src_id, src_out], "destination": [dst_id, dst_in]}}

def build():
    boxes = []
    lines = []

    # ── TITLE ──
    boxes.append(box("title", "comment", 30, 10, 600, 24, "DREAM XENO BOX — 6-Voice Alien Percussion Groovebox",
                      no=0, fontsize=16.0, fontface=1))

    # ── TRANSPORT ──
    boxes.append(box("tr-lb", "newobj", 30, 45, 58, 22, "loadbang", ot=["bang"]))
    boxes.append(box("tr-bpminit", "message", 100, 45, 30, 22, "120", ni=2, ot=[""]))
    boxes.append(box("tr-bpm-lbl", "comment", 145, 45, 30, 20, "BPM", no=0))
    boxes.append(box("tr-bpm", "number", 175, 45, 50, 22, no=2, ot=["", "bang"], minimum=30, maximum=300))
    boxes.append(box("tr-calc", "newobj", 240, 45, 135, 22, "expr 60000. / ($f1 * 4.)", ot=[""]))
    boxes.append(box("tr-play-lbl", "comment", 400, 45, 35, 20, "PLAY", no=0))
    boxes.append(box("tr-play", "toggle", 440, 40, 30, 30, ot=["int"]))
    boxes.append(box("tr-metro", "newobj", 440, 80, 65, 22, "metro 125", ot=["bang"]))
    boxes.append(box("tr-count", "newobj", 440, 110, 85, 22, "counter 0 15", no=4, ot=["int","","","int"]))
    boxes.append(box("tr-step-lbl", "comment", 540, 110, 35, 20, "STEP", no=0))
    boxes.append(box("tr-step", "number", 575, 110, 40, 22, no=2, ot=["","bang"]))

    # Transport wiring
    lines.append(line("tr-lb", 0, "tr-bpminit", 0))
    lines.append(line("tr-bpminit", 0, "tr-bpm", 0))
    lines.append(line("tr-bpm", 0, "tr-calc", 0))
    lines.append(line("tr-calc", 0, "tr-metro", 1))   # right inlet = interval
    lines.append(line("tr-play", 0, "tr-metro", 0))
    lines.append(line("tr-metro", 0, "tr-count", 0))
    lines.append(line("tr-count", 0, "tr-step", 0))

    # ── JS SEQUENCER ──
    boxes.append(box("sq-js", "newobj", 440, 145, 200, 22,
                      "js sequencer.js", ni=1, no=6, ot=["","","","","",""]))
    lines.append(line("tr-count", 0, "sq-js", 0))

    # ── PER-VOICE ──
    for i, v in enumerate(VOICES):
        x = vx(i)
        vid = f"v{i}"

        # Sequencer grid
        boxes.append(box(f"sq-{vid}-lbl", "comment", x, 140, 80, 20, v["name"], no=0,
                         fontface=1, fontsize=12.0))
        boxes.append(box(f"sq-{vid}-ms", "multislider", x, 160, MS_W, MS_H, ni=1, no=2,
                         ot=["", ""],
                         parameter_enable=0, setminmax=[0.0, 1.0], setstyle=1, size=16,
                         slidercolor=v["color"], candicane2=v["color"],
                         orientation=1, spacing=1, thickness=2))

        # Multislider → JS (setpattern voice_idx <list>)
        boxes.append(box(f"sq-{vid}-pi", "newobj", x, 255, 65, 22, f"prepend {i}", ot=[""]))
        boxes.append(box(f"sq-{vid}-ps", "newobj", x, 280, 110, 22, "prepend setpattern", ot=[""]))
        lines.append(line(f"sq-{vid}-ms", 0, f"sq-{vid}-pi", 0))
        lines.append(line(f"sq-{vid}-pi", 0, f"sq-{vid}-ps", 0))
        lines.append(line(f"sq-{vid}-ps", 0, "sq-js", 0))

        # Pattern init (loadbang → pattern list → multislider)
        pat_str = " ".join(str(float(p)) for p in v["pattern"])
        boxes.append(box(f"sq-{vid}-pat", "message", x, 308, MS_W, 22, pat_str, ni=2, ot=[""]))
        lines.append(line("tr-lb", 0, f"sq-{vid}-pat", 0))
        lines.append(line(f"sq-{vid}-pat", 0, f"sq-{vid}-ms", 0))

        # Click~ + gen~ voice
        boxes.append(box(f"vo-{vid}-click", "newobj", x, 345, 42, 22, "click~", ot=["signal"]))
        boxes.append(box(f"vo-{vid}-gen", "newobj", x, 375, 150, 22, "gen~",
                         ot=["signal"], patcher=gen_patcher()))

        # JS outlet → click~
        lines.append(line("sq-js", i, f"vo-{vid}-click", 0))
        # click~ → gen~ signal inlet
        lines.append(line(f"vo-{vid}-click", 0, f"vo-{vid}-gen", 0))

        # Voice param init
        boxes.append(box(f"vo-{vid}-init", "message", x, 415, MS_W, 22, v["params"], ni=2, ot=[""]))
        lines.append(line("tr-lb", 0, f"vo-{vid}-init", 0))
        lines.append(line(f"vo-{vid}-init", 0, f"vo-{vid}-gen", 0))

        # Voice level
        level_text = f"*~ {v['level']}"
        boxes.append(box(f"vo-{vid}-lvl", "newobj", x, 445, 55, 22, level_text, ni=2, ot=["signal"]))
        lines.append(line(f"vo-{vid}-gen", 0, f"vo-{vid}-lvl", 0))

        # Manual trigger button
        boxes.append(box(f"vo-{vid}-btn", "button", x + MS_W - 30, 340, 25, 25, ot=["bang"]))
        lines.append(line(f"vo-{vid}-btn", 0, f"vo-{vid}-click", 0))

    # ── MIXER (sum chain) ──
    mix_y = 480
    for s in range(5):
        boxes.append(box(f"mx-sum{s}", "newobj", 30 + s * 80, mix_y, 35, 22, "+~", ni=2, ot=["signal"]))

    # Wire voice levels into sum chain
    lines.append(line("vo-v0-lvl", 0, "mx-sum0", 0))   # Mass → sum0 left
    lines.append(line("vo-v1-lvl", 0, "mx-sum0", 1))   # Vein → sum0 right
    lines.append(line("mx-sum0", 0, "mx-sum1", 0))
    lines.append(line("vo-v2-lvl", 0, "mx-sum1", 1))   # Shard
    lines.append(line("mx-sum1", 0, "mx-sum2", 0))
    lines.append(line("vo-v3-lvl", 0, "mx-sum2", 1))   # Husk
    lines.append(line("mx-sum2", 0, "mx-sum3", 0))
    lines.append(line("vo-v4-lvl", 0, "mx-sum3", 1))   # Fault
    lines.append(line("mx-sum3", 0, "mx-sum4", 0))
    lines.append(line("vo-v5-lvl", 0, "mx-sum4", 1))   # Halo

    # Master gain
    boxes.append(box("mx-gain", "gain~", 30, 515, 350, 30, ni=1, no=2, ot=["signal",""],
                      parameter_enable=0, orientation=1))
    lines.append(line("mx-sum4", 0, "mx-gain", 0))

    # Output
    boxes.append(box("mx-scope", "scope~", 420, 510, 200, 60, ni=2, no=0))
    boxes.append(box("mx-meter", "meter~", 30, 555, 350, 20, ot=["float"]))
    boxes.append(box("mx-dac", "newobj", 30, 585, 60, 22, "dac~ 1 2", ni=2, no=0))
    lines.append(line("mx-gain", 0, "mx-dac", 0))
    lines.append(line("mx-gain", 0, "mx-dac", 1))
    lines.append(line("mx-gain", 0, "mx-scope", 0))
    lines.append(line("mx-gain", 0, "mx-meter", 0))

    # Audio on/off
    boxes.append(box("out-atog", "toggle", 120, 580, 25, 25, ot=["int"]))
    boxes.append(box("out-asel", "newobj", 120, 610, 45, 22, "sel 0 1", no=3, ot=["bang","bang",""]))
    boxes.append(box("out-stop", "message", 120, 635, 35, 22, "stop", ni=2, ot=[""]))
    boxes.append(box("out-start", "message", 170, 635, 68, 22, "startwindow", ni=2, ot=[""]))
    boxes.append(box("out-albl", "comment", 150, 580, 80, 20, "AUDIO ON/OFF", no=0))
    lines.append(line("out-atog", 0, "out-asel", 0))
    lines.append(line("out-asel", 0, "out-stop", 0))
    lines.append(line("out-asel", 1, "out-start", 0))
    lines.append(line("out-stop", 0, "mx-dac", 0))
    lines.append(line("out-start", 0, "mx-dac", 0))

    # Hints
    boxes.append(box("hint1", "comment", 420, 585, 350, 20,
                      "Click multisliders to edit. Toggle PLAY to start.", no=0))
    boxes.append(box("hint2", "comment", 420, 605, 400, 20,
                      "Repeated hits build pressure. Silence cools it down. Buttons = manual trigger.", no=0))

    # ── ASSEMBLE ──
    patch = {
        "patcher": {
            "fileversion": 1,
            "appversion": {"major": 9, "minor": 0, "revision": 0, "architecture": "x64", "modernui": 1},
            "classnamespace": "box",
            "rect": [30, 50, 1050, 700],
            "bglocked": 0,
            "openinpresentation": 0,
            "default_fontsize": 12.0,
            "default_fontname": "Arial",
            "gridsize": [15.0, 15.0],
            "gridsnaponopen": 1,
            "objectsnaponopen": 1,
            "statusbarvisible": 2,
            "toolbarvisible": 1,
            "description": "Dream Xeno Box - 6-Voice Alien Percussion Groovebox",
            "boxes": boxes,
            "lines": lines,
        }
    }
    return patch

if __name__ == "__main__":
    patch = build()
    with open("DreamXenoBox.maxpat", "w") as f:
        json.dump(patch, f, indent="\t")
    print(f"Generated DreamXenoBox.maxpat ({len(patch['patcher']['boxes'])} objects, {len(patch['patcher']['lines'])} connections)")
