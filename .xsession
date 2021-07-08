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

### Setup mouse acceleration
MOUSE_ID="$(xinput --list | awk '/Mouse/ {print substr($6,4)}')"
TRANSFORM_MATRIX_ID="$(xinput --list-props $MOUSE_ID | awk '/Matrix/ {print substr($4, 2, 3)}')"

# This is a 2D transformation matrix
xinput --set-prop "$MOUSE_ID" "$TRANSFORM_MATRIX_ID" \
	2  0  0 \
	0 1.5 0 \
	0  0  1
startdwm 2>> /tmp/dwm-errors
