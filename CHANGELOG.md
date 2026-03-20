# Changelog

## [1.2.3] - 2026-03-20

### Removed
- Euler angles: `EULER` flag, `/euler` OSC message, `imuGetEuler()`, `imuEulerChanged()`, `quaternionToEuler()`, `EulerAngles` struct, `EULER_CHANGE_THRESHOLD`

### Fixed
- `SH2_ARVR_STABILIZED_RV` report guard changed from `#if defined(QUAT) || defined(EULER)` to `#ifdef QUAT`
- `imuGetAccel()` and `imuAccelChanged()` missing `#ifdef ACCEL` guards added
- `imuGetQuaternion()` and `imuQuaternionChanged()` missing `#ifdef QUAT` guards added

### Changed
- `arduino/README.md`: updated OSC reference, feature flags, file structure, and compilation error table to reflect current state
- `LED` feature flag removed — NeoPixel is always present on hardware; `ledInit()` called unconditionally in setup; `#ifdef LED` guards removed from `battery.cpp` and `osc.cpp`
- Init failures (`wifiInit`, `sensorsInit`) now call `ledBlinkError()` instead of `while (1) delay(1000)`

---

## [1.2.2] - 2026-03-19

### Fixed
- Button edge detection: replaced single shared `changed` flag with per-button `changed[]` array; added `buttonChanged(index)` and `buttonClearChanged()` to the public API; added boot-state read to prevent false edges on startup
- Redundant `pinMode(LED_PIN)` call removed from `codecellSetup()` — already set inside `ledInit()`
- OSC receive: replaced byte-by-byte `fill()` loop with single buffer `fill(buf, len)` call for both bundle and single message parsing

### Changed
- `arduino/README.md`: merged two separate READMEs into one

---

## [1.2.1] - 2026-02-17

Full rewrite to a modular `src/` architecture using the Adafruit BNO085 library.
This is now the primary firmware on `main`; the CodeCell library sketch is archived on the `dev` branch.

### Added
- `src/` folder structure: each module in its own `.h/.cpp` pair
- `src/config.h` — single file for all feature flags, pins, and tunable constants
- `BUTTON_PINS {5, 6}` macro: button count derived automatically via `sizeof`; add a pin to add a button
- `buttonCount()` public getter for external consumers (e.g. `osc.cpp`)
- File header block comments on all `src/` files (purpose, hardware, conventions)
- `arduino/codecell/README.md` — full OSC reference, configuration guide, hardware pinout
- Root `README.md` updated to reflect single-track structure

### Changed
- Replaced Adafruit library flat sketch with modular `src/` architecture (SRP throughout)
- `batteryGetVoltage()` now returns `int` (millivolts; fractional mV is below ADC resolution)
- `secrets.h` include moved from `main.h` to `main.cpp` (credentials no longer leak into all consumers)
- `<Adafruit_BNO08x.h>` moved from `imu.h` to `imu.cpp` (implementation detail, not public API)
- Feature flag `#ifdef` guards applied consistently to all includes, variables, and timer declarations
- `millis()` captured once per loop tick and passed to all timer comparisons
- OSC timer variables (`lastPing`, `lastIP`, `lastUptime`) wrapped in their respective `#ifdef` guards
- `lightHasChanged()` and `batteryHasChanged()` now update each `prev*` variable independently (previously a change in one sensor suppressed change detection in others)

### Fixed
- Dead code removed: `imuWasReset()` function (removed from `imu.h` in v1.1.2 but implementation remained in `imu.cpp`)
- Unused variable removed: `savedBrightness` in `ledBlinkError()` (function never returns, value was never used)
- `SH2_ARVR_STABILIZED_RV` report now guarded with `#if defined(QUAT) || defined(EULER)` (was enabled unconditionally)

