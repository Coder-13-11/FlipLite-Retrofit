# FlipLite Retrofit plan

Updated November 15, 2026. This replaces the earlier two-servo design. The current hardware files are prototypes, not a fabrication release.

## What I want to build

A small attachment that flips the normal switch for my bathroom exhaust fan. The tube light already plugs into an outlet, so it can use a smart plug instead of another motor.

## Bathroom fan

Keep the custom rechargeable servo attachment, independent switch-position sensing, and phone control through the proposed shared hub. Start with one fan unit. Keep the arm clear for manual switching when parked. No changes to the mains wiring and no user soldering: an assembler supplies the PCB and preterminated battery, motor and sensor leads.

The local timer starts on a confirmed off-to-on transition, including a manual switch flip. Default is 12 minutes, adjustable. Early off cancels it; a fresh off-to-on restarts it; repeated ON while already on does not extend it. The timer runs on the fan unit even if the hub or internet goes away. Low battery, missing feedback and jams must be reported; no guaranteed shutdown claim. Reset timing uncertainty stays visible.

Keep the measured wall dimensions: plate about 88 × 132–133 mm, screw centers 60 mm, lever about 23 mm and screw head about 5 mm. Left mounting is preferred because of nearby right-side trim. Fit, force, travel, servo-axis geometry and battery current still need checking.

## Tube light

Use one Amazon Smart Plug, candidate B089DR29T6: https://www.amazon.com/dp/B089DR29T6

Plug it into the existing outlet, then plug the tube light into it. Leave the light's own mechanical switch on during smart-plug operation. Nothing replaces the switchboard or opens the light/plug. First check that the tube relights after unplugging and restoring power without another button press. If it does not, the smart plug cannot provide remote ON on its own; stop and reassess instead of claiming compatibility.

The product page lists 120 VAC, 60 Hz, maximum 15 A, indoor use and 2.4 GHz Wi-Fi. Confirm the actual outlet voltage, plug fit, fixture rating and intended load compatibility before purchase/use. It uses the Alexa app, requires no separate smart-home hub, and is documented as exclusive to Alexa rather than other smart hubs. Do not assume Matter, ESP-NOW, a public local API, energy measurement or temperature sensing.

Use Alexa's own app/routines for the tube light initially. The custom fan interface and Alexa are two control paths. A combined app is deferred until a supported integration is selected and demonstrated. No offline or internet-loss light-control guarantee is made. A plug reporting ON does not prove the tube is emitting light; switching the inline switch off will also prevent remote ON.

## Optional sensor

A separate temperature sensor near the relevant location is a later experiment, not required for the first build. Its placement, purpose, interface and thresholds are not selected. It must remain outside mains enclosures and away from lamp/driver heat if measuring room temperature. Temperature does not establish occupancy or tube state. Any sensor-to-Alexa routine needs a separately verified supported integration. Fan timeout remains independent of this option. No new sensor-triggered automation is approved by this plan.

## Remove from the active first build

No inline servo, cradle, bridge, finger, extra motor battery/charger/radio node, cable fit coupon or optical tube sensor. Preserve those existing files as historical alternatives; exclude them from print requests and the active purchase quantities. The optical hood is no longer a required print.

## Build order

1. Confirm tube-light power-return behavior and outlet/load compatibility. Set up the smart plug in Alexa and test app ON/OFF and the desired routines. Test power and Wi-Fi loss/recovery; record actual behavior.
2. Print one wall fit coupon, then fit the fan bracket and servo mechanism. Preserve manual access. Do not print the obsolete inline mechanism.
3. Finish and electrically check the factory-assembled fan PCB, battery selection, gated motor power and connectors. Existing boards remain preliminary; importing to KiCad is not electrical validation.
4. Complete and compile fan/hub firmware, then validate sensing, local timeout, duplicate commands, low battery, jams and hub loss on the physical prototype.
5. Run at least 100 fan cycles and a multi-day battery trial. Measure actual control-system energy before claiming savings. Scale only after this works.

## Parts and funding

Initial scope: one fan actuator assembly, one hub (proposed), one suitable protected battery, one servo, independent wall sensors, factory-made harnesses, wall prints/fasteners and one smart plug. Price printing and shipping through Printing Legion. Temperature sensing is optional and excluded from required funding. The earlier two-custom-prototype and six-node estimates no longer describe this scope; obtain new actual quotes. No purchases or funding submissions are authorized by this document.

The original engineering parts list remains useful for the fan branch, but tube-specific rows and quantities are superseded. The node schematic still includes optical circuitry; remove unused tube features during the next electronics revision and rerun native checks before fabrication. No manufacturing files have been newly released by this plan update.

## Simple project description

A little gadget that flips my bathroom fan switch and turns it off on a timer. For my plug-in tube light, I'll use a smart plug. I'm starting with one fan gadget and one smart plug so I can test them first.

## Source and status

Amazon product specifications and compatibility wording were checked on November 15, 2026: https://www.amazon.com/dp/B089DR29T6 . Stock, seller and price are not verified. The source is a product specification, not proof that the user's tube light is compatible.
