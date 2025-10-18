# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.1.0] - 2025-10-18

### Added
- Decoupled sensor/network timing architecture
- Independent `SENDER_RATE_HZ` configuration parameter
- I2C timeout protection mechanism

### Changed
- Sensor reads now run at precise `SENSOR_RATE_HZ` timing (I2C critical)
- Network transmission runs independently at `SENDER_RATE_HZ` (can lag safely)
- Removed diagnostic logging for cleaner production code

### Fixed
- I2C timeout errors during network delays
- Network congestion no longer affects sensor timing

## [1.0.5] - 2025-10-09

### Added
- Performance monitoring system
- Euler angle boundary wrapping experiments

### Changed
- Explored multiple approaches to Euler angle discontinuities
- Tested various wrapping and unwrapping strategies

### Deprecated
- Euler angle output (abandoned in favor of quaternions)

### Notes
- Quaternions proven superior for 3D orientation tracking
- Euler angles have inherent mathematical singularities

## [1.0.4] - 2025-10-06

### Added
- Quaternion sign continuity using dot product method
- Change-based transmission system
- Battery runtime estimation
- Euclidean distance threshold for quaternion changes
- Component-wise threshold for acceleration
- OSC bundle protocol for grouped messages

### Changed
- Only transmit when sensor values exceed thresholds
- Improved power efficiency through reduced transmission

### Fixed
- Quaternion sign flips at antipodal points
- Orientation discontinuities during continuous rotation

## Previous Versions

Earlier versions not formally tracked. See git history for details.

---

## Version History Summary

| Version | Date | Key Feature |
|---------|------|-------------|
| 1.1.0 | 2025-10-18 | I2C timeout protection |
| 1.0.5 | 2025-10-09 | Euler experiments (deprecated) |
| 1.0.4 | 2025-10-06 | Quaternion sign continuity |

## Technical Notes

### v1.1.0 Architecture Change

The decoupled timing architecture prevents a critical issue where WiFi delays (10-20ms) would block the main loop, causing the BNO085 sensor to miss its expected I2C read window. This resulted in I2C NACK/timeout errors and potential system freezes.

**Solution:**
```cpp
// Sensor reads - precise timing (I2C critical)
if (myCodeCell.Run(SENSOR_RATE_HZ)) {
  readSensors();
}

// Network sends - independent timing (can lag)
if (now - last_send >= (1000 / SENDER_RATE_HZ)) {
  sendSensors();
}
```

This ensures sensor I2C communication maintains precise 20ms intervals regardless of network conditions.

### v1.0.4 Quaternion Continuity

Quaternions q and -q represent identical orientations. The sensor can output either, causing sudden value jumps. The dot product method detects sign flips and corrects them:

```cpp
float dot = qw*qw_ref + qx*qx_ref + qy*qy_ref + qz*qz_ref;
if (dot < 0.0f) {
  qw = -qw; qx = -qx; qy = -qy; qz = -qz;
}
```

This provides smooth continuous rotation data without discontinuities.
