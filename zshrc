export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="kolo"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# VIM mode
bindkey -v
export KEYTIMEOUT=1

PS1+='${VIMODE}'
function zle-line-init zle-keymap-select {
    DOLLAR='%B%F{green}I%f%b '
    GIANT_I='%B%F{red}N%f%b '
    VIMODE="${${KEYMAP/vicmd/$GIANT_I}/(main|viins)/$DOLLAR}"
    zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select

# Environment variables
export LOCAL="$HOME/.local"
export GOPATH="$HOME/.go"
export CARGOPATH="$HOME/.cargo"
export YARNPATH="$HOME/.yarn"
export PYENVPATH="$HOME/.pyenv"
export PATH="./vendor/bin:./node_modules/.bin:$HOME/bin:$HOME/dotfiles/scripts:$LOCAL/bin:$GOPATH/bin:$CARGOPATH/bin:$YARNPATH/bin:$PYENVPATH/bin:$PATH"

export TERM=screen-256color
export EDITOR=nvim
export VISUAL=$EDITOR
export GIT_EDITOR=$EDITOR
export PAGER=less
export BROWSER=brave
export AWT_TOOLKIT=MToolkit

# Aliases
alias v="nvim"
alias dev="cd ~/dev"

alias tt='cd "./$(git rev-parse --show-cdup)"'

alias ds='pwd > /tmp/cwd'
alias dr='cd "$(</tmp/cwd)"'

export ANDROID_HOME="$HOME/Android/Sdk"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"

# Base16 fzf
source ~/.config/base16-fzf/bash/base16-gruvbox-dark-medium.config

eval "$(starship init zsh)"
