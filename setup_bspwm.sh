#!/bin/bash

cp -r ~/BSPWM-Dracula-Mint/Dracula-Mint/bgimages ~/.config/
cp -r ~/BSPWM-Dracula-Mint/Dracula-Mint/bspwm ~/.config/
cp -r ~/BSPWM-Dracula-Mint/Dracula-Mint/calcurse ~/.config/
cp -r ~/BSPWM-Dracula-Mint/Dracula-Mint/kitty ~/.config/
cp -r ~/BSPWM-Dracula-Mint/Dracula-Mint/polybar ~/.config/
cp -r ~/BSPWM-Dracula-Mint/Dracula-Mint/rofi ~/.config/
cp -r ~/BSPWM-Dracula-Mint/Dracula-Mint/sxhkd ~/.config/
cp -r ~/BSPWM-Dracula-Mint/Dracula-Mint/xcolor-pick ~/.config/

cp -f ~/BSPWM-Dracula-Mint/.xinitrc ~/


chmod +x ~/.config/bspwm/bspwmrc
chmod +x ~/.config/polybar/launch.sh
chmod +x ~/.config/rofi/network-manager.sh
chmod +x ~/.config/rofi/rofi-power-menu.sh
chmod +x ~/.config/sxhkd/sxhkdrc
chmod +x ~/.config/xcolor-pick/xcolor-pick.sh


sudo pacman -S kitty bspwm sxhkd xorg xorg-server xorg-xinit neovim picom polybar python3 python-pywal nitrogen rofi firefox feh ttf-jetbrains-mono ttf-firacode-nerd neofetch micro zenity calcurse flameshot mc dunst xcolor --noconfirm
