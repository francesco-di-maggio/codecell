# Codecell - Arduino Firmware

Firmware for CodeCell (ESP32-C3 / C6) using the Adafruit BNO085 library.
Streams sensor data to Max/MSP (or any OSC receiver) over WiFi.

## Prerequisites

### Arduino IDE
Version 2.0 or later — https://www.arduino.cc/en/software

### ESP32 Arduino Core (version 3.x)
1. Open Arduino IDE → File → Preferences
2. Add to "Additional Board Manager URLs":
   ```
   https://espressif.github.io/arduino-esp32/package_esp32_index.json
   ```
3. Tools → Board → Boards Manager → search "esp32" → install "esp32 by Espressif Systems" (3.x)

### Libraries
Install via Sketch → Include Library → Manage Libraries:

| Library | Author |
|---------|--------|
| Adafruit BNO08x | Adafruit |
| OSC | Adrian Freed / Yotam Mann |

## Setup

1. Copy `src/secrets.template.h` to `src/secrets.h`
2. Edit `secrets.h`:
   ```cpp
   #define SECRET_SSID     "your-network"
   #define SECRET_PASSWORD "your-password"
   #define SECRET_IP       "192.168.1.100"  // IP of OSC receiver
   #define SECRET_OUTPORT  8000             // port receiver listens on
   #define SECRET_INPORT   9000             // port device listens on
   ```
3. Open `codecell/codecell.ino` in Arduino IDE
4. Select board settings (see below)
5. Upload

### Board Settings (Tools menu)

| Setting | Value |
|---------|-------|
| Board | ESP32C3 Dev Module |
| USB CDC On Boot | Enabled |
| CPU Frequency | 160 MHz |
| Flash Mode | QIO |
| Flash Size | 4MB |
| Partition Scheme | Minimal SPIFFS (1.9MB APP with OTA/190KB SPIFFS) |
| Core Debug Level | None |

### Upload Steps
1. Connect via USB-C
2. Tools → Port → select CodeCell port
3. Upload (Ctrl+U / Cmd+U)
4. Open Serial Monitor at 115200 baud to confirm

## Structure

```
codecell/
├── codecell.ino       # Entry point: setup() and loop() only
├── secrets.h          # WiFi credentials (gitignored)
└── src/
    ├── config.h        # Feature flags, hardware pins, and all tunable constants
    ├── hardware.h/cpp  # Board-level power rail and GPIO initialisation
    ├── battery.h/cpp   # LiPo voltage monitoring, power state machine
    ├── button.h/cpp    # GPIO button input with change detection
    ├── imu.h/cpp       # BNO085 quaternion and linear acceleration
    ├── led.h/cpp       # NeoPixel control (automatic battery status + manual OSC)
    ├── light.h/cpp     # VCNL4040 proximity and ambient light
    ├── osc.h/cpp       # OSC bundle send/receive over UDP
    ├── sensors.h/cpp   # Sensor coordinator: init and per-rate polling
    ├── stream.h/cpp    # OSC bundle builder and sender
    └── wifi.h/cpp      # WiFi station mode with automatic reconnection
```

## Configuration

All feature flags and constants are in `src/config.h`.

### Feature Flags

Comment out any flag to disable that module (excluded at compile time):

```cpp
#define QUAT        // Quaternion rotation
#define ACCEL       // Linear acceleration
#define BATTERY     // Battery monitoring
#define LIGHT       // VCNL4040 light sensor
#define BUTTON      // GPIO button inputs
#define PING        // 1 Hz heartbeat
#define IP          // IP address announcement
#define UPTIME      // Uptime in seconds
```

### Adding a Button

In `src/config.h`, append the GPIO pin:
```cpp
#define BUTTON_PINS {5, 6, 7}
```
No other file needs to change.

### Network Notes
- Device and receiver must be on the same WiFi network
- ESP32-C3/C6 supports 2.4GHz only (not 5GHz)
- `secrets.h` is gitignored — safe to store credentials there

### Finding Your IP (receiver machine)

macOS: `ifconfig | grep "inet " | grep -v 127.0.0.1`
Windows: `ipconfig` → IPv4 Address under WiFi adapter
Linux: `ip addr show`

## OSC Reference

All addresses: `/codecell/{DEVICE_INDEX}/{sensor}` — `DEVICE_INDEX` defaults to `1`.

### Outgoing (device → receiver)

| Address | Arguments | Type | Rate |
|---------|-----------|------|------|
| `/codecell/1/quat` | w x y z | float | on change |
| `/codecell/1/accel` | x y z | float (m/s²) | on change |
| `/codecell/1/battery` | voltage(mV) percentage powerState | int | on change |
| `/codecell/1/light` | proximity ambient white | int | on change |
| `/codecell/1/button/1` … `/button/N` | state (0 or 1) | int | on change |
| `/codecell/1/ping` | 1 | int | 1 Hz |
| `/codecell/1/ip` | IP address | string | every 10 s |
| `/codecell/1/uptime` | seconds | int | 1 Hz |

#### Battery values

| percentage | Meaning |
|------------|---------|
| 0–100 | Battery level |
| 101 | Charging |
| 102 | USB powered (no battery) |

| powerState | Meaning |
|------------|---------|
| 0 | Running on battery |
| 1 | USB powered |
| 2 | Boot / not yet determined |
| 3 | Battery low (will sleep) |
| 4 | Fully charged |
| 5 | Charging |

### Incoming (receiver → device)

Sent point-to-point to device IP — no namespace prefix needed.

| Address | Arguments | Effect |
|---------|-----------|--------|
| `/reboot` | — | Restarts the device |
| `/led` | `0` | LED off |
| `/led` | `1` | LED back to automatic battery status |
| `/led` | `r g b` | Manual RGB (0–255 each) |
| `/led` | `r g b brightness` | Manual RGB + brightness (0–10) |

## Max/MSP

```
[udpreceive 8000] → [route /codecell/1/quat /codecell/1/accel]
```

Full patch: [`max/codecell.maxpat`](../max/codecell.maxpat)

## Hardware

| Component | Notes |
|-----------|-------|
| ESP32-C3 or C6 | C6 uses GPIO 19/20/18 for LED/LED power/sensor power |
| BNO085 IMU | I2C: SDA=8, SCL=9 |
| VCNL4040 | I2C: 0x60, shared bus with BNO085 |
| NeoPixel | GPIO 10 (C3) / GPIO 19 (C6) |
| Battery ADC | GPIO 4, resistor-divided ÷2, +65 mV offset |
| USB detect | GPIO 0 (LOW = charging) |
| Buttons | GPIO 5, 6 (INPUT_PULLUP, active-low) |

## Troubleshooting

### Upload failed
- Use a data-capable USB-C cable (not charge-only)
- Try a different USB port
- Hold BOOT button during upload
- Set "Erase All Flash" to Enabled once, then disable

### Port not found
- Check Device Manager / System Info to confirm device is detected
- Try a different cable

### WiFi connection failed
- Verify SSID and password in `secrets.h`
- Confirm router has 2.4GHz enabled
- Move closer to router during initial testing

### I2C error at boot
```
E (2717) i2c.master: I2C transaction unexpected nack detected
```
Normal — BNO085 takes ~2.7s to boot. Appears once, then clears. Safe to ignore.

### Compilation errors

| Error | Fix |
|-------|-----|
| `fatal error: Adafruit_BNO08x.h: No such file or directory` | Install "Adafruit BNO08x" via Library Manager |
| `fatal error: OSCBundle.h: No such file or directory` | Install "OSC" by Adrian Freed via Library Manager |
| `'class WiFiClass' has no member named 'setHostname'` | Update ESP32 core to 3.x |
| `fatal error: secrets.h: No such file or directory` | Copy `src/secrets.template.h` to `src/secrets.h` |

## Version

v1.2.3
