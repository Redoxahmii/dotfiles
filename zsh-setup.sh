#!/bin/bash

yay -S oh-my-zsh-git --noconfirm
cp /usr/share/oh-my-zsh/zshrc ~/.zshrc
yay -S zsh-autosuggestions zsh-syntax-highlighting zsh-autocomplete-git zsh-theme-powerlevel10k-git --noconfirm
echo 'source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
echo 'source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh' >>~/.zshrc
echo 'source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh' >>~/.zshrc
echo 'source /usr/share/zsh/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh' >>~/.zshrc
echo 'source $HOME/.tmuxifier-alias.zsh' >>~/.zshrc
sed -i 's/^plugins=(.*)/plugins=(git npm tmux)/' ~/.zshrc

echo 'export NVM_DIR="$HOME/.nvm"' >>~/.zshrc
echo '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"' >>~/.zshrc
echo '[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"' >>~/.zshrc
