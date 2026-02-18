# CodeCell

Real-time sensor streaming from CodeCell (ESP32-C3 / C6 + BNO085) to Max/MSP over WiFi/OSC.

## Contents

```
codecell/
├── arduino/
│   └── codecell/          # Firmware (Adafruit BNO085, modular src/)
├── max/
│   └── codecell.maxpat    # Max/MSP patch
├── CHANGELOG.md
└── LICENSE
```

## Quick Start

1. Install libraries: `Adafruit BNO08x`, `CNMAT OSC`
2. Copy `arduino/secrets.template.h` → `arduino/codecell/secrets.h` and fill in your network details
3. Open `arduino/codecell/codecell.ino` and flash to your device
4. Open `max/codecell.maxpat` in Max/MSP

See [arduino/codecell/README.md](arduino/codecell/README.md) for full configuration reference.

## OSC Data Format

All addresses: `/codecell/{DEVICE_INDEX}/{sensor}` (default index: 1)

| Address | Data | Type | Rate |
|---------|------|------|------|
| `/codecell/1/quat` | w x y z | float | on change |
| `/codecell/1/euler` | roll pitch yaw | float (degrees) | on change |
| `/codecell/1/accel` | x y z | float (m/s²) | on change |
| `/codecell/1/battery` | voltage(mV) percentage powerState | int | on change |
| `/codecell/1/light` | proximity ambient white | int | on change |
| `/codecell/1/button/N` | state 0 or 1 | int | on change |
| `/codecell/1/ping` | 1 | int | 1 Hz |
| `/codecell/1/ip` | IP address | string | every 10 s |
| `/codecell/1/uptime` | seconds | int | 1 Hz |

## Hardware

- CodeCell board (ESP32-C3 or C6)
- Built-in BNO085 9-DOF IMU
- Optional: VCNL4040 light/proximity sensor, LiPo battery, GPIO buttons

## Documentation

- [Firmware reference](arduino/codecell/README.md) — configuration, OSC reference, hardware pinout
- [Changelog](CHANGELOG.md) — version history

## License

See [LICENSE](LICENSE).
