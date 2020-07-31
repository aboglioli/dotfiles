#/bin/sh
SRC=~/dotfiles

# base16 themes
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
git clone https://github.com/fnune/base16-fzf.git ~/.config/base16-fzf

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# neovim plugins
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install --all

mkdir ~/.config

ln -sf $SRC/bashrc ~/.bashrc
ln -sf $SRC/zshrc ~/.zshrc
ln -sf $SRC/gitconfig ~/.gitconfig
ln -sf $SRC/tmux.conf ~/.tmux.conf
ln -sf $SRC/nvim ~/.config/nvim
