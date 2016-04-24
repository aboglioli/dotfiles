#!/bin/sh
xrandr --auto --output $1 --mode $2 --$3-of LVDS1
feh --bg-scale /home/kiriost/.background.jpg

