#!/bin/bash

# Устанавливаем все программы
echo "Устанавливаем программы..."
sudo pacman -S kitty bspwm sxhkd xorg xorg-server xorg-xinit neovim picom polybar python3 python-pywal nitrogen rofi firefox feh ttf-jetbrains-mono ttf-firacode-nerd neofetch micro zenity calcurse flameshot mc dunst xcolor --noconfirm

# Копируем конфигурационные файлы после установки ПО
echo "Копируем конфигурационные файлы..."
if [ -d ~/BSPWM-Dracula-Mint/Dracula-Mint ]; then
  echo "Папка Dracula-Mint найдена!"
  if [ ! -d ~/.config/bspwm ]; then
    cp -rf ~/BSPWM-Dracula-Mint/Dracula-Mint/bspwm ~/.config/
    echo "Копирование конфигурации bspwm..."
  fi
  if [ ! -d ~/.config/polybar ]; then
    cp -rf ~/BSPWM-Dracula-Mint/Dracula-Mint/polybar ~/.config/
    echo "Копирование конфигурации polybar..."
  fi
  if [ ! -d ~/.config/kitty ]; then
    cp -rf ~/BSPWM-Dracula-Mint/Dracula-Mint/kitty ~/.config/
    echo "Копирование конфигурации kitty..."
  fi
  if [ ! -d ~/.config/rofi ]; then
    cp -rf ~/BSPWM-Dracula-Mint/Dracula-Mint/rofi ~/.config/
    echo "Копирование конфигурации rofi..."
  fi
  if [ ! -d ~/.config/sxhkd ]; then
    cp -rf ~/BSPWM-Dracula-Mint/Dracula-Mint/sxhkd ~/.config/
    echo "Копирование конфигурации sxhkd..."
  fi
  if [ ! -d ~/.config/xcolor-pick ]; then
    cp -rf ~/BSPWM-Dracula-Mint/Dracula-Mint/xcolor-pick ~/.config/
    echo "Копирование конфигурации xcolor-pick..."
  fi
  if [ ! -d ~/.config/calcurse ]; then
    cp -rf ~/BSPWM-Dracula-Mint/Dracula-Mint/calcurse ~/.config/
    echo "Копирование конфигурации calcurse..."
  fi
else
  echo "Папка Dracula-Mint не найдена!"
fi

# Копируем .xinitrc в домашнюю директорию
if [ ! -f ~/.xinitrc ]; then
  cp -f ~/BSPWM-Dracula-Mint/.xinitrc ~/
  echo "Копирование .xinitrc..."
fi

# Настраиваем права на выполнение
echo "Настроим права на выполнение..."
if [ -f ~/.config/bspwm/bspwmrc ]; then
  chmod +x ~/.config/bspwm/bspwmrc
  echo "Право на выполнение для bspwmrc..."
fi
if [ -f ~/.config/polybar/launch.sh ]; then
  chmod +x ~/.config/polybar/launch.sh
  echo "Право на выполнение для launch.sh..."
fi
if [ -f ~/.config/rofi/network-manager.sh ]; then
  chmod +x ~/.config/rofi/network-manager.sh
  echo "Право на выполнение для network-manager.sh..."
fi
if [ -f ~/.config/rofi/rofi-power-menu.sh ]; then
  chmod +x ~/.config/rofi/rofi-power-menu.sh
  echo "Право на выполнение для rofi-power-menu.sh..."
fi
if [ -f ~/.config/sxhkd/sxhkdrc ]; then
  chmod +x ~/.config/sxhkd/sxhkdrc
  echo "Право на выполнение для sxhkdrc..."
fi
if [ -f ~/.config/xcolor-pick/xcolor-pick.sh ]; then
  chmod +x ~/.config/xcolor-pick/xcolor-pick.sh
  echo "Право на выполнение для xcolor-pick.sh..."
fi

echo "Все шаги выполнены успешно!"
