#!/bin/bash
SRC_DIR=$PWD

# Remove old files
rm ~/.bashrc
rm ~/.conkyrc
rm ~/.i3/config
rm ~/.rtorrent.rc
rm ~/.tmux.conf
rm ~/.vimrc
rm ~/.xinitrc
rm ~/.startup_apps
rm ~/.zshrc
rm ~/.fonts.conf
rm ~/.Xresources
rm ~/.synergy.conf

rm ~/.config/synapse/config.json
rm ~/.config/terminator/config
rm -rf ~/.config/ranger

sudo rm /etc/pacman.conf
sudo rm /etc/yaourtrc
sudo rm /etc/ssh/ssh_config
sudo rm /etc/ssh/sshd_config

# Link files to this folder
ln -s $SRC_DIR/bash/bashrc ~/.bashrc
ln -s $SRC_DIR/conky/conkyrc ~/.conkyrc
ln -s $SRC_DIR/i3/config ~/.i3/config
ln -s $SRC_DIR/i3/i3status.conf ~/.i3status.conf
ln -s $SRC_DIR/rtorrent/rtorrent.rc ~/.rtorrent.rc
ln -s $SRC_DIR/tmux/tmux.conf ~/.tmux.conf
ln -s $SRC_DIR/vim/vimrc ~/.vimrc
ln -s $SRC_DIR/xinitrc ~/.xinitrc
ln -s $SRC_DIR/startup_apps ~/.startup_apps
ln -s $SRC_DIR/zsh/zshrc ~/.zshrc
ln -s $SRC_DIR/fonts.conf ~/.fonts.conf
ln -s $SRC_DIR/Xresources ~/.Xresources
ln -s $SRC_DIR/synergy/synergy.conf ~/.synergy.conf

ln -s $SRC_DIR/synapse/config.json ~/.config/synapse/config.json
ln -s $SRC_DIR/terminator/config ~/.config/terminator/config
ln -s $SRC_DIR/ranger ~/.config/ranger

sudo ln -s $SRC_DIR/pacman/pacman.conf /etc/pacman.conf
sudo ln -s $SRC_DIR/yaourt/yaourtrc /etc/yaourtrc
sudo ln -s $SRC_DIR/ssh/ssh_config /etc/ssh/ssh_config
sudo ln -s $SRC_DIR/ssh/sshd_config /etc/ssh/sshd_config
