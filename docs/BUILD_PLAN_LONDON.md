# Maud — London Build Plan

> Budget-conscious, high-quality, IP-safe

See also: [BUILD_COSTING.md](BUILD_COSTING.md) | [PROTOTYPE.md](PROTOTYPE.md) | [HARDWARE.md](HARDWARE.md)

---

## The Honest Answer

Build it yourself. With Claude Code as your EE/firmware co-pilot.

Here's why:

1. **You already understand the DSP** — you wrote the gen~ engine, the Kuramoto coupling, the lusona wavetables. No contractor will understand Maud's soul better than you.
2. **The hard part is done** — the software works. Hardware is simpler than people think when the circuit is well-specified (and it is — see PROTOTYPE.md).
3. **Budget** — a contractor charges £800-3000 for what you can do for £265 in parts + your time.
4. **IP stays with you** — the moment you hand source code to a contractor, you've lost control. Building it yourself means the code never leaves your machine.
5. **Claude Code can walk you through every step** — schematic review, KiCad layout, firmware porting, debugging. You don't need to know everything upfront.

The only parts worth outsourcing: **PCB fabrication** (JLCPCB ships to London in 7 days) and **enclosure machining** (laser cut or CNC).

---

## London Resources

### Makerspaces

| Space | Where | What You Get | Cost |
|-------|-------|-------------|------|
| **South London Makerspace** | Herne Hill, SE24 | Soldering stations, oscilloscopes, laser cutter, CNC router, 3D printers. Electronics nights. | £40/month |
| **London Hackspace** | Wembley, HA0 | Full electronics lab, PCB etching, metalwork, laser cutter. Largest London makerspace. | £40/month |
| **Machines Room** | Hackney Wick, E3 | CNC, laser cutting, woodwork, metalwork. Good for enclosures. | Pay-per-use or £75/month |
| **Building BloQs** | Enfield, N18 | Serious metalwork, CNC, welding. Best for custom metal enclosures and resonant plates. | Day passes ~£25 |

### Parts (UK Sources)

| Supplier | What | Why |
|----------|------|-----|
| **Thonk** (Brighton, UK) | Eurorack parts, jacks, knobs, encoders | Synth-quality, UK stock, fast delivery |
| **Rapid Electronics** | Components, connectors, enclosures | Next-day UK delivery |
| **Farnell/element14** | Full range, professional grade | UK warehouse |
| **AliExpress** | Exciters, displays, knobs, piezo discs | Cheapest, 2-3 weeks |
| **Electrosmith** (US) | Daisy Seed | ~£30 + shipping |

### People (Advice, Not Full Outsource)

| Who | What | Cost |
|-----|------|------|
| **Makerspace members** | Help soldering, debug circuits | Free / a pint |
| **EE student** (Goldsmiths / Queen Mary / Imperial) | KiCad PCB layout | £100-300 |
| **Bela team** (Queen Mary London spinout) | Embedded audio consultation | £200-500 |
| **Tom Whitwell** (Music Thing Modular, London) | Synth design advice | Approachable on social media |

---

## Week-by-Week Build Plan

### Week 1: Breadboard DSP Core (£70)
**You**: Order Daisy Seed + breadboard. Wire up.
**Claude Code**: Walk through oopsy export, debug voice count, optimize gen~ if needed.

### Week 2: Breadboard Analog Stage (£130)
**You**: Build Nutube circuit + spring tank driver/recovery. Solder at makerspace.
**Claude Code**: Review schematic, calculate Nutube bias, debug hum/oscillation.

### Week 3: Add Resonant Body (£155)
**You**: Mount exciter on plate. Wire contact mic + preamp. Connect to Daisy ADC.
**Claude Code**: Write gen~ feedback input code, calculate safe feedback gain, design piezo preamp.

### Week 4: Design PCB (£155)
**You**: Install KiCad. Place components.
**Claude Code**: Generate schematic, guide layout, review DRC, generate Gerbers.

### Week 5: Order + Port Firmware (£210)
**You**: Upload to JLCPCB. Order enclosure. Start C porting.
**Claude Code**: Port sequencer.js, flamengine.js, lfoengine.js to Daisy C.

### Week 6: Assemble + Test (£265)
**You**: Solder PCB at makerspace. Mount in enclosure. Play.
**Claude Code**: Debug firmware, MIDI mapping, timing verification.

---

## Protecting Your IP

### What's Valuable

| Asset | Strategy |
|-------|----------|
| **gen~ voice engine** | Trade secret. Never share source. Binary only. |
| **Kuramoto + veve topologies** | Most original piece. Consider provisional patent (£50, UK IPO). |
| **Lusona wavetables** | Trade secret. Algorithm is published, your application is novel. |
| **The full stack combination** | Speed + the stack + cultural lineage = real moat. |

### Rules

1. **Git repo stays private**
2. **Flash compiled .bin only** — never share source files
3. **Contractors get isolated tasks** — encoder driver, OLED code, NOT core DSP/LFO
4. **Copyright headers on all source** — automatic protection, free
5. **Provisional patent for veve coupling** — £50, 12-month priority, file at gov.uk

---

## Decision Matrix

| Option | Cost | Quality | IP Safety | Time |
|--------|------|---------|-----------|------|
| **Build yourself + Claude Code** | £385 | High | Maximum | 6 weeks |
| **Hire synth builder** | £1,500+ | High | Medium | 3-4 weeks |
| **Hire Bela team** | £3,000+ | Very high | Low | 6-8 weeks |

**Recommendation: Build yourself.** £385 total. Code never leaves your machine.

---

*Last updated: 2026-03-22*
