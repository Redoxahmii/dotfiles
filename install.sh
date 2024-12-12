#!/bin/bash

# Setup for the terminal and coding environment.

yay -Syy --noconfirm
yay -S kitty neovim zsh git tmux tmux-plugin-manager bat eza yazi --noconfirm

mv ~/.zshrc ~/.zshrc.bak
ln -s "$(pwd)/zshrc" ~/.zshrc

# symlink kitty nvim tmux inside .config

ln -s "$(pwd)/.tmuxifier-alias.zsh" ~/.tmuxifier-alias.zsh
ln -s "$(pwd)/.czrc" ~/.czrc

## INFO: czrc requires commitizen and cz-git so install later with npm

mv ~/.config/kitty ~/.config/kitty.bak
ln -s "$(pwd)/kitty" ~/.config/kitty

mv ~/.config/nvim ~/.config/nvim.bak
ln -s "$(pwd)/nvim" ~/.config/nvim

mv ~/.config/tmux ~/.config/tmux.bak
mkdir ~/.config/tmux
ln -s "$(pwd)/tmux.conf" ~/.config/tmux/

mv ~/.config/lazygit ~/.config/lazygit.bak
ln -s "$(pwd)/lazygit" ~/.config/lazygit

mv ~/.config/yazi ~/.config/yazi.bak
ln -s "$(pwd)/yazi" ~/.config/yazi

echo "czrc requires commitizen and cz-git so install later with npm"
