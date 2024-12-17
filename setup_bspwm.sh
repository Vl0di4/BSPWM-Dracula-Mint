#!/bin/bash

# Устанавливаем все программы
sudo pacman -S kitty bspwm sxhkd xorg xorg-server xorg-xinit neovim picom polybar python3 python-pywal nitrogen rofi firefox feh ttf-jetbrains-mono ttf-firacode-nerd neofetch micro zenity calcurse flameshot mc dunst xcolor --noconfirm

# Копируем конфигурационные файлы после установки ПО
cp -rf ./Dracula-Mint/bgimages ~/.config/
cp -rf ./Dracula-Mint/bspwm ~/.config/
cp -rf ./Dracula-Mint/calcurse ~/.config/
cp -rf ./Dracula-Mint/kitty ~/.config/
cp -rf ./Dracula-Mint/polybar ~/.config/
cp -rf ./Dracula-Mint/rofi ~/.config/
cp -rf ./Dracula-Mint/sxhkd ~/.config/
cp -rf ./Dracula-Mint/xcolor-pick ~/.config/

# Копируем .xinitrc в домашнюю директорию
cp -f .xinitrc ~/

# Настраиваем права на выполнение
chmod +x ~/.config/bspwm/bspwmrc
chmod +x ~/.config/polybar/launch.sh
chmod +x ~/.config/rofi/network-manager.sh
chmod +x ~/.config/rofi/rofi-power-menu.sh
chmod +x ~/.config/sxhkd/sxhkdrc
chmod +x ~/.config/xcolor-pick/xcolor-pick.sh
