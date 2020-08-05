#!/bin/sh

ID=$(xdotool search --class gterm)
FOCUSED_ID=$(bspc query -N -n focused)
FOCUSED_ID=$(printf %d $FOCUSED_ID)

echo $ID $FOCUSED_ID

if [ -z "$ID" ]; then
  alacritty --class gterm,gterm
elif [ $ID == $FOCUSED_ID  ]; then
  bspc node $ID -g hidden=on
else
  bspc node $ID -d focused -g hidden=off -f
fi
