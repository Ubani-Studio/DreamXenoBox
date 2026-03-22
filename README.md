# Dream Xeno Box

A 6-voice alien percussion instrument built in Max/MSP gen~. Each voice is a material body under pressure — not a drum category. Sound comes from excitation striking a resonant body, passing through fracture and atmospheric stages, shaped by accumulated memory of past performance. Repetition changes the instrument. Silence restores it.

## Voice Engine

Single gen~ codebox signal chain:

```
Trigger → Exciter → Body → Fracture → Halo → Output
                                ↕
                        Memory / Pressure State
```

- **Exciter**: FM impulse click or filtered noise burst
- **Body**: 4-resonator inharmonic bank or dispersive comb filter
- **Fracture**: Asymmetric wavefold distortion driven by accumulated pressure
- **Halo**: Noise veil atmospheric tail (parallel to fracture)
- **Memory**: Pressure, heat, fatigue, and stiffness accumulate per hit and decay over silence

## 8 Macro Controls

| Macro | Controls |
|-------|----------|
| **Stress** | Pressure sensitivity + fracture depth |
| **Bloom** | Halo decay + body sustain |
| **Scar** | Wavefold depth + asymmetry |
| **Weight** | Body mass / pitch scaling |
| **Mist** | Halo level + diffusion |
| **Heat** | Exciter brightness + filter cutoff |
| **Drift** | Pitch instability (noise x pressure) |
| **Density** | Exciter burst length + bandwidth |

## 6 Voice Characters (Planned)

| Voice | Material | Territory |
|-------|----------|-----------|
| Mass | Dense mineral, compressed earth | Seismic low-end impact |
| Vein | Taut metal under tension | Metallic mid snap |
| Shard | Brittle crystal, fractured glass | High transient splinter |
| Husk | Dried hollow shell, dead wood | Hollow mid-body thud |
| Fault | Cracked earth, geological stress | Unstable seismic burst |
| Halo | Spectral mist, dispersed energy | Atmospheric ghost wash |

All voices use the same engine with different default parameters.

## Current Status

**Stage 2 — Single voice prototype.** One complete voice engine with all 4 synthesis stages, memory/pressure state, and 8 macro controls. Open `DreamXenoBox_proto.maxpat` in Max 9, toggle audio on, and click the trigger button. Click rapidly to build pressure.

## Files

- `DreamXenoBox_proto.maxpat` — Playable single-voice prototype (Max 9)
- `voice_engine.genexpr` — gen~ codebox source (reference copy)
- `ARCHITECTURE.md` — Full system design document

## Requirements

- Max 9 (or Max 8 with gen~)
- No external packages needed

## Roadmap

- Stage 3: 6-voice expansion + 16-step sequencer with parameter locks
- Stage 4: Preset system + MIDI mapping
- Stage 5: Additional exciter/body/fracture/halo types
- RNBO export for VST/AU and embedded hardware (Daisy/Bela)
