# codecell-main

Firmware for CodeCell (ESP32-C3 / C6) using the official [CodeCell library](https://github.com/microbotsio/CodeCell).
Streams sensor data to Max/MSP (or any OSC receiver) over WiFi.

## Dependencies

Install via Sketch → Include Library → Manage Libraries:

| Library | Author |
|---------|--------|
| CodeCell | Microbots |
| OSC | Adrian Freed / Yotam Mann |

## Setup

1. Copy `../secrets.template.h` to `secrets.h` in this folder
2. Fill in your credentials:
   ```cpp
   #define SECRET_SSID     "your-network"
   #define SECRET_PASSWORD "your-password"
   #define SECRET_IP       "192.168.1.100"  // IP of OSC receiver
   #define SECRET_OUTPORT  8000             // port receiver listens on
   #define SECRET_INPORT   9000             // port device listens on
   ```
3. Open `codecell-main.ino` in Arduino IDE
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

## Configuration

All feature flags and parameters are at the top of `codecell-main.ino`.

### Feature Flags

Comment out a flag to disable that stream:

```cpp
#define ACCEL    // Linear acceleration (world-frame)
#define BATTERY  // Voltage, level, power state
// #define BUTTON   // GPIO button inputs
#define LIGHT    // Proximity, ambient, white
#define QUAT     // Quaternion rotation
#define PING     // Heartbeat
#define IP       // Device IP
#define UPTIME   // Elapsed time since boot
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
