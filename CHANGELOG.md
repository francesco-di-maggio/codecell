# Changelog

## [1.1.2] - 2025-10-20

### Changed
- Initialized identity quaternion (1,0,0,0) to ensure valid dot product from first frame
- Separated references for sign continuity (every frame) vs change detection (on transmission)

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
