> Scope update November 15: fan servo only; tube light uses an Amazon Smart Plug. Follow [current design](design-basis.md). Earlier inline-actuator instructions and quantities are historical.

# Print, assembly and physical validation

## Print now: non-loadbearing fit checks

Start with `wall_fit_coupon.stl`, `inline_fit_coupon.stl` and `cable_coupon.stl`. Units are mm, print at 100% scale. Their flat faces are on Z=0. Check the wall coupon's 60 mm hole spacing against the actual plate without forcing screws. Check the 55 × 23 mm body against the clearance window; the window includes 0.6 mm per side. Cable comb openings run 4, 5, 6, 7 and 8 mm left to right in source coordinates. Never use the gauge to squeeze or restrain the cord.

Starting slicer settings: 0.2 mm layers, 0.4 mm nozzle, three or four walls, 25–35% infill for brackets; PETG candidate for load-bearing parts, opaque PETG for optical hood. Use your filament/printer's qualified temperature profile. These are starting settings, not a tested print recipe. No G-code or printer-specific sliced preview is included because printer/nozzle/material profiles were not supplied. Images are CAD geometry previews.

`cad/parameters.json` is the editable measurement record. Depth, ear pitch, battery dimensions and arm contact height are assumptions. Re-run `cad/build.py` after changes. Flat coupons should come before the mechanisms. Wall arm has a downward contact post and needs reorientation/support in the slicer; do not treat its exported pose as a ready-to-print orientation. Inspect all overhangs and screw holes.

## Fit sequence

1. Record inline depth, button travel, cord diameter and pressing force. Record wall lever protrusion, travel, toggle force and available left clearance. A spring scale at a known arm radius provides a rough torque requirement; use a margin, then validate current and repeatability.
2. Check the wall bracket supports against plate shape and screw engagement. Do not enter or alter mains wiring. If screw mounting cannot be done without disturbing the electrical installation, use an externally removable mounting method or a qualified installer.
3. Fit servo and vendor horn to the printed carriage. Confirm the real servo ear pitch, body underhang and spline-axis offset; the CAD uses a simplified envelope. Ensure the arm touches only the toggle during movement, clears it when parked, and allows fingers to flip it normally. Servo power off must not leave the arm trapping the lever.
4. Fit inline cradle without squeezing its body or cord. Bolt the open bridge and servo angle together. Adjust contact radius/height so one bounded stroke depresses the button then fully releases it; preserve manual access. The current model is a fit study, not a verified motion assembly.
5. Mount two Hall sensors and a captive lever magnet so exactly one detector is active in each stable switch position. A missing magnet, intermediate state, or both-active reading must be unknown. Sensor/magnet holder geometry is pending these trials.
6. Position the shielded optical detector near the tube end with removable insulation-safe mounting. Run thin low-voltage cable along the existing cord with gentle clips; no modification of its insulation. Test under daylight, room lights, tube warmup and lamp failure. Sensor only indicates emitted light.
7. Keep battery in a separate uncompressed pocket, clear of screw tips, servo sweep, converter heat and antenna. The current pod demonstrates the PCB envelope; it is **not a completed combined battery enclosure**. Do not fit a guessed battery into it.

## Factory assembly acceptance

All electronics soldering, cable termination and programming belongs to the assembler. Require harness polarity and continuity checks, connector retention, correct battery PCM/NTC, firmware checksum and a test report. No bare PCB, unsoldered headers, loose sensor legs or solder-jumper charge setting should be passed to the user.

## Bench validation matrix — nothing below is claimed performed

| Test | Acceptance |
|---|---|
| Battery compatibility | Cell/PCM/harness ratings exceed measured pulse and sustained current; charging limits and temperature cutoffs match manufacturer specification |
| Cable unplug/replug during idle and actuation | No unintended motion, no controller reset, battery continues powering local behavior |
| Servo startup/stall and low voltage | Scope 3.3 V and motor rail; measure battery current; bounded motor shutdown, fault report, manual access retained |
| Charge plus motor load | No thermal/current violations; charge termination works; no two chargers on one cell |
| Wall state/manual switching | Both states observed independently of servo; intermediate/magnet loss does not become a false confirmed state |
| Fan timer without hub | Confirm off→on manually and remotely; local 12-minute expiry; early off cancels; fresh on restarts; duplicate ON does not reset |
| Tube desired state | Already-correct does nothing; otherwise one press/retract and verify; ambiguous/failure yields unknown/fault without blind repeats |
| Reboot and lost time | Explicit uncertain-timing state; documented restart policy, no false claim of recovered original deadline |
| Radio/hub failure | Timers continue locally; expired commands never actuate later; encrypted pairing/replay handling tested |
| Optical interference and disconnected wire | Test bright ambient, covered sensor, warmup and failed tube; document analog failure ambiguity; no claim of electrical isolation |
| Mechanical endurance | At least 100 cycles each plus manual-access checks; no slip, jam, fractured print or cord damage |
| Runtime and energy | Multi-day trial; measure control-system wall energy and avoided load energy; no net saving claim before measurement |

PCB fabrication remains blocked by incomplete routing/native ERC/DRC and footprint checks. Device deployment remains blocked by unimplemented embedded radio/drivers and physical calibration. These are outstanding engineering tasks, not requests to approve a purchase.
