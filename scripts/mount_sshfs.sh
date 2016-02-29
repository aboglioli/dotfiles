#!/bin/sh
sudo sshfs -p 1526 -o allow_other kiriost@192.168.1.$1:/home/kiriost/$2 ~/Mnt/ssh
