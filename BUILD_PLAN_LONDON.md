# Maud — London Build Plan

> Budget-conscious, high-quality, IP-safe

---

## The Honest Answer

Build it yourself. With Claude Code as your EE/firmware co-pilot.

Here's why:

1. **You already understand the DSP** — you wrote the gen~ engine, the Kuramoto coupling, the lusona wavetables. No contractor will understand Maud's soul better than you.
2. **The hard part is done** — the software works. Hardware is simpler than people think when the circuit is well-specified (and it is — see PROTOTYPE.md).
3. **Budget** — a contractor charges £800-3000 for what you can do for £150-200 in parts + your time.
4. **IP stays with you** — the moment you hand source code to a contractor, you've lost control. Building it yourself means the code never leaves your machine.
5. **Claude Code can walk you through every step** — schematic review, KiCad layout, firmware porting, debugging. You don't need to know everything upfront.

The only parts worth outsourcing: **PCB fabrication** (JLCPCB ships to London in 7 days) and **enclosure machining** (laser cut or CNC).

---

## London Resources (Best to Worst Value)

### Makerspaces — Do It Here

| Space | Where | What You Get | Cost |
|-------|-------|-------------|------|
| **South London Makerspace** | Herne Hill, SE24 | Soldering stations, oscilloscopes, laser cutter, CNC router, 3D printers. Friendly community. Electronics nights. | £40/month membership |
| **London Hackspace** | Wembley, HA0 | Full electronics lab, PCB etching, metalwork, laser cutter. Largest London makerspace. | £40/month |
| **Machines Room** | Hackney Wick, E3 | CNC, laser cutting, woodwork, metalwork. Good for enclosures. | Pay-per-use or £75/month |
| **Building BloQs** | Enfield, N18 | Serious metalwork, CNC, welding. Best for custom metal enclosures and resonant plates. | Day passes ~£25 |
| **Goldsmiths Electronic Music Studios** | New Cross, SE14 | If you have any university connection. Amazing synth/audio electronics culture. | Varies |

**Recommendation**: South London Makerspace or London Hackspace. Join one. £40/month gets you everything you need — soldering station, scope, multimeter, laser cutter for acrylic panels, and people who've built synths before.

### PCB Fabrication — Order Online, Ship to London

| Service | What | Cost | Turnaround |
|---------|------|------|-----------|
| **JLCPCB** | PCB fab + SMD assembly. Upload KiCad files, they make it. | 5 boards = £8-15. With SMD assembly: £30-50. | 7-10 days to London |
| **PCBWay** | Same as JLCPCB. Slightly better for complex boards. Also does CNC enclosures. | Similar pricing. CNC enclosure: £30-80. | 7-14 days |
| **Aisler** | EU-based. No MOQ. Good for one-offs. | £15-30 per board. | 5-7 days |

**Recommendation**: JLCPCB for PCBs. PCBWay if you want them to CNC your enclosure too.

### Parts — Where to Buy in London

| Supplier | What | Why |
|----------|------|-----|
| **Rapid Electronics** (online, UK) | Components, connectors, enclosures | Next-day UK delivery, no import duty |
| **Farnell/element14** (online, UK) | Full range, professional grade | UK warehouse, fast delivery |
| **RS Components** (online, UK) | Everything | UK-based, reliable |
| **Bitsbox** (online, UK) | Cheap components, DIY-friendly | Budget option for passives, LEDs, switches |
| **AliExpress** | Dayton exciters, OLED displays, encoder knobs, piezo discs | 2-3 week delivery, cheapest for non-critical parts |
| **Electrosmith** (US, ships to UK) | Daisy Seed | ~£30 + shipping. Order 2 in case you fry one. |
| **Thonk** (UK) | Eurorack parts, jacks, knobs, encoders | UK-based, synth-specific, fast delivery |

**Recommendation**: Thonk for audio jacks + knobs + encoders (synth-quality, UK stock). Rapid or Farnell for passives and ICs. AliExpress for exciters, piezos, displays. Electrosmith direct for Daisy Seed.

### People (If You Want Help, Not Full Outsource)

| Who | What They'll Do | Cost |
|-----|----------------|------|
| **Makerspace member** | Sit with you for a session, help you solder, debug circuits | Free (community culture) or buy them a pint |
| **University student (EE/music tech)** | KiCad PCB layout from your schematic, firmware help | £100-300 for PCB layout. Post on Goldsmiths / Queen Mary / Imperial boards. |
| **Bela team** (Queen Mary University London spinout) | Consultation on embedded audio hardware design | Email info@bela.io. They've helped indie instrument builders before. Consultation likely £200-500. |
| **Tom Whitwell** (Music Thing Modular, London) | Advice. He's designed dozens of open-source Eurorack modules and knows the London synth scene. | He's approachable on Twitter/Mastodon. Won't build for you but will point you right. |
| **Thonk** (Brighton, near London) | They stock parts and know every UK synth builder | Good for sourcing advice and introductions |

---

## Build-It-Yourself Plan with Claude Code

This is the recommended path. Here's the week-by-week:

### Week 1: Breadboard DSP Core (£35)

**You do**: Order Daisy Seed + breadboard + jumper wires.
**Claude Code does**: Walk you through oopsy export (gen~ → Daisy firmware), help debug if voice count is too high for CPU budget, optimize gen~ codebox if needed.

```
Buy: Daisy Seed (£30), breadboard (£3), jumpers (£2)
Goal: 6 voices triggering, sequencer running, audio out to headphones
```

### Week 2: Breadboard Analog Stage (£60 cumulative)

**You do**: Build Nutube circuit on breadboard. Build spring tank driver/recovery. Solder at makerspace.
**Claude Code does**: Review your schematic, calculate bias resistors for Nutube, specify spring driver gain staging, debug if there's hum or oscillation.

```
Buy: Nutube 6P1 (£35), LM386 + TL072 (£2), passives (£5), spring tank (£15)
Goal: Signal passes through tube + spring. Sounds different from dry. No hum.
```

### Week 3: Add Resonant Body (£85 cumulative)

**You do**: Mount exciter on steel plate. Wire contact mic + preamp. Connect to Daisy ADC.
**Claude Code does**: Help write the gen~ feedback input code (ADC → mix into resonator network), calculate safe feedback gain to prevent runaway, design the piezo preamp circuit.

```
Buy: Dayton exciter (£10), PAM8403 amp (£4), piezo discs (£1), steel plate (£5), JFET + passives (£3)
Goal: Tap plate → sound changes. Feedback loop audible and controllable.
```

### Week 4: Design PCB (£0 — software only)

**You do**: Install KiCad (free). Place components.
**Claude Code does**: Generate the schematic from PROTOTYPE.md spec. Guide you through KiCad layout. Review design rules. Generate Gerber files for fabrication.

```
Install: KiCad 8 (free)
Goal: PCB design ready to send to JLCPCB
```

### Week 5: Order PCB + Enclosure, Port Firmware

**You do**: Upload Gerbers to JLCPCB. Order enclosure (Hammond box from Rapid, or CNC from PCBWay). Start porting sequencer/LFO from JS to C.
**Claude Code does**: Help port sequencer.js, flamengine.js, lfoengine.js to C for Daisy. This is the biggest firmware task — Kuramoto coupling, lusona wavetables, flam timing all need to work in C.

```
Order: JLCPCB PCBs (£15), enclosure (£25), remaining parts
Goal: Firmware compiles and runs on Daisy with all features
```

### Week 6: Assemble + Test

**You do**: Solder PCB at makerspace. Mount everything in enclosure. Test.
**Claude Code does**: Debug firmware issues, help with MIDI mapping, verify timing accuracy.

```
Goal: Complete instrument. Playable. Sounds good.
```

### Total Cost: ~£150-200 in parts + £40 makerspace membership = **£190-240**

Compare to hiring someone: £1000-3000 minimum, plus they have your code.

---

## Protecting Your IP

### What's Actually Valuable

| Asset | Protectability | Strategy |
|-------|---------------|----------|
| **gen~ voice engine** (KS + body models) | Medium — DSP code is trade secret | Never share source. Distribute as compiled firmware binary only. |
| **Kuramoto coupling with veve topologies** | High — novel application | This is your most original contribution. Document it. Consider provisional patent. |
| **Lusona wavetable generation** (Gerdes algorithm applied to LFO) | Medium — algorithm is published, application is novel | Trade secret. The specific implementation + integration is yours. |
| **Flam engine + swing/groove architecture** | Low — common concepts, specific implementation is yours | Trade secret. Not worth patenting. |
| **Hardware design** (schematic + PCB) | Low — circuits are hard to patent, easy to reverse-engineer | Don't worry about this. The magic is in the firmware. |
| **The combination** (DSP + analog + acoustic + Kuramoto + veve + lusona) | Very high — the stack is the moat | This is what matters. No one else has this combination. |

### Practical IP Protection

#### 1. Keep Source Code Private

- Git repo stays private (GitHub private repo or self-hosted)
- Never push to public
- If you ever open-source, choose what to release carefully (e.g. open the hardware, keep the firmware closed)

#### 2. Compiled Binary Only

When you hand a Daisy Seed to anyone (tester, manufacturer, collaborator):
- Flash the compiled `.bin` firmware
- Never share `.cpp`, `.h`, `.genexpr` source files
- Daisy Seed firmware is compiled ARM binary — not trivially reversible

#### 3. If You Hire Anyone

**Never give a contractor**:
- The full gen~ codebox source
- lfoengine.js (Kuramoto + lusona + veve = crown jewels)
- build_patch.py

**Safe to share with a contractor**:
- Hardware schematic (circuits aren't your moat)
- Enclosure drawings
- Pin assignments / connector spec
- Audio I/O requirements

**If you need firmware help**: Have them work on isolated modules (e.g. "write me an encoder debounce library" or "write the OLED display driver"), not the core DSP/LFO/sequencer code.

#### 4. Provisional Patent (Optional, £50)

A UK provisional patent application costs £50 via the IPO (Intellectual Property Office, gov.uk). It gives you 12 months of priority date while you decide whether to file a full patent.

**What to claim**: "A method for modulating parameters of a digital percussion synthesizer using coupled oscillators arranged in topological adjacency matrices derived from Haitian veve ritual diagrams, wherein oscillator phase coupling strength is determined by weighted graph connections."

That's specific enough to be defensible and weird enough that no one else will have prior art.

**File it yourself**: [gov.uk/apply-for-a-patent](https://www.gov.uk/apply-for-a-patent). You don't need a patent attorney for a provisional. Claude Code can help you draft the claims.

#### 5. Design Registration (£50)

Register the physical design (enclosure, control layout, resonant plate window) with the UK IPO. Protects the visual appearance for 25 years.

#### 6. Copyright (Free, Automatic)

Your code is automatically copyrighted the moment you write it. Add copyright headers to all source files:

```javascript
// Copyright (c) 2026 [Your Name / Ubani Studio]. All rights reserved.
// This source code is proprietary and confidential.
```

---

## The Real IP Protection

Honestly? The real protection is:

1. **Speed** — ship before anyone else thinks of coupling veve topologies to LFO modulation
2. **The stack** — code can be cloned, but code + analog circuit + resonant plate + enclosure tuning + your specific aesthetic cannot
3. **The culture** — Gerdes lusona, Rigaud veve, Kuramoto from physics, KS from acoustics — the intellectual lineage is yours. Someone cloning the code without understanding the cultural architecture will make a hollow copy
4. **Build in public (carefully)** — show the instrument, play it, post sound demos. Don't show the code. Let people hear what it does without seeing how.

---

## Decision Matrix

| Option | Cost | Quality | IP Safety | Learning | Time |
|--------|------|---------|-----------|----------|------|
| **Build yourself + Claude Code** | £200 | High (you control every detail) | Maximum (code never leaves your machine) | Maximum | 6 weeks |
| **Build yourself + makerspace help** | £250 | High | High (community members see circuits, not code) | High | 4-5 weeks |
| **Hire student for PCB + you do rest** | £400 | High | Good (student sees schematic only) | Medium | 4 weeks |
| **Hire synth builder** | £1500+ | High | Medium (they see firmware if porting) | Low | 3-4 weeks |
| **Hire firm (Bela etc)** | £3000+ | Very high | Low (full disclosure required) | None | 6-8 weeks |

**Recommendation: Option 1.** Build yourself with Claude Code. Join South London Makerspace or London Hackspace for £40/month. Spend £200 on parts. Keep your code. Learn hardware. Ship in 6 weeks.

---

## First Steps (This Week)

1. [ ] Join South London Makerspace or London Hackspace (apply online)
2. [ ] Order Daisy Seed x2 from Electrosmith (~£65 shipped)
3. [ ] Order breadboard + jumper kit from Rapid Electronics (~£8)
4. [ ] Install KiCad 8 on your machine
5. [ ] Record a 2-minute sound demo of Maud in Max (for your own reference + future promotion)
6. [ ] Add copyright headers to all Maud source files
7. [ ] File provisional patent with UK IPO if the veve-coupling claim feels worth protecting (£50)

---

*Last updated: 2026-03-22*
