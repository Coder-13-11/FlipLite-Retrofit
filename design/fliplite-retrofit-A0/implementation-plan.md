# FlipLite Retrofit Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:executing-plans to implement this plan task-by-task.

**Goal:** Deliver editable mechanical and electrical prototypes and a reproducible validation package for two externally mounted switch types.
**Architecture:** One rechargeable actuator per switch plus a shared hub. Factory assembled node PCB; all external wiring is preterminated. Parametric adapters keep fit dimensions editable.
**Tech Stack:** CadQuery/STEP/STL; editable EAGLE XML schematic and board; Python behavior reference and tests.
**Spec:** design-basis.md

## Global Constraints
- Wall screw centers 60 mm; plate 88 × 132.5 mm; lever about 23 mm.
- Inline body 55 × 23 mm; button presses inward, does not slide.
- No user soldering, mains modification, purchases or fabrication orders.
- One motor per node; parked manual access; independent state observation.
- Local adjustable twelve-minute fan timer; unknown feedback never triggers blind tube presses.
- $150–$200 is an unverified aspiration, not a quote.

## Review Focus
- Unknown inline depth/force/stroke: adjustable parts and fit coupons, physical release gate.
- Motor inrush and depleted battery: rail budget and blocked procurement until measured.
- Manual toggles and hub loss: deterministic local timer tests.
- Unknown optical state, duplicates and jams: at most one actuation per command; faults require reconciliation.
- CAD/PCB exports: geometry validity and parse checks are not electrical ERC/DRC or fit proof.

### Task 1: Mechanical prototypes
Files: cad/build.py, cad/parameters.json, cad/*.step, cad/*.stl, previews/*.png.
Interface: parameter dictionary in millimetres; exported separate printable parts and reference assemblies.
- [x] Create validation expectations for solid validity, positive volume, 60 mm holes and separate printable parts.
- [x] Implement wall bracket, adjustable servo carriage, horn adapter, inline cradle and bridge, cable coupons and optical hood.
- [x] Generate STEP/STL, inspect previews, record geometry checks and print guidance.

### Task 2: Electronics and procurement
Files: electronics/node.sch, electronics/node.brd, electronics/build.py, electronics/netlist.json, parts.csv, electronics/README.md.
Interface: named power/signal nets; board envelope exported to CAD and connector map.
- [x] Source authoritative pinouts and electrical limits, make explicit battery/motor release gates.
- [x] Create editable schematic and preliminary placement PCB; do not fabricate without routing/ERC/DRC and engineering review.
- [x] Generate source-linked component/harness BOM and inspect PCB preview.

### Task 3: Control behavior reference
Files: firmware/control.py, firmware/test_control.py, firmware/README.md.
Interface: observed state, monotonic seconds, desired-state command ID, low battery flag; action/fault/deadline outputs.
- [x] Write failing tests for timer transitions, expiry without hub, duplicate commands, unknown state and failed verification.
- [x] Implement deterministic hardware-independent reference; test it. Clearly distinguish reference from flashable radio firmware and live phone app.

### Task 4: Package and independent review
Files: README.md, validation/report.md, assembly-and-test.md, previews/contact-sheet.png.
- [x] Run all supported checks and record limitations.
- [x] Independent review, address substantive findings, package artifacts and mirror to coordinating chat outputs.
