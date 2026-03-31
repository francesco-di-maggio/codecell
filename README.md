# CodeCell

Real-time sensor streaming from CodeCell (ESP32-C3 / C6) to Max/MSP over WiFi and OSC.

## Contents

```
codecell/
├── arduino/
│   ├── codecell-main/     # Firmware using the official CodeCell library
│   ├── codecell-dev/      # Firmware using a custom modular implementation
│   └── secrets.template.h # WiFi and OSC credentials template
├── max/
│   ├── codecell-main.maxpat
│   ├── codecell-dev.maxpat
│   └── js/                # Shared JavaScript objects
├── CHANGELOG.md
├── LICENSE
└── README.md              # This file
```

## Hardware

- [CodeCell C3](https://microbots.io/products/codecell) or [CodeCell C6](https://microbots.io/products/codecell-c6) — BNO085 IMU, VCNL4040 light/proximity sensor
- USB-C cable (data-capable, not charge-only)
- Optional: LiPo battery, GPIO buttons

## Requirements

### Arduino IDE
Version 2.0 or later — https://www.arduino.cc/en/software

### ESP32 Arduino Core (3.x)
1. Arduino IDE → Preferences → Additional Board Manager URLs:
   ```
   https://dl.espressif.com/dl/package_esp32_index.json
   https://espressif.github.io/arduino-esp32/package_esp32_index.json
   ```
2. Tools → Board → Boards Manager → search "esp32" → install "esp32 by Espressif Systems" (3.x)

### Libraries
Install via Sketch → Include Library → Manage Libraries:

| Library | Author | Required by |
|---------|--------|-------------|
| CodeCell | Microbots | codecell-main |
| Adafruit BNO08x | Adafruit | codecell-dev |
| OSC | Adrian Freed / Yotam Mann | both |

## Reference

- [CodeCell Arduino Setup](https://microbots.io/pages/learn-codecell#arduino-setup)

## License

See [LICENSE](LICENSE).
