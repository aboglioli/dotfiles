export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="kolo"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration
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
# export FZF_DEFAULT_OPTS='
# --color fg:242,bg:236,hl:65,fg+:15,bg+:239,hl+:108
# --color info:108,prompt:109,spinner:108,pointer:168,marker:168
# '

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
