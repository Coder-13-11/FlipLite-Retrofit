# Validation report — 11 November 2026

**Release status: digital engineering prototype. NOT fabrication-ready, NOT physically tested, NOT deployable firmware.**

## Evidence obtained

- CadQuery 2.8.0 produced 13 individual printable-part candidates as STEP and STL. Each reports one valid B-rep solid, positive volume and a watertight mesh. Numeric results: `geometry.json`.
- Separate wall and inline STEP assemblies contain simplified switch and servo reference bodies. The inline assembly is exploded. Assembly motion, collision-free sweeps, servo axis fidelity and fit are not validated by the single-part geometry checks.
- `node.sch` and `node.brd` parse as EAGLE XML; both are generated from the same 45-part, 32-net definition. Tests check pin/net/pad-set agreement and selected power/motor connections. This is **not ERC, DRC or native-editor acceptance**. The PCB has zero routed traces.
- 21 automated checks pass: 15 control-behavior tests plus 6 artifact/interface tests. `all-tests.txt` records the aggregate result. The original 13 behavior tests failed before the implementation existed, then passed. Five review regression tests reproduced failures before fixes and now pass.
- Tested interfaces include 60 mm wall spacing parameter, required exports, battery connector family, PCB mounting-drill versus pad clearance, closed inline joint annuli, and enclosure height budget. No broad PCB copper/courtyard clearance certification is implied.
- Previews were inspected. They depict generated CAD and placement, not photographs, sliced toolpaths, assembled electronics or completed physical products.

## Independent review and corrections

A separate reviewer inspected the files read-only. It identified the module-power-pad/mounting-drill overlap, inline mounting-hole breakout and fan-timer recovery defect. The fixes were checked by regression tests, not a second reviewer.

1. Moved the radio module away from mounting drills; adjusted adjacent connector placement. Added analytic drill/pad clearance checks.
2. Moved both sides of the inline angle/bridge joint to closed solid material; checks require a full annulus around both bores.
3. Retained an expired fan deadline when feedback is unknown or actuation unavailable. After fresh feedback and explicit fault acknowledgement, a still-on fan can perform its overdue OFF action. A command or acknowledgement does not silently restart the original timer.
4. Treated enclosure connector collision as substantive: raised the PCB-only tray from 16 to 30 mm to budget standoff, board, XH connector and cable exit space. This is an envelope budget, not proof of a mating connector fit.
5. Treated late verification as substantive: feedback arriving at/after the command deadline cannot turn the operation into a successful command result, even if the tick handler has not yet run.
6. Source verification found PH's 2 A rating insufficient for the initial 3 A battery-harness pulse requirement. Battery now uses distinct XH4 with AWG22 power conductors; input XH2, motor XH3, Hall PH4 and optical PH2 remain separate interfaces.

## Decisions made and their costs

- Used the dedicated non-git workspace and a file ledger; no unrelated repository/worktree or commit history was created. Cost: no commit-based rollback.
- Continued approved native implementation without another scope-approval pause. No purchase, upload to a fabricator or fabrication order was performed.
- Used installed-in-workspace CadQuery plus generated EAGLE XML because native CAD/EDA apps were absent. Cost: native editor import, pin electrical classifications, footprints and ERC/DRC remain unverified; board cannot be released.
- Chose bare ESP32-C3-WROOM-02 for nodes, with XIAO hub-only, to avoid a second charger. Cost: larger radio footprint than MINI-1 and RF clearance work remains.
- Specified a factory-assembled USB-C input dongle and preterminated cable, rather than an unverified onboard USB footprint. Cost: extra assembly/harness volume; dongle detail remains unfinished.
- Supplied executable control rules rather than label host-tested code as flashed firmware. Cost: no working radio, driver stack, schedules or live phone UI yet.
- Physical and specialist release judgments were deliberately deferred: force, travel, servo axis geometry, print strength, battery qualification, current/thermal margins, vendor footprints, native EDA checks, RF, optical reliability and deployment. Cost: these artifacts cannot yet establish a functioning or safe unattended device. The assembly/test guide gives the required checks.

## Deferred minor

`cad/parameters.json` includes `wall_arm_z`, but the current wall assembly uses 27 mm directly in `cad/build.py`. Adjust that assembly translation explicitly until the parameter is wired through. Do not assume changing that one JSON field changes the assembly. Other CAD dimensions are also partly design constants rather than a complete constraint-based commercial CAD feature tree.

## Remaining blockers to a finished system

- Fit/force/stroke and servo-axis measurements; magnet/Hall fixture and final combined battery enclosure.
- Exact qualified protected battery with compatible NTC and pulse capability; exact passive MPNs and custom preterminated subassemblies.
- PCB layout/routing, verified footprint library, native ERC/DRC, independent electronics engineering review and factory quote.
- Embedded motor/sensor/power drivers, authenticated radio protocol, persistence/time handling, hub phone interface and hardware integration tests.
- Two physical prototypes, charge/power-transition/jam/low-battery tests, at least 100 cycles per mechanism and multi-day energy/runtime measurements.

The $150–$200 target remains unproven. No physical fit, runtime, energy saving, battery compatibility or assembly price is claimed.
