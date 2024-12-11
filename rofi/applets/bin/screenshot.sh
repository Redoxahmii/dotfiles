#!/usr/bin/env bash
# Screenshot Script with Hyprshot
## Author  : Aditya Shakya (adi1090x) - Modified for Hyprland
## Github  : @adi1090x

# Configurations
hyprshotDir="$HOME/Pictures/Screenshots"

# Ensure screenshot directory exists

# Import Current Theme
source "$HOME/.config/rofi/applets/shared/theme.bash"
theme="$type/$style"

# Theme Elements
prompt='Screenshot'
mesg="DIR: $hyprshotDir"

if [[ "$theme" == *'type-1'* ]]; then
  list_col='1'
  list_row='3'
  win_width='400px'
elif [[ "$theme" == *'type-3'* ]]; then
  list_col='1'
  list_row='3'
  win_width='120px'
elif [[ "$theme" == *'type-5'* ]]; then
  list_col='1'
  list_row='3'
  win_width='520px'
elif [[ ("$theme" == *'type-2'*) || ("$theme" == *'type-4'*) ]]; then
  list_col='3'
  list_row='1'
  win_width='670px'
fi

# Options
layout=$(cat ${theme} | grep 'USE_ICON' | cut -d'=' -f2)
if [[ "$layout" == 'NO' ]]; then
  option_1=" Capture Window"
  option_2=" Capture Region"
  option_3=" Capture Full Output"
else
  option_1=""
  option_2=""
  option_3=""
fi

# Rofi CMD
rofi_cmd() {
  rofi -theme-str "window {width: $win_width;}" \
    -theme-str "listview {columns: $list_col; lines: $list_row;}" \
    -theme-str 'textbox-prompt-colon {str: "";}' \
    -dmenu \
    -p "$prompt" \
    -mesg "$mesg" \
    -markup-rows \
    -theme ${theme}
}

# Pass variables to rofi dmenu
run_rofi() {
  echo -e "$option_1\n$option_2\n$option_3" | rofi_cmd
}

# Screenshot Functions
shot_window() {
  HYPRSHOT_DIR="$hyprshotDir" hyprshot -m window
}

shot_region() {
  HYPRSHOT_DIR="$hyprshotDir" hyprshot -m region
}

shot_output() {
  HYPRSHOT_DIR="$hyprshotDir" hyprshot -m output
}

# Execute Command
run_cmd() {
  if [[ "$1" == '--opt1' ]]; then
    shot_window
  elif [[ "$1" == '--opt2' ]]; then
    shot_region
  elif [[ "$1" == '--opt3' ]]; then
    shot_output
  fi
}

# Actions
chosen="$(run_rofi)"
case ${chosen} in
$option_1)
  run_cmd --opt1
  ;;
$option_2)
  run_cmd --opt2
  ;;
$option_3)
  run_cmd --opt3
  ;;
esac
