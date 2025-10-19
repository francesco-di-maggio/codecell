# CodeCell

Real-time sensor streaming from CodeCell (ESP32-C3 + BNO085).

## Contents

- [Arduino Firmware](arduino/) - ESP32-C3 firmware for streaming sensor data
- [Max/MSP Patches](max/) - Patches for receiving and processing data

## Quick Start

1. Clone repository:
   ```bash
   git clone https://github.com/francesco-di-maggio/codecell.git
   cd codecell
   ```

2. Flash firmware: See [arduino/README.md](arduino/README.md)

3. Receive data:
   - Max/MSP: See [max/README.md](max/README.md)
   - Pure Data: `netreceive -u -b 8000` → `oscparse`

## Features

### Firmware
- Quaternion streaming with sign continuity (no orientation flips)
- Adjustable sensor rate in Hz (default: 50Hz)
- Change-based transmission for efficient bandwidth usage
- Battery monitoring with runtime estimation
- Ping/heartbeat functionality for device activity monitoring
- WiFi sleep management configuration
- OSC over WiFi protocol (MIDI, BLE, Serial support planned)

### Hardware
- CodeCell development board (ESP32-C3-based microcontroller)
- Built-in BNO085 9-DOF IMU sensor
- 150mAh LiPo battery (~1 hour runtime @ 50Hz) (Optional)
- 2x GPIO buttons (Optional)

## OSC Data Format

| Stream | OSC Address | Data | Description |
|--------|-------------|------|-------------|
| Rotation | `/quat` | qw, qx, qy, qz | Quaternion (no gimbal lock) |
| Motion | `/accel` | x, y, z | Linear acceleration (m/s²) |
| Battery | `/battery` | level | Percentage (0-100) |
| Power | `/power` | state | USB/Battery/Charging (0-5) |
| Voltage | `/voltage` | volts | Battery voltage |
| Runtime | `/runtime` | hh.mm | Estimated remaining time |
| Button 1 | `/button/1` | state | Pressed (1) or Released (0) |
| Button 2 | `/button/2` | state | Pressed (1) or Released (0) |
| Ping | `/ping` | 1 | Heartbeat/keepalive (1Hz) |

### Current Implementation: OSC over WiFi
- Default Port: UDP 8000
- Protocol: OSC bundles (multiple messages per packet)
- Address Pattern: `/codecell/DEVICE_INDEX/{stream}`
- Rate: 50Hz sensor read, change-based transmission + 1Hz ping heartbeat

## Documentation

- [Arduino Firmware Guide](arduino/README.md) - Setup, configuration, troubleshooting
- [Max/MSP Guide](max/README.md) - Using OSC data in Max
- [Changelog](CHANGELOG.md) - Version history and release notes

## Platform Integration

### Max/MSP (OSC)
```
[udpreceive 8000] → [route /codecell/1/quat /codecell/1/accel]
```
Full patch included in [`max/codecell.maxpat`](max/codecell.maxpat)

### Pure Data (OSC)
```
[netreceive -u -b 8000] → [oscparse] → [route /codecell/1/quat]
```

## Repository Structure

```
codecell/
├── arduino/
│   ├── README.md                    # Firmware setup guide
│   └── codecell/
│       ├── codecell.ino            # Main firmware
│       ├── secrets.h               # Your WiFi config (gitignored)
│       └── secrets.template.h      # Template for network settings
│
├── max/
│   ├── README.md                    # Max/MSP usage guide
│   └── codecell.maxpat             # Example Max patch
│
├── README.md                        # This file (project overview)
├── CHANGELOG.md                     # Version history
└── LICENSE                          # MIT License
```

## Power Consumption Estimates

| Rate | Current Draw | Runtime (150mAh) |
|------|--------------|------------------|
| 20Hz | 120mA | 1h 15min |
| 25Hz | 125mA | 1h 12min |
| 30Hz | 130mA | 1h 9min |
| 50Hz | 140mA | 1h 4min |
| 100Hz | 150mA | 1h 0min |

## Troubleshooting

### Common Issues
- No data received: Check WiFi connection and IP address in `secrets.h`
- I2C NACK errors: Try disabling WiFi sleep (WiFi.setSleep(false))
- Choppy data: Move closer to WiFi router, reduce interference

Detailed troubleshooting: See [arduino/README.md](arduino/README.md#troubleshooting)

## Version History

See [CHANGELOG.md](CHANGELOG.md) for complete version history.

## License

See [LICENSE](LICENSE) for full license details.