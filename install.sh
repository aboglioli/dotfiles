#!/bin/bash
SRC_DIR=$PWD

# Remove old files and link new files
rm ~/.bashrc
ln -s $SRC_DIR/bash/bashrc ~/.bashrc

rm ~/.conkyrc
ln -s $SRC_DIR/conky/conkyrc ~/.conkyrc

rm ~/.dunstrc
ln -s $SRC_DIR/dunst/dunstrc ~/.dunst

rm ~/.i3
ln -s $SRC_DIR/i3 ~/.i3
rm ~/.i3status.conf
ln -s $SRC_DIR/i3/i3status.conf ~/.i3status.conf

rm ~/.rtorrent.rc
ln -s $SRC_DIR/rtorrent/rtorrent.rc ~/.rtorrent.rc

rm ~/.tmux.conf
ln -s $SRC_DIR/tmux/tmux.conf ~/.tmux.conf

rm ~/.vimrc
ln -s $SRC_DIR/vim/vimrc ~/.vimrc

rm ~/.spacemacs
ln -s $SRC_DIR/emacs/spacemacs ~/.spacemacs

rm ~/.xinitrc
ln -s $SRC_DIR/xinitrc ~/.xinitrc
rm ~/.startup_apps
ln -s $SRC_DIR/startup_apps ~/.startup_apps

rm ~/.zshrc
ln -s $SRC_DIR/zsh/zshrc ~/.zshrc

rm ~/.ackrc
ln -s $SRC_DIR/ack/ackrc ~/.ackrc

rm ~/.ctags
ln -s $SRC_DIR/ctags/ctags ~/.ctags

rm ~/.fonts.conf
ln -s $SRC_DIR/fonts.conf ~/.fonts.conf

rm ~/.Xresources
ln -s $SRC_DIR/Xresources ~/.Xresources
xrdb -merge ~/.Xresources

rm ~/.synergy.conf
ln -s $SRC_DIR/synergy/synergy.conf ~/.synergy.conf

rm ~/.background.jpg
ln -s $SRC_DIR/background.jpg ~/.background.jpg

rm ~/.notification.ogg
ln -s $SRC_DIR/notification.ogg ~/.notification.ogg

rm ~/.config/compton.conf
ln -s $SRC_DIR/compton/compton.conf ~/.config/compton.conf

sudo rm /etc/pacman.conf
sudo ln -s $SRC_DIR/pacman/pacman.conf /etc/pacman.conf

sudo rm /etc/ssh/ssh_config
sudo ln -s $SRC_DIR/ssh/ssh_config /etc/ssh/ssh_config
sudo rm /etc/ssh/sshd_config
sudo ln -s $SRC_DIR/ssh/sshd_config /etc/ssh/sshd_config

# Install fonts
cp -r $SRC_DIR/fonts/* ~/.fonts/
fc-cache -vf

# Copy necessary files
mkdir -p ~/.oh-my-zsh/custom
cp $SRC_DIR/zsh/themes/* ~/.oh-my-zsh/custom
