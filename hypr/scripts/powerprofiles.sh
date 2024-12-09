#!/bin/bash
current_state=$(powerprofilesctl get 2>/dev/null)
if [ $? -ne 0 ]; then
  notify-send "Power profile" "Failed to get power profile"
  exit 1
fi
# Check the state and toggle
if [ "$current_state" == "balanced" ]; then
  powerprofilesctl set performance
  if [ $? -eq 0 ]; then
    notify-send -u normal "Power profile" "Switched to performance"
  else
    notify-send -u critical "Power profile" "Failed to switch to performance"
  fi
elif [ "$current_state" == "performance" ]; then
  powerprofilesctl set balanced
  if [ $? -eq 0 ]; then
    notify-send -u normal "Power profile" "Switched to balanced"
  else
    notify-send -u critical "Power profile" "Failed to switch to balanced"
  fi
else
  notify-send "Power profile" "Unknown state: $current_state"
fi
