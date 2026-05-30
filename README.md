# Sleepy MacBook

simple SleepWatcher automation for macOS to reduce battery drain while sleeping.

This setup will automatically:

- Closes selected apps before sleep
- Disables Bluetooth before sleep
- Optionally disables Wi-Fi before sleep
- Restores everything when the Mac wakes up

Designed and tested on Apple Silicon Macs.

---

## Why?

My MacBooks experience unexpected battery drain during sleep due to:

- Chat applications maintaining network connections
- Bluetooth devices
- Background services
- Frequent DarkWake events

This project automates bcs im lazy, using SleepWatcher.

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

## Requirements

Install Homebrew:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Install dependencies:

```bash
brew install sleepwatcher
brew install blueutil
```


## Future Improvements

- Save and restore previous Bluetooth state
- Save and restore previous Wi-Fi state
- App configuration file
- Sleep/Wake logging
- OneDrive support
- VPN auto-disconnect

---

## License

MIT License
