#!/bin/sh
SRC=~/dotfiles

mkdir $SRC/fonts ~/.config ~/.i3

ln -sf $SRC/alacritty.yml ~/.alacritty.yml
ln -sf $SRC/starship.toml ~/.config/starship.toml

ln -sf $SRC/background.jpg ~/.background.jpg
ln -sf $SRC/dunstrc ~/.dunstrc

ln -sf $SRC/sxhkd ~/.config/sxhkd
ln -sf $SRC/bspwm ~/.config/bspwm
ln -sf $SRC/polybar ~/.config/polybar

rm -rf ~/.fonts
ln -sf $SRC/fonts.conf ~/.fonts.conf
ln -sf $SRC/fonts ~/.fonts
fc-cache -vf

ln -sf $SRC/i3/config ~/.i3/config
ln -sf $SRC/i3/i3status.conf ~/.i3status.conf
ln -sf $SRC/notification.ogg ~/.notification.ogg

ln -sf $SRC/startup ~/.startup

ln -sf $SRC/Xresources ~/.Xresources
xrdb -merge ~/.Xresources

ln -sf $SRC/zathura ~/.config/zathura
