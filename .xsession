#!/bin/sh

export PATH="$HOME/.local/bin:/usr/local/bin:$PATH"

# Setup a virtual microphone
pactl load-module module-pipe-source \
	source_name=virtmic0 \
	file=/home/hpar/.local/share/virtmic0 \
	format=s16le rate=16000 channels=1 > /dev/null

### Workaround for JAVA applications
# such as Android Studio, PyCharm, ...
export _JAVA_AWT_WM_NONREPARENTING=1

. "$HOME/.config/sh/xdg"
startdwm 2>> /tmp/dwm-errors
