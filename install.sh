#!/bin/bash
SRC_DIR=$PWD

# Remove old files and link new files
ln -sf $SRC_DIR/bash/bashrc ~/.bashrc
ln -sf $SRC_DIR/git/gitconfig ~/.gitconfig
ln -sf $SRC_DIR/conky/conkyrc ~/.conkyrc
ln -sf $SRC_DIR/dunst/dunstrc ~/.dunstrc
ln -sf $SRC_DIR/i3 ~/.i3
ln -sf $SRC_DIR/i3/i3status.conf ~/.i3status.conf
ln -sf $SRC_DIR/tmux/tmux.conf ~/.tmux.conf
ln -sf $SRC_DIR/emacs/spacemacs ~/.spacemacs
ln -sf $SRC_DIR/xinitrc ~/.xinitrc
ln -sf $SRC_DIR/startup_apps ~/.startup_apps
ln -sf $SRC_DIR/zsh/zshrc ~/.zshrc
ln -sf $SRC_DIR/ack/ackrc ~/.ackrc
ln -sf $SRC_DIR/ctags/ctags ~/.ctags
ln -sf $SRC_DIR/fonts.conf ~/.fonts.conf
ln -sf $SRC_DIR/Xresources ~/.Xresources
xrdb -merge ~/.Xresources

mkdir ~/.config/terminator
ln -sf $SRC_DIR/terminator/config ~/.config/terminator/config

ln -sf $SRC_DIR/synergy/synergy.conf ~/.synergy.conf
ln -sf $SRC_DIR/background.jpg ~/.background.jpg
ln -sf $SRC_DIR/notification.ogg ~/.notification.ogg
ln -sf $SRC_DIR/compton/compton.conf ~/.config/compton.conf

ln -sf $SRC_DIR/gtk/gtkrc-2.0 ~/.gtkrc-2.0
ln -sf $SRC_DIR/gtk/gtk3-settings.ini ~/.config/gtk-3.0/settings.ini

sudo ln -sf $SRC_DIR/pacman/pacman.conf /etc/pacman.conf

# Install fonts
rm -rf ~/.fonts
ln -sf $SRC_DIR/fonts ~/.fonts
fc-cache -vf

# ZSH themes
mkdir -p ~/.oh-my-zsh/custom
cp $SRC_DIR/zsh/themes/* ~/.oh-my-zsh/custom
