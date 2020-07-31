FROM alpine:latest

ENV USER=kiriost
ENV UID=1000
ENV PASSWD=1234

# edge repository
RUN sed -i -e 's/v[[:digit:]]\..*\//edge\//g' /etc/apk/repositories

RUN apk update && apk upgrade
RUN apk add \
  sudo bash zsh zsh-vcs \
  tmux curl fzf ripgrep \
  openssh perl git neovim ctags \
  nodejs-current yarn npm

RUN adduser -h /home/$USER -s /bin/zsh -S $USER -u $UID -G users \
  && addgroup kiriost wheel \
  && echo "$USER:$PASSWD" | chpasswd
RUN echo "%wheel ALL=(ALL) ALL" >> /etc/sudoers
USER $USER

WORKDIR /home/$USER

# dotfiles
RUN mkdir dotfiles
COPY . ./dotfiles
RUN ./dotfiles/base.sh
RUN nvim +PlugInstall +qa

CMD ["/bin/zsh"]
