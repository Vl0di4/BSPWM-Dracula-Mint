#!/bin/bash

# Устанавливаем все программы
sudo pacman -S kitty bspwm sxhkd xorg xorg-server xorg-xinit neovim picom polybar python3 python-pywal nitrogen rofi firefox feh ttf-jetbrains-mono ttf-firacode-nerd neofetch micro zenity calcurse flameshot mc dunst xcolor --noconfirm

# Копируем конфигурационные файлы после установки ПО
if [ ! -d ~/.config/bspwm ]; then
  cp -rf ~/BSPWM-Dracula-Mint/Dracula-Mint/bspwm ~/.config/
fi
if [ ! -d ~/.config/polybar ]; then
  cp -rf ~/BSPWM-Dracula-Mint/Dracula-Mint/polybar ~/.config/
fi
if [ ! -d ~/.config/kitty ]; then
  cp -rf ~/BSPWM-Dracula-Mint/Dracula-Mint/kitty ~/.config/
fi
if [ ! -d ~/.config/rofi ]; then
  cp -rf ~/BSPWM-Dracula-Mint/Dracula-Mint/rofi ~/.config/
fi
if [ ! -d ~/.config/sxhkd ]; then
  cp -rf ~/BSPWM-Dracula-Mint/Dracula-Mint/sxhkd ~/.config/
fi
if [ ! -d ~/.config/xcolor-pick ]; then
  cp -rf ~/BSPWM-Dracula-Mint/Dracula-Mint/xcolor-pick ~/.config/
fi
if [ ! -d ~/.config/calcurse ]; then
  cp -rf ~/BSPWM-Dracula-Mint/Dracula-Mint/calcurse ~/.config/
fi

# Копируем .xinitrc в домашнюю директорию
if [ ! -f ~/.xinitrc ]; then
  cp -f ~/BSPWM-Dracula-Mint/.xinitrc ~/
fi

# Настраиваем права на выполнение
if [ -f ~/.config/bspwm/bspwmrc ]; then
  chmod +x ~/.config/bspwm/bspwmrc
fi
if [ -f ~/.config/polybar/launch.sh ]; then
  chmod +x ~/.config/polybar/launch.sh
fi
if [ -f ~/.config/rofi/network-manager.sh ]; then
  chmod +x ~/.config/rofi/network-manager.sh
fi
if [ -f ~/.config/rofi/rofi-power-menu.sh ]; then
  chmod +x ~/.config/rofi/rofi-power-menu.sh
fi
if [ -f ~/.config/sxhkd/sxhkdrc ]; then
  chmod +x ~/.config/sxhkd/sxhkdrc
fi
if [ -f ~/.config/xcolor-pick/xcolor-pick.sh ]; then
  chmod +x ~/.config/xcolor-pick/xcolor-pick.sh
fi

echo "Все шаги выполнены успешно!"
