# codecell

Firmware for CodeCell (ESP32-C3 / C6) using the Adafruit BNO085 library.
Streams sensor data to Max/MSP (or any OSC receiver) over WiFi.

## Structure

```
codecell/
├── codecell.ino       # Entry point: setup() and loop() only
├── secrets.h          # WiFi credentials (gitignored — copy from secrets.template.h)
└── src/
    ├── config.h       # Feature flags, hardware pins, and all tunable constants
    ├── main.h/cpp     # Initialization sequence and main loop
    ├── battery.h/cpp  # LiPo voltage monitoring, power state machine
    ├── button.h/cpp   # GPIO button input with change detection
    ├── imu.h/cpp      # BNO085 quaternion, Euler angles, linear acceleration
    ├── led.h/cpp      # NeoPixel control (automatic battery status + manual OSC)
    ├── light.h/cpp    # VCNL4040 proximity and ambient light
    ├── osc.h/cpp      # OSC bundle send/receive over UDP
    └── wifi.h/cpp     # WiFi station mode with automatic reconnection
```

## Configuration

All feature flags and constants are in `src/config.h`.

### Feature Flags

Comment out any flag to disable that module entirely (code is excluded at compile time):

```cpp
#define QUAT        // Quaternion rotation
#define EULER       // Euler angles (roll, pitch, yaw)
#define ACCEL       // Linear acceleration
#define BATTERY     // Battery monitoring
#define LED         // NeoPixel status LED
#define LIGHT       // VCNL4040 light sensor
// #define BUTTON   // GPIO button inputs
#define PING        // 1 Hz heartbeat
#define IP          // IP address announcement
#define UPTIME      // Uptime in seconds
```

### Network

Edit `secrets.h` with your network details:

```cpp
#define SECRET_SSID     "your-network"
#define SECRET_PASSWORD "your-password"
#define SECRET_IP       "192.168.1.100"  // OSC host IP (receiver)
#define SECRET_OUTPORT  9000             // Port host listens on (device sends here)
#define SECRET_INPORT   8000             // Port device listens on (host sends here)
```

### Adding a Button

In `src/config.h`, add the GPIO pin to `BUTTON_PINS`:

```cpp
#define BUTTON_PINS {5, 6, 7}  // Add more pins here
```

Also enable the `BUTTON` feature flag. No other file needs to change.

## OSC Reference

All addresses follow the pattern `/codecell/{DEVICE_INDEX}/{sensor}`.
`DEVICE_INDEX` defaults to `1` (set in `config.h`).

### Outgoing (device → Max/MSP)

| Address | Arguments | Type | Rate |
|---------|-----------|------|------|
| `/codecell/1/quat` | w x y z | float | on change |
| `/codecell/1/euler` | roll pitch yaw | float (degrees) | on change |
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

### Incoming (Max/MSP → device)

Sent point-to-point to the device IP — no namespace prefix needed.

| Address | Arguments | Effect |
|---------|-----------|--------|
| `/reboot` | — | Restarts the device |
| `/led` | `0` | LED off |
| `/led` | `1` | LED back to automatic battery status |
| `/led` | `r g b` | Manual RGB (0–255 each) |
| `/led` | `r g b brightness` | Manual RGB + brightness (0–10) |

## Max/MSP

```
[udpreceive 8000] → [route /codecell/1/quat /codecell/1/euler /codecell/1/accel]
```

Full patch: [`max/codecell.maxpat`](../../max/codecell.maxpat)

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

## Version

v1.2.1
