#!/bin/bash
polybar-msg cmd quit
if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload nord &
  done
else
  polybar --reload nord &
fi
