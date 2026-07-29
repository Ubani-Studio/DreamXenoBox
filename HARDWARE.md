# Maud — Hardware Architecture

> From Max patch to physical instrument

---

## Current State: Software Groovebox

Maud is a 6-voice polymetric percussion groovebox running in Max/MSP gen~. Everything is software: sequencing, synthesis, timing, modulation, coupling. The instrument works but lives inside a laptop.

This document maps out the path from screen to physical object.

---

## Part 1: Controllers (Play Maud from Hardware Now)

These pair with the existing Max patch via MIDI. No code changes needed beyond MIDI CC mapping.

### Tier 1: Best Fit

| Controller | Why | Maps To |
|-----------|-----|---------|
| **Midi Fighter Twister** (DJ TechTools) | 16 endless encoders with RGB LED rings. 4 banks = 64 controls. Compact. | Voice params (13 per voice), flam params, LFO rate/depth, swing/groove. LED rings show value. |
| **Monome Grid 128** | 16x8 button grid with LED feedback. Gold standard for step sequencers. | Step sequencer (6 rows x 32 cols with paging). Visual step indicator. Pattern editing. |
| **16n Faderbank** | 16 smooth faders, open-source, MIDI class-compliant. | 6 voice levels + swing + groove master + 8 macro assignments. Physical mixer feel. |

### Tier 2: Strong Options

| Controller | Why | Maps To |
|-----------|-----|---------|
| **Novation Launch Control XL** | 24 knobs + 8 faders + 16 buttons. Rows of controls = rows of voices. | Top row: pitch x6. Middle rows: param dials. Faders: levels. Buttons: mute/solo. |
| **Akai APC40 mkII** | Grid + knobs + faders. Originally for Ableton but maps to anything. | Grid for sequencer, knobs for per-voice params, faders for levels. |
| **Faderfox EC4** | 16 push-encoders, tiny footprint, solid build. | LFO controls (rate/depth/shape/dest x 4 voices per bank). Push to reset. |
| **Intech Grid** | Modular: snap together knob/fader/button modules. | Build exactly the layout Maud needs. Expandable. |

### Tier 3: Expressive / Experimental

| Controller | Why | Maps To |
|-----------|-----|---------|
| **Sensel Morph** | Pressure + location + area on a flat surface. MPE. | Pressure-driven exciter intensity. Location = pitch. Area = decay. |
| **Keith McMillen QuNeo** | Pressure-sensitive pads with per-pad pressure/location/velocity. | Manual triggering with pressure → stress/bloom modulation per hit. |
| **TouchOSC on iPad** | Fully custom layout. No physical limit on controls. | Design exact Maud control surface. LFO display, sequencer grid, topology selector. |

### Recommended First Setup

```
Monome Grid 128  →  sequencer (step editing + visual feedback)
Midi Fighter Twister  →  voice params + flam + LFO
16n Faderbank  →  levels + swing + groove
```

Three devices. Full hands-on control. No screen needed during performance.

---

## Part 2: Standalone Hardware (Move Maud Off the Laptop)

### The DSP Core

Maud's gen~ voices need to run on dedicated hardware. Options ranked:

#### A. Daisy (Electrosmith)

- **Chip**: STM32H750 (Cortex-M7, 480 MHz, 64MB SDRAM)
- **Audio**: 96kHz/24-bit stereo codec, 2 audio in / 2 audio out
- **Latency**: <1ms
- **Gen~ export**: Direct via `oopsy` (gen~ → Daisy C++ firmware)
- **Reality check**: 6 voices with KS resonators + body models + LFO + flam timing is *tight* on a single Daisy. Doable with optimization but leaves little headroom.
- **Best for**: First prototype. Proves the concept works standalone.

#### B. Teensy 4.1

- **Chip**: i.MX RT1062 (Cortex-M7, 600 MHz, 1 MB RAM + 8 MB PSRAM + SD card)
- **Audio**: Teensy Audio Library or I2S codec board (PCM5102A, CS4272, etc.)
- **Latency**: <1ms with Audio library
- **Gen~ export**: Not direct. Need to port gen~ code to C++ manually or use the Teensy Audio Library.
- **Reality check**: 25% faster clock than Daisy. More RAM. Better for 6-voice + modulation density. But no gen~ export pipeline — you're writing C++.
- **Best for**: Production hardware if you're willing to port the DSP.

#### C. Bela

- **Chip**: AM3358 (1 GHz ARM Cortex-A8) on BeagleBone
- **Audio**: Integrated stereo codec, 8 analog inputs, 16 digital I/O
- **Latency**: Sub-millisecond (Xenomai real-time kernel)
- **Gen~ export**: Not direct, but can run Pure Data or C++ on the real-time thread.
- **Reality check**: Designed for expressive instruments with sensors. The analog inputs are gold for contact mics, FSRs, piezos. Overkill compute for 6 KS voices but the sensor integration is unmatched.
- **Best for**: If the instrument has physical interaction — touch, gesture, pressure surfaces.

#### D. Raspberry Pi CM5 + Audio HAT

- **Chip**: BCM2712 (Cortex-A76, 2.4 GHz quad-core, up to 16 GB RAM)
- **Audio**: HiFiBerry, Pisound, or custom I2S codec
- **Latency**: ~5-10ms with JACK + real-time kernel (achievable but requires tuning)
- **Gen~ export**: Not direct. Run as headless Max, Pure Data, SuperCollider, or ported C++.
- **Reality check**: Vastly more compute than any MCU. Can run the entire Max patch natively via headless Max Runtime. But Linux adds boot time, potential glitches, system complexity.
- **Best for**: If you want a full computational instrument with screen, networking, AI, sample playback alongside the synth engine.

#### E. FPGA / Zynq / SHARC

- **Options**: AMD Zynq (ARM + FPGA), Analog Devices SHARC Audio Module
- **Latency**: True sample-accurate. No OS overhead.
- **Reality check**: Maximum DSP power and determinism. But steep engineering overhead. This is for production hardware with commercial ambition, not first prototypes.
- **Best for**: Flagship product. When Maud becomes a product line, not a prototype.

### Recommended Path

```
Phase 1: Daisy Seed (gen~ export via oopsy, prove 6 voices work)
Phase 2: Teensy 4.1 or CM5 (if Daisy is too tight, port to C++ or headless Max)
Phase 3: Custom PCB with chosen SoM (production intent)
```

---

## Part 3: The Analog Moat (What Makes It Un-Clonable)

The DSP can be copied. The analog/acoustic stage cannot.

### A. Transformer Stage

A small audio transformer between the DAC output and the final output adds:
- Impedance-dependent saturation
- Subtle low-end weight
- Level-dependent harmonic coloring
- Galvanic isolation

**Parts**: Hammond 124 series, Lundahl LL1517, or Cinemag CM-9888 (smaller/cheaper). For prototype: Triad Magnetics TY-145P (~$8).

**Placement**: After DAC, before output jack. Or as a send/return insert in the feedback path.

### B. Tube / Nutube Stage

A vacuum tube or Korg Nutube adds asymmetric saturation that responds dynamically to signal level:
- Soft clipping on peaks
- Harmonic bloom on sustained tones
- Controllable instability edge

**Parts**: Korg Nutube 6P1 (~$40). Runs on 12V, tiny, low power. Real triode vacuum tube behavior in a compact form factor.

**Placement**: After the mixer sum, before output. Or per-voice (expensive but distinctive).

### C. Spring Reverb Tank

A real spring tank is a resonant object, not just "reverb." It adds:
- Chaotic smear on transients
- Material-specific ringing
- Impact sensitivity (hit the box → sound changes)
- Feedback personalities no plugin reproduces

**Parts**: Accutronics spring tank (2-3 spring, medium decay). Driver circuit: LM386 or TPA6112A2. Recovery: high-gain op-amp (TL072).

**Placement**: Send/return loop. DSP sends to spring driver, contact mic or pickup recovers, feeds back into DSP for re-processing.

### D. Exciter + Resonant Body

This is the strongest moat concept. Instead of treating the enclosure as a neutral box:

1. **Exciter transducer** (Dayton Audio DAEX25FHE or similar) mounted on a resonant surface
2. **Contact microphone** (piezo disc or electret) picks up the surface response
3. **DSP recapture**: Contact mic signal feeds back into gen~ as an input

The surface material becomes the instrument's voice:
- **Metal plate**: bright, ringing, industrial
- **Ceramic tile**: crystalline, brittle, eerie
- **Wood panel**: warm, instrument-like, familiar
- **Glass**: dangerous, beautiful, high-Q

**Swappable plates** = "voice cartridges." Limited-edition materials become a product strategy.

### E. Feedback Architecture

```
gen~ voices → DAC → transformer → spring/exciter → [physical resonance] → contact mic → ADC → gen~ input

        ┌─────────────────────────────────────────────────────────┐
        │                    FEEDBACK LOOP                        │
        │                                                         │
        │  DSP out → analog stage → physical body → sensor → DSP in  │
        │                                                         │
        └─────────────────────────────────────────────────────────┘
```

The Kuramoto coupling in Maud's LFO engine maps perfectly to this: oscillators influencing each other through a physical medium, not just math.

---

## Part 4: Enclosure & Form Factor

### Design Principles

1. **The box is the instrument** — not a container for electronics
2. **Internal resonance matters** — cavity size, vent placement, material
3. **Controls must be playable** — instrument ergonomics, not synth ergonomics
4. **Visible mechanism** — springs, plates, tubes visible through windows or cutouts

### Form Factor Options

| Format | Pros | Cons |
|--------|------|------|
| **Desktop box** (Eurorack-adjacent size) | Familiar, tabletop performance, easy to prototype | Limited resonant volume |
| **Slab** (iPad-ish, laid flat) | Surface for touch/pads, internal plate resonance | Thin = limited spring space |
| **Totem** (tall, narrow, standing) | Dramatic, large internal volume, spring can hang vertically | Less stable, harder to play |
| **Instrument body** (shaped like calabash, djembe, etc.) | Maximum resonant body, cultural identity | Complex fabrication |

### Recommended First Build

Desktop box, ~300mm x 200mm x 80mm:
- Top panel: knobs, buttons, step sequencer (Monome-style grid or individual LEDs)
- Internal: Daisy/Teensy + codec + power supply + spring tank
- Rear: audio out (1/4" stereo), USB-C (power + MIDI), MIDI DIN
- Optional: side-mounted swappable resonant plate with exciter + contact mic

---

## Part 5: Bill of Materials (Prototype)

### DSP Core
| Part | Cost | Source |
|------|------|--------|
| Daisy Seed | $30 | Electrosmith |
| PCM5102A DAC breakout | $8 | AliExpress/Adafruit |
| Teensy 4.1 (alt) | $32 | PJRC |

### Analog Stage
| Part | Cost | Source |
|------|------|--------|
| Korg Nutube 6P1 | $40 | Korg/Mouser |
| Audio transformer (Triad TY-145P) | $8 | Mouser |
| Accutronics spring tank (medium) | $15 | Antique Electronic Supply |
| Spring driver + recovery PCB | $5 | DIY (LM386 + TL072) |

### Resonant Body
| Part | Cost | Source |
|------|------|--------|
| Dayton Audio DAEX25FHE exciter | $12 | Parts Express |
| Piezo contact mic disc | $2 | AliExpress |
| Metal plate (steel, 150x100x1mm) | $5 | Metal supplier |
| Ceramic tile (optional swap) | $3 | Hardware store |

### Interface
| Part | Cost | Source |
|------|------|--------|
| 6x rotary encoders | $12 | Mouser |
| 32x tactile buttons (sequencer) | $8 | Mouser |
| 6x LEDs (voice indicators) | $2 | Mouser |
| 1x OLED display (128x64, SSD1306) | $5 | AliExpress |

### Power + Connectivity
| Part | Cost | Source |
|------|------|--------|
| USB-C PD board (12V out) | $8 | AliExpress |
| 1/4" stereo jack x2 | $4 | Mouser |
| MIDI DIN jack | $2 | Mouser |

### Enclosure
| Part | Cost | Source |
|------|------|--------|
| Aluminum enclosure (Hammond 1590XX or similar) | $25 | Mouser |
| Laser-cut acrylic top panel (alt) | $15 | Ponoko/local |

**Prototype total: ~$200-250**

---

## Part 6: What NOT to Do

- Don't chase "analog warmth" as marketing — use analog stages for functional sonic identity
- Don't jump to FPGA/Linux before the sound is proven on simpler hardware
- Don't over-spec the MCU — Daisy is enough for a first standalone
- Don't treat the enclosure as neutral — make it resonate
- Don't add a screen unless it does something a knob can't
- Don't make it a computer — make it an instrument

---

## Summary: The Architecture Stack

```
LAYER 4: Interface
  Encoders, buttons, grid, LEDs, OLED
  (Monome-style or custom PCB)

LAYER 3: Digital Core
  Daisy/Teensy → gen~ voice engine
  6 KS voices + body + flam + swing + LFO + Kuramoto

LAYER 2: Analog Stage
  Transformer → Nutube → Spring tank
  Nonlinear coloring + physical reverb

LAYER 1: Acoustic Body
  Exciter → resonant plate/ceramic/metal → contact mic → DSP recapture
  Material = voice identity. Swappable = product strategy.

LAYER 0: Enclosure
  Tuned cavity, vents, internal reflections
  The box IS the instrument.
```

The moat is not in any single layer. It's in the stack: **DSP + analog + physical body + enclosure**. That combination is un-clonable because code can be copied but material resonance cannot.

---

*Last updated: 2026-03-22*
