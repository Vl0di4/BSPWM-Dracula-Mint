#!/bin/bash

LANG=$(xkblayout-state print %s)

case $LANG in
    us) TEXT="ENG" ;;
    ru) TEXT="РУС" ;;
    ua) TEXT="УКР" ;;
esac

notify-send -r 9999 --app-name="Language:" "$TEXT"

#yad --text="$LANG" \
#    --no-buttons \
#    --center \
#    --undecorated \
#    --skip-taskbar \
#    --on-top \
#    --timeout=1 \
#    --timeout-indicator=none \
#    --width=100 \
#    --height=100 \
#    --borders=20 \
#    --window-icon="" \
#    --title=""
