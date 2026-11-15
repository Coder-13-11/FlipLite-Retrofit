# FlipLite Retrofit — A0 digital prototype

**Editable artifacts now exist. This is an engineering prototype package, not a working device or fabrication release.** No parts were purchased or ordered. No physical tests were performed. Factory assembly and preterminated plug-in wiring are the required final assembly method; the user is not expected to solder.

## Open first

- [Wall mechanism preview](previews/wall-preview.png)
- [Inline mechanism exploded preview](previews/inline-preview.png)
- [PCB placement preview](previews/pcb-preview.png) and [3D envelope](previews/pcb-3d-preview.png)
- [Fit coupon preview](previews/fit-coupons.png)
- [Parts list and sourcing](parts-and-sourcing.md)
- [Print/assembly and physical test guide](assembly-and-test.md)
- [Validation and remaining work](validation/report.md)

## Editable files

| Deliverable | Files | Current status |
|---|---|---|
| Design basis and concise plan | `design-basis.md`, `implementation-plan.md` | Approved dimensions plus no-user-soldering amendment |
| Parametric CAD | `cad/build.py`, `cad/parameters.json` | CadQuery source; 13 separate printable-part candidates |
| Solid CAD and meshes | `cad/*.step`, `cad/*.stl` | Real STEP and STL exports; valid single solids and watertight meshes |
| Assemblies | `cad/wall_assembly.step`, `cad/inline_assembly.step` | Simplified vendor/switch envelopes; inline shown exploded; no motion/fit validation |
| Main-board circuit | `electronics/node.sch`, `electronics/netlist.json` | Editable EAGLE XML; 45 components, 32 named nets |
| Main-board PCB | `electronics/node.brd` | 50 × 38 mm unrouted placement; no fabrication files |
| Component and placement review | `electronics/component-bom.csv`, `electronics/placement-review.csv` | Review-only; exact passive MPNs and footprints still need qualification |
| Control rules | `firmware/control.py`, `firmware/test_control.py` | Executable host reference; not flashable ESP32 firmware |

## What can be used now

Print the three fit coupons and compare them with the real switch dimensions. Review or modify the CAD and circuit sources. Use the parts categories and connector requirements to prepare an assembler quotation after the electrical design is completed. Do not submit the A0 board for manufacture.

## What prevents a completed build

PCB routing, native-editor import/ERC/DRC and vendor-footprint checks remain. The exact battery/NTC/pulse rating, sensor/magnet mounts, custom harness assemblies, force/stroke/clearances and final battery enclosure need physical information. Embedded drivers, secure radio integration and the live hub phone interface are not implemented here. These limitations are part of the deliverable, not hidden behind the renders.

The $150–$200 scaled-system target is not confirmed; low-volume PCBA and custom harnesses may substantially exceed it. The parts document separates manufacturer facts, unverified candidates and cost allowances.

## Reproduce

Use Python with the versions in `validation/python-packages.txt`. Mechanical generation requires CadQuery, trimesh, matplotlib and numpy. Electronics generation and behavior tests use the standard library; pytest is used for aggregate artifact checks.

```sh
python cad/build.py
python electronics/build.py
python electronics/render.py
python -m pytest validation/test_artifacts.py firmware/test_control.py -q
```

Run those commands from the extracted package directory. Previews are CAD/circuit renders, not printer-specific slicer previews or proof of assembly fit.
