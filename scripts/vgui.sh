#/bin/sh
export DISPLAY=:1
export SHELL=/bin/zsh

Xvfb :1 -screen 0 1366x768x24 &
sleep 0.1

x11vnc -display -forever :1 &
sxhkd &
bspwm &
feh --bg-scale ~/.background.jpg
