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
ln -sf $SRC/picom.conf ~/.config
