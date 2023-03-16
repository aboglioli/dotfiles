export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="kolo"

source $ZSH/oh-my-zsh.sh

# --------
# VIM mode
# --------
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

# ---------------------
# Environment variables
# ---------------------
export TERM=xterm-256color

export DOTFILESPATH="$HOME/dotfiles"
export GOPATH="$HOME/.go"
export CARGOPATH="$HOME/.cargo"
export PATH="$HOME/bin:$DOTFILESPATH/bin:$GOPATH/bin:$CARGOPATH/bin:$PATH"

export EDITOR=nvim
export VISUAL=$EDITOR
export GIT_EDITOR=$EDITOR
export PAGER=less
export BROWSER=brave
export AWT_TOOLKIT=MToolkit

export FZF_DEFAULT_OPTS="--reverse --info=inline"

# -------
# Secrets
# -------
SECRETS_FILE="$HOME/.secrets.sh"
if [ -f "$SECRETS_FILE" ]; then
  source "$SECRETS_FILE"
fi

# -------
# Aliases
# -------
alias v="nvim"
alias dev="cd ~/dev"

alias tt='cd "./$(git rev-parse --show-cdup)"'

alias ds='pwd > /tmp/cwd'
alias dr='cd "$(</tmp/cwd)"'

alias gsync='
  git fetch --all --prune && \
  git branch --merged | rg -v "(main|master|develop|staging|release)" | xargs git branch -d
'
gview() {
  folder=/tmp/$(basename $1)
  git clone $1 $folder && cd $folder
  nvim
}

alias todo='nvim $HOME/todo.md'
alias notes='nvim $HOME/notes.md'

# ----------------------
# External configuration
# ----------------------

# FZF
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"

source ~/.config/base16-fzf/bash/base16-horizon-dark.config

# NVM
source /usr/share/nvm/init-nvm.sh
