FROM alpine:latest

# edge repository
RUN sed -i -e 's/v[[:digit:]]\..*\//edge\//g' /etc/apk/repositories

RUN apk update && apk upgrade
RUN apk add \
  bash zsh zsh-vcs tmux curl fzf \
  x11vnc xvfb \
  sxhkd bspwm xdotool feh st rofi \
  git neovim
# add build-base to compile

WORKDIR /root

# oh-my-zsh
RUN sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# neovim
RUN curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# nvm
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

# dotfiles
RUN mkdir dotfiles
COPY . ./dotfiles
RUN ./dotfiles/install.sh

CMD ["/bin/zsh"]
