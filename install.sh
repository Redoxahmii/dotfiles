#!/bin/bash
chmod +x zsh-setup.sh

yay -Syy --noconfirm
yay -S kitty neovim zsh git tmux --noconfirm

source ./zsh-setup.sh

# symlink kitty nvim tmux inside .config
mv ~/.config/kitty ~/.config/kitty.bak
ln -s "$(pwd)/kitty" ~/.config/kitty

mv ~/.config/nvim ~/.config/nvim.bak
ln -s "$(pwd)/nvim" ~/.config/nvim

mv ~/.config/tmux ~/.config/tmux.bak
ln -s "$(pwd)/tmux" ~/.config/tmux
