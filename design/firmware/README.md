# Control implementation status

`control.py` is an executable behavior reference, with 15 tests in `test_control.py`. It is **not firmware for flashing the ESP32**. Run `python3 -m unittest discover -s outputs/firmware -v` from the project root.

It implements desired-state decisions, command deduplication within a process, a default 720-second local fan deadline, manual transitions, early-off cancellation, startup-on timing uncertainty, a verification timeout, a latched jam/feedback fault, low-battery rejection and Hall/optical state decoding. No blind automatic retry follows a failed tube press. Reset policy: if boot finds the fan on with no recoverable elapsed time, report timing uncertain and start a new duration. This may allow extra runtime and is not a fail-safe.

The reference expects fresh debounced sensor readings and monotonic time. Its command-ID set is unbounded and volatile for clarity, so a device port must replace it with a bounded, persistent replay window/session design. Optical decoding implements an unknown band; a temporal filter and hysteresis still belong in the sensor driver. None of these host tests demonstrate a physical motor, radio link, battery or sensor working.

## Device integration still required

- ESP-IDF project, board pin definitions from the schematic, watchdog, brownout handling and hardware driver tests.
- Calibrated servo limits; PWM inversion; rail sequencing; bounded motion under 1 s as an initial test limit; park/retract; rail off; settle and independent verification. Stop and report at timeout, never infer success from servo angle.
- Hall edge wake/poll and optical ADC filtering; stale feedback yields unknown. A quick off/on occurring within a sampling interval may be missed and needs bench validation.
- NVS timer/command records with reset-safe semantics; RTC/time recovery policy; measured battery warning and ON inhibition thresholds.
- ESP-NOW authenticated encrypted unicast pairing, unique per-device keys, sequence IDs, acknowledgements, expiry and replay protection. No broadcast command actuation. Hub/node channel coordination while hub uses Wi-Fi. ESP-NOW still uses the Wi-Fi radio.
- Five-second initial polling target, measured wake energy, local timer independent of hub; schedules disabled when valid wall-clock time is lost.
- Local hub web service and phone interface with pending/confirmed/failed, last seen, battery warning, adjustable timers, schedules and in-app reminders. There is **no live phone app or background notification integration in this package**.

Radio API reference: [Espressif ESP-NOW](https://docs.espressif.com/projects/esp-idf/en/stable/esp32c3/api-reference/network/esp_now.html).
