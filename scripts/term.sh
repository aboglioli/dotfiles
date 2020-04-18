#!/bin/sh

ID=$(xdotool search --class gterm)
FOCUSED_ID=$(bspc query -N -n focused)

if [ -z "$ID" ]; then
  st -c gterm -e "tmux"
elif [ $ID == $FOCUSED_ID  ]; then
  bspc node $ID -g hidden=on
else
  bspc node $ID -d focused -g hidden=off -f
fi
