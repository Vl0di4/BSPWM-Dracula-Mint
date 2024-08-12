# BSPWM DRACULA-MINT
<br />
## УСТАНОВКА КОНФИГА
  
Склонировать репозиторий:
```
git clone https://github.com/Vl0di4/BSPWM-Dracula-Mint
```
  
Из ~/BSPWM-Dracula-Mint/Dracula-Mint скопировать все в ~/.config
  
В ~/.xinitrc прописать:  
```
sxhkd &  
exec bspwm
```

Так же файлы ~/.config/bspwm/bspwmrc, ~/.config/polybar/launch.sh, ~/.config/rofi/nightmode.sh, ~/.config/rofi/rofi-power-menu.sh, ~/.config/sxhkd/sxhkdrc сделать испоняемыми командой:
```
chmod +x <место/имя файла>
```

Что бы изменить расширение экрана в файле ~/.config/bspwm/bspwmrc на 4 строке изменить "Virtual1" на название вашего монитора (узнать можно прописав в терминале xrandr, под строкой Screen 0), и там же 1920х1080 изменить на своё расширение. Так же можно прописать новую строчку, с именем и расширением вашего второго монитора.
Что бы заменить обои, нужно в папке ~/.config/bgimages заменить картинку "BG.jpg" на свою с таким же названием, или в файле ~/.config/bspwm/bspwmrc в 5 строке изменить папку или название.
Замените комбинации клавиш в ~/.config/sxhkd/sxhkdrc на нужный тебе.
Перезагрузится.  

## СОФТ КОТОРЫЙ Я СТАВИЛ
```
sudo pacman -S git kitty bspwm sxhkd xorg xorg-server xorg-xinit neovim picom polybar python3 python-pywal nitrogen rofi firefox feh ttf-jetbrains-mono ttf-firacode-nerd neofetch micro zenity nemo
```
  
# ИНФО
|DISTRO|[ArchLinux](https://archlinux.org/)|
| ------ | ------ |
|WM|[BSPWM]|
|BAR|[Polybar]|
|LAUNCHER|[rofi]|
|TERMINAL|[kitty]|
|FONT|[JetBrainsMono]|
