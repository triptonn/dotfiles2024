#!/usr/bin/env bash

# Add this script to your wm startup file.

DIR="$HOME/.config/polybar/hack"

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch the bar
polybar -q top -c "$DIR"/config-middle.ini &
polybar -q bottom -c "$DIR"/config-middle.ini &
polybar -q top -c "$DIR"/config-right.ini &
polybar -q bottom -c "$DIR"/config-right.ini &
polybar -q top -c "$DIR"/config-left.ini &
polybar -q bottom -c "$DIR"/config-left.ini&
