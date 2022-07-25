#!/bin/bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch Polybar, using default config location ~/.config/polybar/config
# polybar -c /home/safinwasi/.config/i3/polybar/config example 2>&1 | tee -a /tmp/polybar.log & disown

polybar -c /home/safinwasi/.config/i3/polybar/config left 2>&1 | tee -a /tmp/polybar.log & disown
polybar -c /home/safinwasi/.config/i3/polybar/config middle 2>&1 | tee -a /tmp/polybar.log & disown
polybar -c /home/safinwasi/.config/i3/polybar/config right 2>&1 | tee -a /tmp/polybar.log & disown


echo "Polybar launched..."
