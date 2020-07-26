#!/bin/sh

# base16 themes
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell

# fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# rustup
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
