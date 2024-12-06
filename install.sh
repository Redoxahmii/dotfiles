#!/bin/bash

# Setup for the terminal and coding environment.

yay -Syy --noconfirm
yay -S kitty neovim zsh git tmux tmux-plugin-manager bat eza yazi --noconfirm

mv ~/.zshrc ~/.zshrc.bak
ln -s "$(pwd)/zshrc" ~/.zshrc

# symlink kitty nvim tmux inside .config

cp "$(pwd)/.tmuxifier-alias.zsh" ~/.tmuxifier-alias.zsh

mv ~/.config/kitty ~/.config/kitty.bak
ln -s "$(pwd)/kitty" ~/.config/kitty

mv ~/.config/nvim ~/.config/nvim.bak
ln -s "$(pwd)/nvim" ~/.config/nvim

mv ~/.config/tmux ~/.config/tmux.bak
mkdir ~/.config/tmux
ln -s "$(pwd)/tmux.conf" ~/.config/tmux/
