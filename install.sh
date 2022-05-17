#!/bin/sh

SRC=~/dotfiles

# ------
# Config
# ------
ln -sf $SRC/background.jpg ~/.background.jpg
ln -sf $SRC/dunstrc ~/.dunstrc
ln -sf $SRC/gitconfig ~/.gitconfig
ln -sf $SRC/zshrc ~/.zshrc

ln -sf $SRC/i3 ~/.config
ln -sf $SRC/kitty ~/.config
ln -sf $SRC/nvim ~/.config
ln -sf $SRC/startup ~/.startup
ln -sf $SRC/sxhkd ~/.config
ln -sf $SRC/zathura ~/.config

# --------
# Packages
# --------
sudo pacman -Sy \
  bat \
  docker \
  dunst \
  feh \
  fzf \
  go \
  i3 \
  kitty \
  mpv \
  neovim \
  network-manager-applet \
  ntp \
  ripgrep \
  rofi \
  rustup \
  sxhkd \
  sxiv \
  wmname \
  xdotool \
  xorg-xsetroot \
  zathura \
  zathura-pdf-mupdf \
  zsh

yay -Sy \
  brave-bin \
  nvm \
  ponymix

# -----
# Other
# -----

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# base16-shell
git clone https://github.com/chriskempson/base16-shell ~/.config/base16-shell

# base16-fzf
git clone https://github.com/fnune/base16-fzf ~/.config/base16-fzf
