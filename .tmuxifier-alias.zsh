export QT_QPA_PLATFORMTHEME=qt5ct
export ANDROID_HOME=$HOME/Android/Sdk

alias wscreenkey="GDK_BACKEND=x11 screenkey"

tre() { command tre "$@" -e && source "/tmp/tre_aliases_$USER" 2>/dev/null; }

export PATH=$PATH:$ANDROID_HOME/emulator

export PATH=$PATH:$ANDROID_HOME/platform-tools

export PATH=$PATH:$ANDROID_HOME/tools

export PATH=$PATH:$HOME/.config/tmux/plugins/tmuxifier/bin
eval "$(tmuxifier init -)"
export EDITOR=nvim
alias vim=nvim
alias w=nvim
alias clr=clear
alias fm=ranger
alias tmx="tmuxifier"
alias tmxls="tmuxifier list-sessions"
alias tmxn="tmuxifier new-session"
alias tmxl="tmuxifier load-session"
alias tmxe="tmuxifier edit-session"
alias e="exit"
# INFO: These are the plugins to use in zsh
# plugins=(git zsh-syntax-highlighting zsh-autosuggestions npm zsh-autocomplete tmux)
