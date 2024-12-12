#!/bin/bash

# Lean Setup of Hyprland alongside KDE

yay -Syy --noconfirm
yay -S hyprland brightnessctl kanshi-git hyprpaper rofi-wayland waybar hyprshot xdg-desktop-portal-hyprland dunst nm-connection-editor nm-applet --noconfirm

mv ~/.config/hypr ~/.config/hypr.bak
ln -s "$(pwd)/hypr" ~/.config/hypr

mv ~/.config/dunst ~/.config/dunst.bak
ln -s "$(pwd)/dunst" ~/.config/dunst

mv ~/.config/waybar ~/.config/waybar.bak
ln -s "$(pwd)/waybar" ~/.config/waybar

mv ~/.config/rofi ~/.config/rofi.bak
ln -s "$(pwd)/rofi" ~/.config/rofi

mv ~/.config/kanshi ~/.config/kanshi.bak
ln -s "$(pwd)/kanshi" ~/.config/kanshi
