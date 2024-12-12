#!/bin/bash

# Script to toggle Waybar visibility using SIGUSR1 and SIGUSR2

# Find the PID of Waybar (take the first result if multiple)
WAYBAR_PID=$(pgrep -o waybar)

if [ -z "$WAYBAR_PID" ]; then
  echo "Waybar is not running."
  exit 1
fi

# Get the current state of Waybar (toggle tracking file)
STATE_FILE="/tmp/waybar_toggle_state"
if [ ! -f "$STATE_FILE" ]; then
  # Default state is visible
  echo "visible" >"$STATE_FILE"
fi

CURRENT_STATE=$(cat "$STATE_FILE")

if [ "$CURRENT_STATE" == "visible" ]; then
  # Send SIGUSR1 to disable Waybar
  kill -SIGUSR1 "$WAYBAR_PID"
  echo "hidden" >"$STATE_FILE"
  echo "Waybar hidden."
else
  # Send SIGUSR2 to enable Waybar
  kill -SIGUSR2 "$WAYBAR_PID"
  echo "visible" >"$STATE_FILE"
  echo "Waybar visible."
fi
