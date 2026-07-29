# Maud — Prototype Build Spec

> Daisy Seed + Nutube + Spring Tank + Resonant Plate + Contact Mic Feedback
> Target BOM: ~£200 | Full stack: digital + analog + acoustic

See also: [BUILD_COSTING.md](BUILD_COSTING.md) | [HARDWARE.md](HARDWARE.md) | [BUILD_PLAN_LONDON.md](BUILD_PLAN_LONDON.md)

---

## The Thesis

Maud's software engine (6-voice KS + Kuramoto-coupled LFOs + polymetric sequencer) exports directly to Daisy Seed via `oopsy`. The analog and acoustic stages after the DAC are what make it un-clonable. This prototype proves the full stack in a playable box.

```
┌─────────────────────────────────────────────────────────────────────┐
│                        SIGNAL FLOW                                  │
│                                                                     │
│  Daisy Seed (gen~ engine)                                           │
│       │                                                             │
│       ▼                                                             │
│  DAC out (stereo)                                                   │
│       │                                                             │
│       ├──────────► Main Out (1/4" stereo jack)                      │
│       │                                                             │
│       ▼                                                             │
│  Nutube 6P1 (tube saturation stage)                                 │
│       │                                                             │
│       ├──────────► Spring Tank Driver (LM386)                       │
│       │                 │                                           │
│       │                 ▼                                           │
│       │            Spring Tank (Accutronics)                        │
│       │                 │                                           │
│       │                 ▼                                           │
│       │            Spring Recovery (TL072)                          │
│       │                 │                                           │
│       ▼                 ▼                                           │
│  Exciter Driver ──► Exciter Transducer                              │
│                     (mounted on metal plate)                        │
│                          │                                          │
│                     [PHYSICAL RESONANCE]                             │
│                          │                                          │
│                     Contact Mic (piezo)                              │
│                          │                                          │
│                          ▼                                          │
│                     Preamp (JFET buffer)                             │
│                          │                                          │
│                          ▼                                          │
│                     ADC in → Daisy Seed                              │
│                     (feedback recapture into gen~ input)             │
│                                                                     │
└─────────────────────────────────────────────────────────────────────┘
```

---

## Enclosure Layout (Top View)

```
┌──────────────────────────────────────────────────┐
│                                                  │
│  [OLED]     [ENC] [ENC] [ENC] [ENC]  [ENC]     │
│  128x64     PITCH DECAY STRESS BLOOM  MIST      │
│                                                  │
│  [ENC] [ENC] [ENC]                              │
│  SWING  K    SHAPE    ○ ○ ○ ○ ○ ○  (voice LEDs) │
│                                                  │
│  [●][●][●][●] [●][●][●][●] [●][●][●][●] [●][●][●][●] │
│   step 1-4    step 5-8    step 9-12   step 13-16│
│                                                  │
│  ┌─────────────────────────────┐                │
│  │    RESONANT PLATE           │  (visible      │
│  │    (steel / ceramic)        │   through       │
│  │    + exciter underneath     │   cutout or     │
│  │    + contact mic            │   mesh window)  │
│  └─────────────────────────────┘                │
│                                                  │
└──────────────────────────────────────────────────┘

Rear panel:
[USB-C] [MIDI DIN] [OUT L] [OUT R] [DC 12V]
```

---

## Build Phases

### Phase 1: DSP Only (£70, Week 1)

Daisy Seed on a breadboard. Export gen~ via oopsy. Verify 6 voices trigger, sequencer runs, flam works. Audio out via Daisy's onboard codec to headphones.

**Test**: All 6 voices at 48kHz. Check CPU usage. If >85%, optimize gen~ code.

### Phase 2: Add Analog Stage (£130 cumulative, Week 2)

Add Nutube saturation circuit on breadboard. Wire DAC → Nutube → output. Add spring tank: LM386 driver → spring → TL072 recovery → mixer.

**Test**: Play pattern through tube + spring. Should feel thicker, less digital.

### Phase 3: Add Resonant Body (£155 cumulative, Week 3)

Mount exciter on steel plate. Wire exciter amp. Attach contact mic + JFET preamp. Wire contact mic → Daisy ADC input. Add feedback recapture in gen~.

**Test**: Tap the plate physically → sound changes. Different plates → different character.

### Phase 4: Design PCB (£155, Week 4)

KiCad schematic + layout. Claude Code generates Gerber files. No spend.

### Phase 5: Order + Assemble (£265, Weeks 5-6)

JLCPCB PCBs + Hammond enclosure + final assembly at makerspace.

**Test**: Play a full session. All controls responsive. No hum. Plate resonance audible and controllable.

---

## Firmware Notes

```
What oopsy exports directly:
  - gen~ codebox → Daisy C++ firmware
  - Param mapping to hardware controls
  - Audio I/O routing

What needs manual porting to C:
  - sequencer.js → C struct + timer
  - flamengine.js → C with microsecond timing
  - lfoengine.js → C with Kuramoto math + lusona wavetables
  - kitmanager.js → SD card save/load
```

---

## Full BOM and Costing

See [BUILD_COSTING.md](BUILD_COSTING.md) for itemized budget with UK sources, order schedule, and Osmose sale allocation.

---

*Last updated: 2026-03-22*
