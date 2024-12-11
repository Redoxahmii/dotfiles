#!/bin/bash

if [ "$1" == "show" ]; then
  pkill -SIGUSR2 waybar # Show Waybar
elif [ "$1" == "hide" ]; then
  pkill -SIGUSR1 waybar # Hide Waybar
fi
