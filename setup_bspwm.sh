#!/bin/bash

# Устанавливаем все программы
sudo pacman -S kitty bspwm nemo sxhkd xorg xorg-server xorg-xinit neovim picom polybar python3 python-pywal nitrogen rofi rofi-calc rofi-emoji firefox feh ttf-jetbrains-mono ttf-jetbrains-mono-nerd ttf-firacode-nerd noto-fonts-emoji xclip neofetch micro zenity calcurse flameshot mc dunst libnotify xcolor pamixer udiskie vlc eog xarchiver redshift telegram-desktop pavucontrol unzip zsh eza flatpak --noconfirm

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

rm ~/.zshrc
cp ~/BSPWM-Dracula-Mint/Dracula-Mint/.zshrc ~/

chsh -s /usr/bin/zsh

#Создание папки .config и .themes
mkdir -p ~/.config
mkdir -p ~/.themes

# Копируем конфигурационные файлы после установки ПО
cp -rf ~/BSPWM-Dracula-Mint/Dracula-Mint/bgimages ~/.config/
cp -rf ~/BSPWM-Dracula-Mint/Dracula-Mint/bspwm ~/.config/
cp -rf ~/BSPWM-Dracula-Mint/Dracula-Mint/polybar ~/.config/
cp -rf ~/BSPWM-Dracula-Mint/Dracula-Mint/kitty ~/.config/
cp -rf ~/BSPWM-Dracula-Mint/Dracula-Mint/alacritty ~/.config/
cp -rf ~/BSPWM-Dracula-Mint/Dracula-Mint/rofi ~/.config/
cp -rf ~/BSPWM-Dracula-Mint/Dracula-Mint/sxhkd ~/.config/
cp -rf ~/BSPWM-Dracula-Mint/Dracula-Mint/xcolor-pick ~/.config/
cp -rf ~/BSPWM-Dracula-Mint/Dracula-Mint/calcurse ~/.config/
cp -rf ~/BSPWM-Dracula-Mint/Dracula-Mint/gtk-3.0 ~/.config/
cp -rf ~/BSPWM-Dracula-Mint/Dracula-Mint/gtk-4.0 ~/.config/
cp -rf ~/BSPWM-Dracula-Mint/Dracula-Mint/flameshot ~/.config/
cp -rf ~/BSPWM-Dracula-Mint/Dracula-Mint/neofetch ~/.config/
cp -rf ~/BSPWM-Dracula-Mint/Dracula-Mint/.icons ~/


#Hастройка фаерфокса
mkdir -p ~/.mozilla/firefox/n0eij4j3.default-release
cp -rf ~/BSPWM-Dracula-Mint/Dracula-Mint/firefox/profiles.ini ~/.mozilla/firefox/
cp -rf ~/BSPWM-Dracula-Mint/Dracula-Mint/firefox/user.js ~/.mozilla/firefox/n0eij4j3.default-release/
cp -rf ~/BSPWM-Dracula-Mint/Dracula-Mint/firefox/chrome ~/.mozilla/firefox/n0eij4j3.default-release/

# Копируем .xinitrc в домашнюю директорию
cp -f ~/BSPWM-Dracula-Mint/.xinitrc ~/

#Добавление GTK темы
tar -xf ~/BSPWM-Dracula-Mint/Dracula-Mint/Dracula-mint-GTK.tar.gz
tar -xf ~/BSPWM-Dracula-Mint/Dracula-Mint/assets.tar.gz
cp -rf Dracula-mint-GTK ~/.themes/
cp -rf assets ~/.config/

#Установка yay + тема курсора
git clone https://aur.archlinux.org/yay.git ~/yay
cd ~/yay
makepkg -si
yay -S bibata-cursor-theme-bin
yay -S xkblayout-state
yay -S noisetorch

flatpak install flathub com.discordapp.Discord

# Настраиваем права на выполнение
chmod +x ~/.config/bspwm/bspwmrc
chmod +x ~/.config/polybar/launch.sh
chmod +x ~/.config/rofi/network-manager.sh
chmod +x ~/.config/rofi/rofi-power-menu.sh
chmod +x ~/.config/sxhkd/sxhkdrc
chmod +x ~/.config/xcolor-pick/xcolor-pick.sh
chmod +x ~/.config/bspwm/dunstrc
chmod +x ~/.config/bspwm/changevolume
chmod +x ~/.config/bspwm/show_layout_popup.sh

gsettings set org.cinnamon.desktop.default-applications.terminal exec "kitty"

export XCURSOR_THEME=Bibata-Modern-Ice
export XCURSOR_SIZE=24
