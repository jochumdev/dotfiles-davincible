#!/usr/bin/env bash
sleep 1
# Terminate already running bar instances
# killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
#polybar black >>/tmp/polybar1.log 2>&1 & disown
polybar -r example >>/tmp/polybar1.log 2>&1 & disown
echo "Bars launched..."
