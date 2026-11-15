# FlipLite Retrofit

A small gadget to flip my bathroom fan switch and turn it off on a timer. The tube light will use an Amazon smart plug instead of another motor.

The first build is one fan gadget and one smart plug. The fan should still be usable by hand. Its adjustable timer starts at 12 minutes and runs on the fan unit even if the hub disconnects.

## Current state

This is an early design. CAD, STEP/STL files, a parts list, draft electronics and control tests are here. The PCB is not routed or ready to manufacture. The A1 firmware is unfinished scaffolding, not working device firmware. Nothing has been built or physically tested.

AI assisted with the CAD, electronics drafts, code and documentation. These files need the builder's review, revisions and physical testing. This repository is not a claim of a completed build or funding eligibility.

## Files

- [Current plan](design/design-basis.md)
- [Implementation tasks](design/implementation-plan.md)
- [Active parts and prints](design/active-build-list.md)
- [Parts and sources](design/parts-and-sourcing.md)
- [Print and test guide](design/assembly-and-test.md)
- [CAD source and STEP/STL files](design/cad)
- [Draft schematic and PCB](design/electronics)
- [Native KiCad import and unfinished firmware](design/A1)
- [Control reference and tests](design/firmware)
- [Validation evidence](design/validation/report.md)

Older files still include the inline tube-light actuator. That approach is retired. Follow the current plan and active build list, not the old two-actuator renders or quantities. The fan PCB still needs a revision to remove unused tube features.

The linked smart plug uses Alexa separately from the custom fan controls. Check that the tube light comes back on after its power is restored before relying on remote ON.

## Checks

The A0 control reference and artifact checks previously passed 21 tests. At repository preparation, 20 passed and one geometry check could not run because the local OCP.OCP CAD library was missing. See [current upload check](design/validation/upload-check.txt). Those checks cover digital geometry and selected logic/interfaces; they do not validate electrical safety or a physical device. See the saved reports for their limits.

```sh
python -m pip install cadquery==2.8.0 trimesh matplotlib pytest
python -m pytest design/validation/test_artifacts.py design/firmware/test_control.py -q
```

The tests resolve the design directory relative to their file location. A1 C++ tests refer to an unfinished implementation and are not part of the passing A0 suite.
