FROM alpine:edge

ENV USER=admin
ENV UID=1000
ENV PASSWD=admin

# Packages
RUN apk update && apk upgrade
RUN apk add \
  bash \
  bat \
  curl \
  fzf \
  g++ \
  gcc \
  git \
  musl-dev \
  neovim \
  ripgrep \
  sudo \
  zsh \
  zsh-vcs

# User
RUN adduser -h /home/$USER -s /bin/zsh -S $USER -u $UID -G users \
  && addgroup $USER wheel \
  && echo "$USER:$PASSWD" | chpasswd
RUN echo "%wheel ALL=(ALL) ALL" >> /etc/sudoers
USER $USER

WORKDIR /home/$USER

# External packages
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" && \
  sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
         https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim' && \
  git clone https://github.com/chriskempson/base16-shell ~/.config/base16-shell && \
  git clone https://github.com/fnune/base16-fzf ~/.config/base16-fzf


# dotfiles
RUN mkdir dotfiles
COPY . ./dotfiles
RUN ./dotfiles/config.sh

CMD ["/bin/zsh"]
