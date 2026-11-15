# FlipLite Retrofit

A small attachment that flips a bathroom fan switch and turns it off on a timer. The plug-in tube light will use an Amazon smart plug through Alexa.

Start with one fan attachment and one smart plug. The fan arm should park clear so the switch still works by hand. The adjustable fan timer starts at 12 minutes and runs locally. Check that the tube light comes back on when power returns before relying on its smart plug.

## Files

| Folder or file | Contents |
|---|---|
| [CAD](design/cad) | Editable Python parameters, STEP solids and STL print candidates |
| [Electronics](design/electronics) | Editable EAGLE schematic, unrouted board and component list |
| [KiCad board](design/A1/electronics/node.kicad_pcb) | Imported placement draft |
| [Control code](design/firmware) | Python behavior reference and tests |
| [Firmware draft](design/A1/firmware) | Incomplete ESP32 scaffolding |
| [Current plan](design/design-basis.md) | Fan servo plus tube smart plug |
| [Build list](design/active-build-list.md) | Current quantities and print scope |
| [BOM](bom.csv) | Parts categories and links; incomplete pricing |
| [Build guide](design/assembly-and-test.md) | Fit checks and bench tests still needed |
| [Status](STATUS.md) | What exists and what is missing |

## Status

The design is unfinished. The PCB needs routing, verified footprints and electrical checks. The battery is not selected. Firmware and a complete assembly with electronics still need work. No physical prototype has been built or tested.

Inline cradle/finger/optical files are from an earlier approach and are not part of the current build. See [retired files](design/cad/RETIRED.md). Images are CAD or placement renders, not photographs or screenshots of a finished device.

## Checks

Earlier A0 reports recorded 21 passing checks. The upload rerun passed 20; one geometry test could not import OCP.OCP. These tests cover selected geometry/interfaces and control rules, not physical or electrical performance.

```sh
python -m pip install cadquery==2.8.0 trimesh matplotlib pytest
python -m pytest design/validation/test_artifacts.py design/firmware/test_control.py -q
```

## Assistance

AI helped create the CAD, circuit drafts, code and documentation. The files need the builder's own review and revisions. This repository does not establish eligibility for a funding program.
