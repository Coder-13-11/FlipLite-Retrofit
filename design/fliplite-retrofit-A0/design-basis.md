# Compact rechargeable switch attachments — proposed design

Status: approved design basis, updated for factory assembly. Digital prototype; not physically validated or fabrication released.

## Purpose and priorities

Reduce forgotten-on lights and bathroom fans with external actuators. Build five or six attachments with one shared hub. Priorities are compact size, simple mechanisms, low total energy consumption, repairability, and low cost. Rechargeable attachments must continue operating when their low-voltage charging cable loses power. Several days unplugged is acceptable; a short phone-command delay is acceptable. Neither runtime nor net energy savings has yet been measured.

## Selected architecture and alternatives

The user selected one shared hub with small wireless attachments. The hub provides Wi-Fi and a phone interface; each attachment retains a radio, controller, motor, battery, and local control logic. Proposed first implementation: ESP32-family hub and ESP32-C3 attachments using ESP-NOW, with a local browser interface and no mandatory subscription. This protocol selection is the designer's proposal, not an established user preference. ESP-NOW still uses the Wi-Fi radio; removing router association does not automatically guarantee low power or smaller hardware.

Alternatives considered: Wi-Fi on every attachment simplifies some networking but requires independent connections; wired central control can reduce electronics at the switch but adds cables. BLE remains an alternative if measured ESP-NOW power exceeds the target. A central always-on display is deferred in favor of the phone interface.

Use one motor per attachment. Two opposing straps were considered, but tensioning and routing complicate the first prototype. Direct actuation better suits the actual toggle and push-button devices. A relay does not physically move either switch.

## Two mechanical adapters

**Wall toggle:** an adjustable external bracket with a side-mounted micro servo and an arm that flips the lever, then parks clear for manual access. The photographed right-side trim constrains that side, so initially explore the left. Use faceplate screw locations only after confirming fit, screw engagement, and that the mount does not load the plate excessively. Do not open or modify mains wiring. A removable external mount is the fallback. Clearance, arm length, and servo travel are adjustable; avoid prolonged stall force. A mechanically independent position sensor must detect manual flipping; a magnet and low-power Hall sensor is the initial candidate, with its fit and operating margin to be validated.

**Inline tube-light switch:** an external split cradle, with cable clearance, that supports a servo finger. The finger presses and retracts; repeated presses alternate on/off. Preserve hand access and allow removal without altering the cord or switch housing. Do not clamp the cable or compress the battery. Body depth and button stroke are unknown, so adjustable geometry and fit coupons precede a final enclosure.

**Tube feedback:** the user accepted a small shielded optical sensor near one end of the tube, with a thin low-voltage wire following the existing cord back to the attachment. Calibrate lamp-on and lamp-off levels, including daylight and other room lights. Use hysteresis, filtering, and an ambiguous band. The sensor indicates emitted light, not electrical isolation or power draw. A failed tube can look off while energized.

## Recorded measurements

| Feature | User measurement |
|---|---:|
| Toggle faceplate height | Approximately 132–133 mm |
| Toggle faceplate width | Approximately 88 mm |
| Toggle moving lever length | Approximately 23 mm |
| Toggle screw centers | 60 mm, latest report |
| Toggle screw-head width | Approximately 5 mm |
| Inline switch body length | 55 mm |
| Inline switch body width | Approximately 23 mm |
| Inline moving control length | Approximately 15 mm |

These are user measurements, not independently verified dimensions. Do not substitute a presumed standard screw spacing. Confirm with a printed paper/fit template before making the load-bearing bracket. Housing depth, travel, required force, cord diameter, and available side clearance remain physical measurements for the prototype stage.

## Behavior

Fan: start an adjustable 12-minute countdown on each confirmed off-to-on transition, including manual activation. Turn off at expiry regardless of occupancy, as requested. Proposed rules: early manual off cancels; a new off-to-on transition starts a new timer; another ON command while already on does not silently reset it. Run the countdown on the attachment. Hub or internet loss must not stop it. After a reset, reconcile physical state and persisted timer information; if elapsed time cannot be recovered, report uncertain timing and use a documented restart policy rather than claim the original deadline survived.

The fan timer is not a fail-safe shutdown: depleted batteries, controller faults, and mechanical jams can prevent actuation. Warn early on low battery; below a validated actuation threshold, reject automated ON commands and report that automatic OFF is unavailable. Preserve manual access. Confirm the lever reached OFF after a timed action and otherwise report a fault; switch-position feedback does not independently prove the fan stopped electrically.

Tube: commands specify desired state, not blind toggle. If feedback already matches, do nothing. Otherwise press once, retract, allow light stabilization, and confirm. Ambiguous feedback or failure to change produces a fault/unknown state; no repeated automatic presses. Manual changes update the observed state.

Phone interface: device names, observed state, last-seen time, pending/confirmed/failed command status, timer duration, schedules, low-battery warning, and manual override. Scheduled local rules can be cached on attachments with time synchronization. Show time-dependent schedules unavailable after loss of valid time. Reminder mode is initially an in-app alert; background phone notifications require a separately selected integration. Occupancy detection is not included in the first version: timers and schedules cannot establish whether a room is empty.

## Power and communication proposal

Start with a protected single-cell rechargeable lithium battery, provisionally 300–500 mAh, subject to pulse-current rating and enclosure fit. Use a charger with documented power-path/load-sharing, a charge current compatible with the selected cell, and appropriate protection. A dedicated motor rail must support measured startup/stall current. Power-gate the motor rail and prevent back-power through the control signal. Keep the controller on an efficient low-quiescent-current supply; avoid powering the whole device through an always-running motor boost converter. Do not connect two chargers to the same cell.

Poll the hub roughly every five seconds as an initial target; tune after measuring wake energy. Hub queues commands until a node checks in; use command IDs, acknowledgement, retry expiry, pairing, and authenticated/encrypted links. The local timer and position-sensor wake operate independently. Avoid permanent indicator LEDs. For a 300 mAh battery with 80% usable capacity, a five-day target requires about 2 mA average battery current including radio, sensing, regulators, and motor energy. This is a design budget, not a runtime prediction.

## Candidate parts and procurement status

Per attachment: compact controller/radio, micro servo, protected battery, power-path charger, suitable controller regulator, switched motor supply, state sensor, connectors, fasteners, and printed adapter. One hub needs a controller and suitable USB supply. Tube sensors are needed only for tube attachments; toggle sensors only for toggle attachments. Start with one of each, not six untested copies.

The XIAO ESP32C3 is a compact controller candidate (manufacturer lists 21 × 17.8 mm). An SG90-class servo is a low-cost benchmark, not yet the final size/force choice. The Adafruit BQ25185 power boards are useful evaluation references; startup-current limits and regulator topology must be checked before selecting a servo supply. Off-the-shelf stacked modules may exceed the desired size, so a later compact carrier PCB is possible but not assumed necessary.

Provisional purchasing allowance: $150–$200 for six attachments and a hub, excluding printer, tools, shipping, and tax. It is a cost target, not a sourced quote; larger evaluation modules or custom boards may exceed it. Price and fit two complete prototypes before committing the remaining budget. Amazon availability, seller, battery specification, and complete electrical compatibility remain unverified. Do not treat the candidate links as a complete cart.

## Prototype sequence and acceptance

1. Print paper/fit coupons to verify screw centers, depth, cable clearance, and manual access.
2. Bench-test one toggle arm and one push finger; measure force, travel, current, and reliable release before enclosure design.
3. Validate charging, cable removal/restoration, low battery, motor starting, and stalled-actuator timeout without controller resets.
4. Validate manual state detection, optical interference, one-press reconciliation, local fan timeout, duplicate commands, and hub loss.
5. Run at least 100 switching cycles per mechanism and a multi-day battery trial. Revise rather than infer lifetime reliability from these tests.
6. Measure hub and charger energy at the wall and device loads/runtime saved. Net energy saved equals avoided appliance energy minus all control-system energy. Expand only after reliable operation and a useful energy benefit are demonstrated.

Planned implementation deliverables: editable parametric CAD and STL files labeled with fit status, wiring schematic, exact sourced BOM, firmware, local phone interface, assembly guide, calibration procedure, and measured validation results. None of these implementation artifacts is claimed complete by this design document.

## References

- [Related hub-and-servo DIY design, CAD, PCB and firmware](https://github.com/Laurentsandler/Scalable-Light-Switch-Actuators)
- [Toggle servo bracket with manual-clearance resting position](https://discspace.org/easy-servo-control-of-wall-switch-gives-ac-automation/)
- [XIAO ESP32C3 manufacturer documentation](https://wiki.seeedstudio.com/XIAO_ESP32C3_Getting_Started/)
- [Espressif ESP-NOW documentation](https://docs.espressif.com/projects/esp-idf/en/stable/esp32c3/api-reference/network/esp_now.html)
- [Power-path and boost evaluation-board documentation](https://learn.adafruit.com/adafruit-bq25185-usb-dc-solar-charger-with-5v-boost-board)
- [Amazon controller candidate](https://www.amazon.com/dp/B0DRNSV5CS) — page retrieved; price and seller not verified.

## Approved no-user-soldering amendment
Factory assembles all PCB components and connectors, programs the controller, and supplies tested preterminated motor, battery and sensor harnesses. User assembly is screws and keyed plugs only. No breadboard or user soldering is a final assembly step. A single charger owns the battery. Purchase/fabrication orders are not authorized.
