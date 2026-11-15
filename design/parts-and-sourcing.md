> Scope update November 15: fan servo only; tube light uses an Amazon Smart Plug. Follow [current design](design-basis.md). Earlier inline-actuator instructions and quantities are historical.

# Parts and sourcing — prototype quantity first

**No purchases made. This is a complete category/quantity list with sourced candidates, not a fully qualified shopping cart.** Build one wall attachment and one inline attachment first. The exact small battery, remote sensor assemblies, cable assembly quotation and PCB release are unresolved. Prices and stock are not assumed from search snippets.

## User receives assembled units, not loose electronic components

| Item | Two prototypes | Six nodes + hub | Source / status |
|---|---:|---:|---|
| Fully assembled/programmed node PCBA | 2 | 6 | [JLCPCB assembly](https://jlcpcb.com/pcb-assembly); quotation after released design; A0 is unrouted |
| FEETECH FS90 positional micro servo, vendor horn and lead | 2 | 6 | [Pololu 2818](https://www.pololu.com/product/2818); page lists $8.40 one / $7.90 five; availability not confirmed. Do not substitute continuous-rotation FS90R |
| Protected 1S 4.2 V-charge battery, 300–500 mAh preferred | 2 | 6 | **No qualified exact SKU**; [EEMB battery manufacturer](https://www.eemb.com/) inquiry candidate only; require documented pulse rating, PCM, NTC and keyed preterminated lead |
| Factory USB-C-to-XH2 5 V input assembly | 2 | 6 | Custom harness/PCB assembly quotation; include CC1/CC2 Rd and polarity test; no second charger |
| Factory XH3-to-JR servo adapter | 2 | 6 | Harness assembler, one per motor; no user cutting or crimping |
| Dual Hall sensor assembly with PH4 lead | 1 | Number of wall toggles | [TI DRV5032](https://www.ti.com/product/DRV5032), DU variant candidate, two sensors and local bypass per wall attachment; exact board and magnet geometry pending |
| Small captive magnet + lever clip | 1 | Number of wall toggles | Dimensions/retention not selected until Hall fixture trial; no loose-magnet final assembly |
| Optical sensor potted lead with PH2 plug | 1 | Number of tube lights | [Vishay TEPT4400](https://www.vishay.com/en/product/81341/), factory termination required; sensor is a bare part if purchased alone |
| Shared USB-powered XIAO ESP32C3 hub | 1 | 1 | [Verified Amazon product page](https://www.amazon.com/dp/B0DRNSV5CS), title “Seeed Studio XIAO ESP32C3 (Pre-Soldered)”; price/seller/stock not verified. [Manufacturer](https://wiki.seeedstudio.com/XIAO_ESP32C3_Getting_Started/) |
| Low-voltage USB cables | 3 | 7 | Lengths depend on installation; [Anker manufacturer cable](https://www.anker.com/products/a88e2-anker-prime-usb-c-cable-3-ft-240w-upcycled-braided?variant=43931966570646), candidate premium cable, cheaper qualified cable acceptable |
| Appropriately rated USB 5 V supplies | Up to 3 | Up to 7 | Existing suitable supplies may be reused; shared multiport unit only after total-load and installation check. No exact supply chosen |
| Printed wall bracket, carriage, arm, sensor/magnet mounts | 1 set | Number of wall toggles | CAD parts provided except final sensor/magnet mounts (need field geometry) |
| Printed inline cradle, open bridge, servo angle, finger | 1 set | Number of tube lights | CAD provided; dimensions provisional |
| Printed electronics tray + lid | 2 sets | 6 sets | Board enclosure study; battery space/antenna exclusion need revision after pack selection |
| Printed optical hood | 1 | Number of tube lights | CAD provided; opaque material, nonconductive attachment away from hot tube surface |
| Small silicone/foam contact pads, cable clips | 1 small pack | As installed | Thickness and adhesive selected after surface/temperature check; nothing clamps or damages the mains cord |
| PETG filament | Prototype allowance 150 g | Recalculate after fit | Slicer estimate not yet available; material allowance is not measured print mass |

## Fasteners to include in assembler's mechanical kit

| Location | Initial size candidate | Quantity per applicable unit | Status |
|---|---|---:|---|
| Wall faceplate attachment | Match actual installed screw/thread, retain sufficient engagement after added bracket | 2 wall | **Measure first**; 5 mm head does not identify thread; no guessed replacement screws |
| Wall carriage to rail | M3 bolts, washers, nuts; length about 30 mm after final stack | 2 wall | Slotted mount; verify clearance and nut access |
| Servo ears to printed mount | M2 bolts/nuts, approx 8 mm | 2 each | Confirm FS90 ear diameter/pitch and supplied hardware |
| Printed arm to supplied horn | Small screws matching horn holes | 2 each | Do not print a guessed servo spline; servo retains vendor shaft screw |
| Inline bridge to cradle pillars | M3 bolts, nuts and washers, about 40 mm | 2 inline | Assumed 18 mm body depth; recalculate if depth changes |
| Inline angle to bridge | M3 bolts/nuts/washers, approx 10 mm | 2 inline | Hole coordinates shared in CAD; verify screw access |
| Pod lid/base | M2 bolts/nuts, about 35 mm | 4 each | Preliminary tray fastening; PCB retention and clearance still need detailed assembly review |

The Amazon standoff URL B012G6E62I resolved to an M2 brass variation rather than the presumed M3 nylon kit, so it is intentionally **not recommended**. The FS90 Amazon link B07ZD4BKXM could not be verified, so use the manufacturer/distributor link instead. An Amazon link is included only where product identity was actually retrieved.

## PCB components and assembly requirements

See `electronics/component-bom.csv` for all 45 main-board references. Active candidates: BQ25185DLHR, TPS63031DSKR, TPS61023DRLR, ESP32-C3-WROOM-02-N4, 2N7002. Passives have specified values but several exact orderable MPNs are not assigned; capacitor DC-bias curves, inductor current rating/DCR and pad dimensions must be checked first. This prevents falsely presenting an order-ready BOM.

[Assembler capabilities](https://jlcpcb.com/capabilities/pcb-assembly-capabilities) include mixed SMT/through-hole assembly, but a PCB soldering service does not automatically provide custom battery packs, cable manufacture, firmware, mechanical assembly or a functional test. Obtain written inclusion of every connector, module, sensor lead, dongle, programming and functional test. User's only final operations should be mounting screws, connecting keyed plugs and calibration.

## Cost honesty

The $150–$200 target remains **unverified**. Six servos alone at the displayed five-unit price total $47.40, before batteries, PCBA, cables, sensors, fasteners or hub. A planning allowance of $25–$60 per assembled node PCB (not a quotation), $10–$25 per battery/harness set and $8–$20 per node for sensors/mechanics would already put six nodes plus hub roughly in the **$300–$700** range, excluding shipping/tax/tools/printer. This range is deliberately a sensitivity estimate, not sourced pricing. Low-volume setup fees or custom harness minimum quantities could exceed it. Quote two complete prototypes before promising the scaled cost.
