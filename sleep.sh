#!/bin/bash

echo "$(date): Sleep triggered" >> ~/sleepy-macbook.log

# Quit apps
osascript -e 'quit app "Beeper Desktop"'
osascript -e 'quit app "Messages"'
osascript -e 'quit app "FaceTime"'

# Disable Bluetooth
/opt/homebrew/bin/blueutil --power 0

# Disable Wi-Fi
/usr/sbin/networksetup -setairportpower en0 off
