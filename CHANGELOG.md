# Changelog

## [1.1.2] - 2026-01-27

### Added
- Light sensor support (proximity, white, ambient) via /codecell/1/light
- IP address announcement (sent every 10 seconds for auto-discovery)
- Uptime reporting feature (/codecell/1/elapsed in seconds)
- WiFi modem sleep disabled (WiFi.setSleep(false)) for improved I2C stability
- delay(1) in main loop to yield to WiFi stack

### Changed
- All features (QUAT, ACCEL, BATTERY, BUTTONS, LIGHTS, PING, UPTIME, IP) now have dedicated readXXX() functions
- Separated read logic (in readSensors()) from send logic (in sendOSC())
- Battery monitoring simplified to voltage (smoothed) + power state only
- Removed unreliable battery level percentage (fuel gauge 0-102 values)
- Removed battery runtime calculation (moved to Max/MSP receiver)
- Renamed connectWiFi() to initWiFi() for consistency with initSensors()
- WiFi/UDP initialization now unconditional (not wrapped in #ifdef OSC)
- All features follow consistent #define + readXXX() pattern
- Initialized identity quaternion (1,0,0,0) to ensure valid dot product from first frame
- Separated references for sign continuity (every frame) vs change detection (on transmission)

### Fixed
- Battery voltage smoothing with exponential moving average eliminates noise
- Loop structure cleaned up with proper spacing and indentation
- All #ifdef wrappers consistent across features

## [1.1.1] - 2025-10-19

### Added
- Ping/heartbeat functionality for device activity monitoring
- WiFi.setSleep(false) configuration to disable modem sleep

### Changed
- Removed separate sender timing - now sends immediately after each sensor read
- Reordered initialization: WiFi connects before sensor initialization

## [1.1.0] - 2025-10-18

Initial public release.

### Features
- Real-time sensor streaming from CodeCell (ESP32-C3 + BNO085 IMU)
- Quaternion streaming with sign continuity (no orientation flips)
- Linear acceleration data (gravity-compensated)
- Battery monitoring with runtime estimation
- Button input support (2x GPIO buttons)
- OSC over WiFi protocol
- Change-based transmission for efficient bandwidth usage
- Decoupled sensor/network timing architecture
- I2C timeout protection mechanism
- 50Hz real-time performance (20ms cycle time)
- Configurable rates (sensor and transmission independent)
