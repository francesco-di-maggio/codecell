# codecell-dev

Firmware for CodeCell (ESP32-C3 / C6) using a custom modular implementation built on the Adafruit BNO08x library.
Streams sensor data to Max/MSP (or any OSC receiver) over WiFi.

## Dependencies

Install via Sketch → Include Library → Manage Libraries:

| Library | Author |
|---------|--------|
| Adafruit BNO08x | Adafruit |
| OSC | Adrian Freed / Yotam Mann |

## Setup

1. Copy `../secrets.template.h` to `src/secrets.h` in this folder
2. Fill in your credentials:
   ```cpp
   #define SECRET_SSID     "your-network"
   #define SECRET_PASSWORD "your-password"
   #define SECRET_IP       "192.168.1.100"  // IP of OSC receiver
   #define SECRET_OUTPORT  8000             // port receiver listens on
   #define SECRET_INPORT   9000             // port device listens on
   ```
3. Open `codecell-dev.ino` in Arduino IDE
4. Select board and settings (see below)
5. Upload

## Board Settings

### ESP32-C6

| Setting | Value |
|---------|-------|
| Board | ESP32C6 Dev Module |
| USB CDC On Boot | Enabled |
| CPU Frequency | 160 MHz |
| Flash Size | 8MB |
| Partition Scheme | Minimal SPIFFS (1.9MB APP with OTA/190KB SPIFFS) |

### ESP32-C3

| Setting | Value |
|---------|-------|
| Board | ESP32C3 Dev Module |
| USB CDC On Boot | Enabled |
| CPU Frequency | 160 MHz |
| Flash Size | 4MB |
| Partition Scheme | Minimal SPIFFS (1.9MB APP with OTA/190KB SPIFFS) |

## Structure

```
codecell-dev/
├── codecell-dev.ino   # Entry point: setup() and loop() only
├── src/
│   ├── config.h        # Feature flags and all tunable constants
│   ├── hardware.h/cpp  # Power rail and GPIO initialisation
│   ├── battery.h/cpp   # LiPo voltage monitoring, power state machine
│   ├── button.h/cpp    # GPIO button input with change detection
│   ├── imu.h/cpp       # BNO085 quaternion and linear acceleration
│   ├── led.h/cpp       # NeoPixel control
│   ├── light.h/cpp     # VCNL4040 proximity and ambient light
│   ├── osc.h/cpp       # OSC send/receive over UDP
│   ├── sensors.h/cpp   # Sensor coordinator
│   ├── stream.h/cpp    # OSC bundle builder
│   ├── wifi.h/cpp      # WiFi station mode with reconnection
│   └── secrets.h       # WiFi credentials (gitignored)
└── codecell-dev.ino
```

## Configuration

All feature flags and constants are in `src/config.h`.

### Feature Flags

Comment out a flag to disable that module (excluded at compile time):

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

## OSC Reference

All addresses follow the pattern `/codecell/{INDEX}/{stream}` — `INDEX` defaults to `1`.

### Outgoing (device → receiver)

| Address | Arguments | Type | Rate |
|---------|-----------|------|------|
| `/codecell/1/quat` | w x y z | float | on change |
| `/codecell/1/accel` | x y z | float (m/s²) | on change |
| `/codecell/1/battery` | voltage(mV) percentage powerState | int | on change |
| `/codecell/1/light` | proximity ambient white | int | on change |
| `/codecell/1/button/N` | state (0 or 1) | int | on change |
| `/codecell/1/ping` | — | — | 1 Hz |
| `/codecell/1/ip` | IP address | string | every 10 s |
| `/codecell/1/uptime` | seconds | int | 1 Hz |

### Incoming (receiver → device)

| Address | Effect |
|---------|--------|
| `/reboot` | Restarts the device |
| `/led` | `0` — LED off |
| `/led` | `1` — LED automatic (battery status) |
| `/led` | `r g b` — Manual RGB (0–255) |
