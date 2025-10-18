# CodeCell - Max/MSP Patch

Max/MSP patch for receiving and processing real-time sensor data from CodeCell via OSC.

## Overview

This patch receives quaternion rotation, acceleration, battery status, and button data from the CodeCell firmware at 50Hz over WiFi.

## Requirements

- **Max/MSP 8.0 or later**
- **CodeCell hardware** running CodeCell firmware
- **Same WiFi network** as CodeCell device

## Quick Start

1. **Flash CodeCell** with firmware from `/arduino/codecell/`
2. **Configure network** in `secrets.h` to match your setup
3. **Open patch** `codecell.maxpat` in Max
4. **Set UDP port** to match firmware (default: 8000)
5. **Power on CodeCell** - data should start flowing

## OSC Message Format

### Rotation Data
```
/codecell/1/quat qw qx qy qz
```
- **Type:** 4 floats
- **Range:** -1.0 to 1.0 (normalized quaternion)
- **Rate:** Up to 50Hz (change-based)
- **Usage:** Represents 3D orientation without gimbal lock

### Acceleration Data
```
/codecell/1/accel x y z
```
- **Type:** 3 floats
- **Units:** m/s²
- **Range:** Typically ±20 m/s²
- **Rate:** Up to 50Hz (change-based)
- **Note:** Linear acceleration (gravity removed)

### Battery Status
```
/codecell/1/battery level
/codecell/1/voltage volts
/codecell/1/runtime hh.mm
```
- **level:** 0-100 (percentage)
- **voltage:** Float (volts, e.g., 3.7)
- **runtime:** Float (hours.minutes, e.g., 1.15 = 1h 15min)

### Power State
```
/codecell/1/power state
```
- **0** = Battery
- **1** = USB
- **2** = Init
- **3** = Low Battery
- **4** = Charged
- **5** = Charging

### Button Inputs
```
/codecell/1/button/1 state
/codecell/1/button/2 state
```
- **Type:** Integer 0 or 1
- **state:** 0 = Released, 1 = Pressed

## Patch Structure

The included `codecell.maxpat` demonstrates:

- **UDP receiving** on port 8000
- **OSC message parsing** with `route` objects
- **Data unpacking** for each sensor type
- **Basic visualization** (optional)

### Typical Max Workflow

```
[udpreceive 8000]
    |
[prepend set]
    |
[OSC-route /codecell/1/quat /codecell/1/accel /codecell/1/battery]
    |         |           |
  [quat]   [accel]   [battery]
    |         |           |
[unpack 0. 0. 0. 0.]  [unpack 0. 0. 0.]  [unpack 0]
```

## Converting Quaternions to Euler Angles

If you need roll/pitch/yaw for audio/visual control:

```
[quat.toeuler] (from CNMAT externals)
    |
[unpack 0. 0. 0.]  (roll pitch yaw in radians)
```

Or use Jitter's `jit.gl.model` which accepts quaternions directly:
```
[jit.gl.model @quat $1 $2 $3 $4]
```

## Common Use Cases

### 1. Audio Parameter Mapping
```
[scale -1. 1. 0. 127]  // Map quaternion component to MIDI
    |
[live.numbox]
```

### 2. 3D Visualization (Jitter)
```
[jit.gl.model]
[quat $1 $2 $3 $4]  // Direct quaternion rotation
```

### 3. Gesture Recognition
```
[zl.stream]  // Collect quaternion history
    |
[analysis]   // Pattern matching/ML
```

### 4. Button Triggers
```
[change]     // Detect state changes
    |
[sel 1]      // Trigger on press
    |
[bang]       // Fire event
```

## Troubleshooting

### No Data Received
1. Check CodeCell is powered on (LED blinking)
2. Verify WiFi connection (same network)
3. Confirm UDP port matches (default 8000)
4. Check firewall isn't blocking UDP
5. Try `dsp on` if using audio-rate processing

### Choppy/Delayed Data
- **Cause:** Network congestion or WiFi interference
- **Solution:** Move closer to router, reduce other WiFi traffic
- **Note:** Firmware has change-based transmission to optimize bandwidth

### Quaternion Values Don't Make Sense
- **Remember:** Quaternions are not intuitive to read directly
- **Solution:** Convert to Euler angles or use for direct 3D rotation
- **q and -q:** Represent the same orientation (firmware handles continuity)

### Battery Draining Fast
- **Expected:** ~1 hour runtime at 50Hz with 150mAh battery
- **Solutions:**
  - Reduce `SENDER_RATE_HZ` in firmware (e.g., 25Hz)
  - Use larger battery
  - Increase change thresholds to reduce transmission frequency

## Performance Notes

- **Latency:** Typically 10-30ms WiFi latency
- **Update Rate:** Up to 50Hz (change-based, actual rate varies)
- **CPU Usage:** Minimal in Max (OSC parsing is efficient)
- **Network Traffic:** ~2-5 KB/s depending on motion

## Advanced Tips

### Multiple CodeCell Devices
```
[OSC-route /codecell/1 /codecell/2 /codecell/3]
    |            |            |
  [device1]   [device2]   [device3]
```
Change `DEVICE_INDEX` in firmware for each device.

### Recording Data
```
[seq]  // Max sequencer for recording/playback
```

### OSC to MIDI
```
[scale -1. 1. 0 127]
    |
[makenote 60 500]
    |
[noteout]
```

### Integration with Ableton Live
Use Max for Live device with `udpreceive` inside Live set.

## Example Patches

The included `codecell.maxpat` provides a basic template. Customize it for your needs:

- Add your own mapping logic
- Integrate with Jitter for visuals
- Connect to audio parameters
- Build gesture recognition
- Create interactive installations

## Resources

- **OSC Specification:** http://opensoundcontrol.org/
- **Max/MSP Documentation:** https://docs.cycling74.com/
- **CNMAT Externals:** https://github.com/CNMAT/CNMAT-Externs
- **Firmware Source:** `/arduino/codecell/`

## License

MIT License - Francesco Di Maggio

## Support

For issues with:
- **Firmware:** See main [README.md](../README.md)
- **Max patch:** Open issues on GitHub
- **Hardware:** https://www.microbots.io/
