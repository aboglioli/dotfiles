export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="kolo"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# VIM mode
bindkey -v
export KEYTIMEOUT=1

PS1+='${VIMODE}'
function zle-line-init zle-keymap-select {
    DOLLAR='%B%F{green}$%f%b '
    GIANT_I='%B%F{red}@%f%b '
    VIMODE="${${KEYMAP/vicmd/$GIANT_I}/(main|viins)/$DOLLAR}"
    zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select

# Environment variables
export GOPATH="$HOME/.go"
export CARGOPATH="$HOME/.cargo"
export YARNPATH="$HOME/.yarn"
export PYENVPATH="$HOME/.pyenv"
export PATH="$HOME/bin:$HOME/dotfiles/scripts:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/vendor_perl:/usr/bin/core_perl:$JAVA_HOME/bin:/home/kiriost/.gem/ruby/2.3.0/bin:/usr/local/heroku/bin:./vendor/bin:./node_modules/.bin:$GOPATH/bin:$CARGOPATH/bin:$YARNPATH/bin:$PATH:$PYENVPATH/bin"

export TERM=xterm-256color
export EDITOR=nvim
export VISUAL=$EDITOR
export GIT_EDITOR=$EDITOR
export PAGER=less
export BROWSER=google-chrome-stable
export AWT_TOOLKIT=MToolkit

# Aliases
alias v="nvim"
alias dev="cd ~/dev"
alias temp="cd ~/temp"

alias tt='cd "./$(git rev-parse --show-cdup)"'
alias tl="tree -L 2"

alias dco="docker-compose"

export JAVA_HOME="/usr/lib/jvm/java-8-openjdk"
export ANDROID_HOME="$HOME/Android/Sdk"

export NVM_DIR="/home/kiriost/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
