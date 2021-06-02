#!/bin/sh

# nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

# rustup
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Base
sudo pacman -Sy \
  i3 \
  docker \
  docker-compose \
  docker-machine \
  dunst \
  mpv \
  neovim \
  sxhkd \
  sxiv \
  tmux \
  zathura \
  zathura-pdf-mupdf \
  zsh \
  alacritty

# Extra
sudo pacman -Sy \
  feh \
  network-manager-applet \
  picom \
  wmname \
  xdotool \
  xorg-setxkbmap \
  xorg-xsetroot

# Shell commands from Cargo
cargo install \
  bat \
  du-dust \
  fd-find \
  ripgrep \
  ruplacer \
  sd \
  starship \
  tokei
