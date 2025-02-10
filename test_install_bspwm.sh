#!/bin/bash

# Устанавливаем все программы
sudo pacman -S alacritty bspwm nemo sxhkd xorg xorg-server xorg-xinit neovim picom polybar python3 python-pywal nitrogen rofi firefox feh ttf-jetbrains-mono ttf-jetbrains-mono-nerd ttf-firacode-nerd neofetch micro zenity calcurse flameshot mc dunst libnotify xcolor pamixer udiskie vlc eog --noconfirm

#Создание папки .config и .themes
mkdir -p ~/.config
mkdir -p ~/.themes

# Копируем конфигурационные файлы после установки ПО
cp -rf ~/BSPWM-Dracula-Mint/Dracula-Mint/bgimages ~/.config/
cp -rf ~/BSPWM-Dracula-Mint/Dracula-Mint/bspwm ~/.config/
cp -rf ~/BSPWM-Dracula-Mint/Dracula-Mint/polybar ~/.config/
cp -rf ~/BSPWM-Dracula-Mint/Dracula-Mint/kitty ~/.config/
cp -rf ~/BSPWM-Dracula-Mint/Dracula-Mint/rofi ~/.config/
cp -rf ~/BSPWM-Dracula-Mint/Dracula-Mint/sxhkd ~/.config/
cp -rf ~/BSPWM-Dracula-Mint/Dracula-Mint/xcolor-pick ~/.config/
cp -rf ~/BSPWM-Dracula-Mint/Dracula-Mint/calcurse ~/.config/
cp -rf ~/BSPWM-Dracula-Mint/Dracula-Mint/gtk-3.0 ~/.config/
cp -rf ~/BSPWM-Dracula-Mint/Dracula-Mint/.icons ~/

# Копируем .xinitrc в домашнюю директорию
cp -f ~/BSPWM-Dracula-Mint/.xinitrc ~/

#Добавление GTK темы
tar -xf ~/BSPWM-Dracula-Mint/Dracula-Mint/Gradient-Dark-GTK.tar.gz
cp -rf Gradient-Dark-GTK ~/.themes/

#Установка yay + тема курсора
git clone https://aur.archlinux.org/yay.git ~/yay
cd ~/yay
makepkg -si --nonconfirm
yay -S --nonconfirm --needed bibata-cursor-theme-bin

# Настраиваем права на выполнение
chmod +x ~/.config/bspwm/bspwmrc
chmod +x ~/.config/polybar/launch.sh
chmod +x ~/.config/rofi/network-manager.sh
chmod +x ~/.config/rofi/rofi-power-menu.sh
chmod +x ~/.config/sxhkd/sxhkdrc
chmod +x ~/.config/xcolor-pick/xcolor-pick.sh
chmod +x ~/.config/bspwm/dunstrc
chmod +x ~/.config/bspwm/changevolume
