#!/usr/bin/env bash

#   ██╗  ██╗ ██████╗ ██████╗ ██╗      ██████╗ ██████╗ 
#   ╚██╗██╔╝██╔════╝██╔═══██╗██║     ██╔═══██╗██╔══██╗
#    ╚███╔╝ ██║     ██║   ██║██║     ██║   ██║██████╔╝
#    ██╔██╗ ██║     ██║   ██║██║     ██║   ██║██╔══██╗
#   ██╔╝ ██╗╚██████╗╚██████╔╝███████╗╚██████╔╝██║  ██║
#   ╚═╝  ╚═╝ ╚═════╝ ╚═════╝ ╚══════╝ ╚═════╝ ╚═╝  ╚═╝
# color picker for X.
# Simple Script To Pick Color Quickly Using Gpick.
# Created By: https://github.com/rxyhn 


COLOR=$(xcolor) || { echo "er"; exit 1; }

notify-send "Your color" $COLOR -h string:bgcolor:$COLOR
