# Current implementation plan

The controlling scope is [design-basis.md](design-basis.md), updated November 15, 2026.

1. Tube light: verify power-return behavior and electrical fit; use the linked Amazon Smart Plug through Alexa. No inline actuator or custom tube node.
2. Fan: finish one wall-toggle servo attachment, independent sensing, local adjustable 12-minute timer and no-user-soldering electronics. Retain the proposed fan hub; Alexa integration is not assumed.
3. Print only the wall fit coupon and fan parts after fit review. Existing inline STL/STEP files are historical and excluded.
4. Rework the fan PCB to remove tube-only features, verify footprints, route, run ERC/DRC and review before fabrication. Finish and compile real firmware and run physical acceptance tests.
5. Requote one fan node plus hub and one smart plug, including Printing Legion print/shipping costs. No old $150–$200 or scaled estimate is a current quote.
6. Temperature sensor stays optional and outside the required first-build BOM. No occupancy or temperature automation added.

Documentation updated only. The CAD, circuit and firmware artifacts have not been regenerated or validated for this new scope. No physical tests or orders occurred.
