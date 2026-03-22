# Dream Xeno Box

A 6-voice alien percussion instrument built in Max/MSP gen~. Each voice is a material body under pressure — not a drum category. Sound comes from excitation striking a resonant body, passing through fracture and feedback resonance stages, shaped by accumulated memory of past performance. Repetition changes the instrument. Silence restores it.

## Quick Start

1. Open `DreamXenoBox.maxpat` in Max 9
2. Toggle **AUDIO ON/OFF**
3. Toggle **PLAY**
4. Click the matrixctrl grid to edit patterns
5. Click manual trigger buttons (per voice) to test sounds
6. Adjust BPM with the number box
7. Select voice tabs to edit per-voice parameters
8. Save/load kits with the SAVE/LOAD buttons (8 slots)

## Voice Engine (v2)

Single gen~ codebox signal chain (same engine, 6 instances with different defaults):

```
Trigger → Exciter → Body → Fracture → Output
               ↑              ↕           |
               └── Feedback ──┘    Memory/Pressure
```

- **Exciter**: FM impulse click or filtered noise burst
- **Body**: 4-resonator inharmonic bank or dispersive comb filter. Decay-coupled Q — longer decay = higher resonator sustain
- **Fracture**: Asymmetric wavefold distortion driven by accumulated pressure
- **Feedback Resonance**: Body output feeds back through highpass → tanh limiter → gain into body input. Low mist = ghost notes. High mist + stress = Larsen screech. Bloom controls sustain.
- **Pitch Envelope**: Weight-scaled sweep on trigger — heavy voices get 808-style sub bass bounce
- **Memory**: Pressure, heat, fatigue, and stiffness accumulate per hit and decay over silence

## 6 Voice Characters

| Voice | Pitch | Material | Exciter | Body |
|-------|-------|----------|---------|------|
| **Mass** | 30 | Sub bass, seismic earth | FM impulse | Dispersive comb |
| **Vein** | 62 | Taut metal under tension | FM impulse | Resonator bank |
| **Shard** | 84 | Brittle crystal, fractured glass | Noise burst | Resonator bank |
| **Husk** | 52 | Dried hollow shell, dead wood | Noise burst | Dispersive comb |
| **Fault** | 40 | Cracked earth, geological stress | FM impulse | Dispersive comb |
| **Halo** | 72 | Feedback screech, ghost resonance | Noise burst | Resonator bank |

## 8 Macro Controls (per voice)

| Macro | Controls |
|-------|----------|
| **Stress** | Pressure sensitivity + fracture depth + feedback harshness |
| **Bloom** | Feedback sustain duration + body resonance |
| **Scar** | Wavefold depth + asymmetry |
| **Weight** | Body mass / pitch scaling + pitch envelope sweep |
| **Mist** | Feedback resonance amount (0=off, 1=screech) |
| **Heat** | Exciter brightness + filter cutoff |
| **Drift** | Pitch instability (noise x pressure) |
| **Density** | Exciter burst length + bandwidth |

## Kit System

8 kit slots store the complete instrument state:
- All 6 voice parameters (72 values)
- All sequencer patterns (6 × 32 steps)
- Per-voice step lengths

Kit 1 ("INIT") is auto-saved on load with default settings.

## Architecture

```
TRANSPORT:  metro → counter → step dispatch
SEQUENCER:  js sequencer.js (6 × 32 steps, polymetric lengths)
VOICES:     6 × gen~ (v2 engine: feedback resonance, pitch envelope, decay-coupled Q)
MIXER:      send~/receive~ → +~ chain → gain~ → dac~
EDITOR:     live.tab voice select → js voicectrl.js → send/receive → gen~
KITS:       js kitmanager.js (8 slots, save/load/name)
MIDI:       notein → select → per-voice triggers
```

## Files

| File | Purpose |
|------|---------|
| `DreamXenoBox.maxpat` | Full 6-voice sequencer groovebox |
| `DreamXenoBox_proto.maxpat` | Single-voice prototype for testing |
| `sequencer.js` | Polymetric step sequencer dispatcher |
| `voicectrl.js` | Tabbed voice parameter editor |
| `kitmanager.js` | Kit save/load/name manager (8 slots) |
| `voice_engine.genexpr` | gen~ codebox source (reference) |
| `build_patch.py` | Python script that generates the .maxpat |
| `ARCHITECTURE.md` | Full system design document |
| `FX.md` | Effects module designs (parked) |

## Requirements

- Max 9 (or Max 8 with gen~)
- No external packages needed
- All files must be in the same directory

## Roadmap

- [x] Stage 2: Single voice prototype
- [x] Stage 3: 6-voice expansion + polymetric sequencer
- [x] Stage 4: Per-voice macro controls + MIDI mapping
- [x] Stage 4.5: Voice engine v2 (feedback resonance, sub bass, decay-coupled Q)
- [x] Stage 4.6: Kit save/load system (8 slots)
- [ ] Stage 5: Parameter locks (per-step macro overrides)
- [ ] Stage 6: Global bus effects (saturation, void delay, matter dispersion)
- [ ] Stage 7: Scene system (kit + transport, morph between scenes)
- [ ] Stage 7+: FluCoMa integration (descriptor-driven morphing, corpus-to-params)
- [ ] RNBO export for VST/AU and embedded hardware (Daisy/Bela)
