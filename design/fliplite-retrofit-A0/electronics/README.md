# FlipLite node electronics — A0 engineering draft

**Actual editable circuit and PCB placement; UNROUTED, not fabrication-ready. Do not order this revision.** No native EDA application or ERC/DRC engine was installed. XML parsing and pin/net consistency are the checks performed; they do not establish electrical correctness. All generated symbols use passive pin types, so even a later ERC requires proper electrical pin classification. Custom footprints are provisional land patterns, not a verified vendor library.

Open `node.sch` and `node.brd` together in Autodesk EAGLE/Fusion Electronics (or import into KiCad and inspect). Native-editor import has not been tested. `build.py` regenerates the pair from one connectivity definition; `netlist.json` provides an editor-independent review copy. `component-bom.csv` and `placement-review.csv` are review data, **not released BOM/CPL**. No Gerbers or drill files are supplied because this is not a routable-to-factory release yet.

## Circuit decisions

5 V input → BQ25185 IN. Its SYS supplies two independent regulators. Battery connects only to BQ25185 BAT. A 3 kΩ ISET resistor targets 100 mA nominal charge; an 18 kΩ VSET resistor selects 4.2 V and 500 mA input limit. NTC is wired to the protected battery pack via J2. Verify thermistor curve and temperature thresholds against the selected pack; do not substitute a fixed resistor. [TI BQ25185](https://www.ti.com/lit/ds/symlink/bq25185.pdf)

TPS63031 maintains the 3.3 V controller rail as battery voltage changes. Power-save mode is selected; two 10 µF output capacitors and 1.5 µH inductor follow the application topology. Measure radio-burst voltage margin at the lowest permitted battery voltage. [TI TPS63031](https://www.ti.com/lit/ds/symlink/tps63031.pdf)

TPS61023 provides the motor rail, nominal 4.992 V from 732 kΩ/100 kΩ feedback and its 0.6 V reference. EN has a 100 kΩ pulldown. The part has input/output disconnection in shutdown; its switching-current specification is not a guaranteed servo output-current rating. Select the inductor and effective capacitance from measured startup load, not package size alone. [TI TPS61023](https://www.ti.com/lit/ds/symlink/tps61023.pdf)

Q1 is an open-drain 2N7002 level shifter, with servo PWM pulled up to the switched motor rail. The MCU gate does not directly feed an unpowered motor input. **PWM is inverted**: gate high holds output low. Initialize gate high before enabling boost, wait for rail settling, then generate inverted pulses; finish in park, hold PWM low, disable boost. A firmware crash still needs a watchdog to shut the rail off; no independent hardware motion timeout is implemented in A0. [Nexperia 2N7002](https://www.nexperia.com/product/2N7002)

ESP32-C3-WROOM-02-N4 is a bare radio module, with no additional charger. GPIO2/8/9 pullups and EN RC support boot/programming; factory uses the pogo interface. GPIO0 reads charge status, GPIO1 optical ADC, GPIO3 battery ADC, GPIO4 inverted servo PWM, GPIO5 motor enable, GPIO6/7 two Hall states, GPIO10 the other charger status. GPIO18/19 are unused. [Espressif datasheet](https://www.espressif.com/sites/default/files/documentation/esp32-c3-wroom-02_datasheet_en.pdf)

## Harness interface — factory builds and polarity-tests every cable

| Port | PCB connector | Pin order, looking at numbered PCB pads | Harness requirement |
|---|---|---|---|
| J1 | JST XH 2 pin, 2.5 mm | 1 = 5 V, 2 = GND | USB-C input dongle, separate 5.1 kΩ Rd on CC1 and CC2; 5 V only; no charger on dongle |
| J2 | JST XH 4 pin, 2.5 mm | 1 = protected pack +, 2 = NTC, 3 = unused, 4 = pack − | Protected single cell, 4.2 V charge, pack-bonded NTC; custom wired pack |
| J3 | JST XH 3 pin, 2.5 mm | 1 = GND, 2 = MOTOR5, 3 = PWM | Factory adapter to supplied servo's JR lead; keyed/shrouded connector and label |
| J4 | JST PH 4 pin, 2 mm | 1 = 3.3 V, 2 = GND, 3 = OFF Hall, 4 = ON Hall | Two assembled Hall sensors, each bypassed by 100 nF, small remote board |
| J5 | JST PH 2 pin, 2 mm | 1 = 3.3 V, 2 = phototransistor emitter | TEPT4400 collector on pin 1, emitter on pin 2; 22 kΩ load and filtered ADC on main board |
| J6 | Factory pogo pads | GND, 3V3, TX, RX, BOOT9, RESET | Programmer uses 3.3 V logic, no simultaneous regulator backfeed |

Input/optical and battery/Hall use different connector pitches; motor/battery use different pin counts to reduce accidental swapping. Connector body drawings, retention and mating compatibility still require checking; colors alone are not protection. USB dongle, Hall board and potted optical harness are specified factory subassemblies but **their detailed PCBs and harness drawings are not yet released**.

For Hall sensing use two independently located DRV5032DU sensors. Only OFF active = off; only ON active = on; neither or both = unknown. A single Hall detector cannot distinguish magnet loss from its inactive switch position. Magnet and remote board holders must be sized after physical trials. [TI DRV5032](https://www.ti.com/lit/ds/symlink/drv5032.pdf)

The optical threshold must be calibrated under daylight and other lights, with filtering, a wide unknown band and hysteresis around thresholds. A disconnected/damaged sensor can mimic darkness; this analog A0 circuit cannot positively diagnose every wire failure. Treat optical state only as evidence of emitted light, never electrical isolation. [Vishay TEPT4400](https://www.vishay.com/docs/81341/tept4400.pdf)

## Power envelope and release gates

Initial engineering budget: up to 1 A motor current at 5 V, short motion only. At 3.2 V and assumed 85% boost efficiency that alone is 1.84 A from SYS. Allow about 0.5 A for a radio burst and conversion loss: specify **at least 3 A short-pulse capability at the pack/harness**, plus a sustained current rating above the measured operating load. Battery power wires use AWG22 and genuine XH contacts, rated 3 A; PH is not selected for the battery path ([JST XH specification](https://www.jst-mfg.com/product/index.php?lang=2&series=277)). This is a design requirement, not a verified battery specification. A generic 500 mAh / 1C cell is unsuitable. Final undervoltage and motor cutoff thresholds must be measured with the chosen pack. No small protected pack satisfying every requirement has yet been verified, so battery procurement is blocked.

A 500 mAh cell at 80% usable capacity allows 3.33 mA average for five days. A 300 mAh cell allows 2 mA. Wake-cycle energy, servo duty, sensor draw, converters, divider and self-discharge all count. Runtime is unmeasured.

Before fabrication: exact MPNs and footprints; connector polarity/retention; transistor pinout; NTC behavior; input fuse/ESD strategy; thermal copper; RF keepout on all layers and nearby battery exclusion; power loop routing, motor-current return separation and bulk capacitor provision; ERC/DRC and schematic-board equivalence in a native editor. Then assemble two prototypes through a qualified service and bench-test cable removal, charge termination, startup/stall, brownout, temperature and low-battery behavior. No user soldering is needed or intended.
