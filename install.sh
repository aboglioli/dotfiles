#!/bin/bash
SRC=$PWD

# Remove old files and link new files
ln -sf $SRC/background.jpg ~/.background.jpg
ln -sf $SRC/bashrc ~/.bashrc
ln -sf $SRC/compton.conf ~/.config/compton.conf
ln -sf $SRC/dunstrc ~/.dunstrc
ln -sf $SRC/alacritty.yml ~/.alacritty.yml

ln -sf $SRC/sxhkd ~/.config/sxhkd
ln -sf $SRC/bspwm ~/.config/bspwm
ln -sf $SRC/polybar ~/.config/polybar

# Fonts
rm -rf ~/.fonts
ln -sf $SRC/fonts.conf ~/.fonts.conf
ln -sf $SRC/fonts ~/.fonts
fc-cache -vf

ln -sf $SRC/gitconfig ~/.gitconfig
mkdir ~/.i3
ln -sf $SRC/i3/config ~/.i3/config
ln -sf $SRC/i3/i3status.conf ~/.i3status.conf
ln -sf $SRC/notification.ogg ~/.notification.ogg

ln -sf $SRC/startup_apps ~/.startup_apps

# Terminator
mkdir ~/.config/terminator
ln -sf $SRC/terminator/config ~/.config/terminator/config

ln -sf $SRC/tmux.conf ~/.tmux.conf

# VIM
ln -sf $SRC/nvim ~/.config/nvim

# Xresources
ln -sf $SRC/Xresources ~/.Xresources
xrdb -merge ~/.Xresources

ln -sf $SRC/zshrc ~/.zshrc
