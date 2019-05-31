#!/bin/bash
SRC_DIR=$PWD

# Remove old files and link new files
ln -sf $SRC_DIR/ack/ackrc ~/.ackrc
ln -sf $SRC_DIR/background.jpg ~/.background.jpg
ln -sf $SRC_DIR/bash/bashrc ~/.bashrc
ln -sf $SRC_DIR/compton/compton.conf ~/.config/compton.conf
ln -sf $SRC_DIR/conky/conkyrc ~/.conkyrc
ln -sf $SRC_DIR/ctags/ctags ~/.ctags
ln -sf $SRC_DIR/dunst/dunstrc ~/.dunstrc

# Fonts
ln -sf $SRC_DIR/fonts.conf ~/.fonts.conf
rm -rf ~/.fonts
ln -sf $SRC_DIR/fonts ~/.fonts
fc-cache -vf

ln -sf $SRC_DIR/git/gitconfig ~/.gitconfig
ln -sf $SRC_DIR/gtk/gtkrc-2.0 ~/.gtkrc-2.0
ln -sf $SRC_DIR/gtk/gtk3-settings.ini ~/.config/gtk-3.0/settings.ini
ln -sf $SRC_DIR/i3 ~/.i3
ln -sf $SRC_DIR/i3/i3status.conf ~/.i3status.conf
ln -sf $SRC_DIR/notification.ogg ~/.notification.ogg

# Pacman
sudo ln -sf $SRC_DIR/pacman/pacman.conf /etc/pacman.conf

# Spacemacs
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
ln -sf $SRC_DIR/emacs/spacemacs ~/.spacemacs

ln -sf $SRC_DIR/startup_apps ~/.startup_apps
ln -sf $SRC_DIR/synergy/synergy.conf ~/.synergy.conf

# Terminator
mkdir ~/.config/terminator
ln -sf $SRC_DIR/terminator/config ~/.config/terminator/config

ln -sf $SRC_DIR/tmux/tmux.conf ~/.tmux.conf

# VIM
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh
ln -sf $SRC_DIR/vim/vimrc ~/.vimrc

ln -sf $SRC_DIR/xinitrc ~/.xinitrc

# Xresources
ln -sf $SRC_DIR/Xresources ~/.Xresources
xrdb -merge ~/.Xresources

ln -sf $SRC_DIR/zsh/zshrc ~/.zshrc
