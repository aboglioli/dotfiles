#!/bin/sh

sleep $1; \
  notify-send -u critical "Time"; \
  mpv ~/.notification.ogg
