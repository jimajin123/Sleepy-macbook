# Sleepy MacBook

simple SleepWatcher automation for macOS to reduce battery drain while sleeping.

This setup will automatically:

- Closes selected apps before sleep
- Disables Bluetooth before sleep
- Optionally disables Wi-Fi before sleep
- Restores everything when the Mac wakes up



---

This is my first project, funny this happened bcs im lazy and my macbook is not helping.

---

## Features

### Sleep Actions

- Quit Beeper Desktop
- Quit Messages
- Quit FaceTime
- Disable Bluetooth
- Disable Wi-Fi (optional)

### Wake Actions

- Re-enable Bluetooth
- Re-enable Wi-Fi
- Reopen selected applications

---

## What to Install?

**Homebrew**

Duh

Also these:

```bash
brew install sleepwatcher
brew install blueutil
```


## Future Improvements

For my lazy ahh:

- Save and restore previous Bluetooth state
- Save and restore previous Wi-Fi state
- App configuration file
- Sleep/Wake logging
- OneDrive support
- VPN auto-disconnect



