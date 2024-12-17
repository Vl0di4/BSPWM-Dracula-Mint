# BSPWM DRACULA-MINT АВТОМАТИЧЕСКАЯ УСТАНОВКА
<br /> 
Установить git:
```
sudo pacman -S git
```

Склонировать репозиторий:
```
git clone https://github.com/Vl0di4/BSPWM-Dracula-Mint
```

В ~/BSPWM-Dracula-Mint/ нужно сделать исполняемым и запустить установщик командами
```
chmod +x setup_bspwm.sh
sudo sh setup_bspwm.sh
```

Перезапуститесь командой:
```
reboot
```



# BSPWM DRACULA-MINT РУЧНАЯ УСТАНОВКА
<br /> 

Установить git:
```
sudo pacman -S git
```

Склонировать репозиторий:
```
git clone https://github.com/Vl0di4/BSPWM-Dracula-Mint
```
Из ~/BSPWM-Dracula-Mint/Dracula-Mint скопировать все в ~/.config

.xinitrc скопировать в домашний каталог ~/

Так же файлы ~/.config/bspwm/bspwmrc, ~/.config/polybar/launch.sh, ~/.config/rofi/network-manager.sh, ~/.config/rofi/rofi-power-menu.sh, ~/.config/sxhkd/sxhkdrc, ~/.config/xcolor-pick/xcolor-pick.sh нужно сделать испоняемыми (если они не исполняемые по стандарту) командой:
```
chmod +x <место/имя файла>
```

## ДОПОЛНИТЕЛЬНАЯ НАСТРОЙКА
<br /> 

Что бы изменить расширение экрана в файле ~/.config/bspwm/bspwmrc на 4 строке изменить "Virtual1" на название вашего монитора (узнать можно прописав в терминале xrandr, под строкой Screen 0), и там же 1920х1080 изменить на своё расширение. Так же можно прописать новую строчку, с именем и расширением вашего второго монитора.

Что бы заменить обои, нужно в папке ~/.config/bgimages заменить картинку "BG.jpg" на свою с таким же названием, или в файле ~/.config/bspwm/bspwmrc в 5 строке изменить папку или название.

Замените комбинации клавиш в ~/.config/sxhkd/sxhkdrc на нужные вам.
Перезагрузитесь.  

Что бы поставить подходящую тему в "midnight commander", нужно зайти в сам "midnight commander", сверху нажать options, appearance и в пункте "Skin" выбрать тему "modarin256-defbg".

## СОФТ КОТОРЫЙ НУЖНО ПОСТАВИТЬ
<br /> 

```
sudo pacman -S kitty bspwm sxhkd xorg xorg-server xorg-xinit neovim picom polybar python3 python-pywal nitrogen rofi firefox feh ttf-jetbrains-mono ttf-firacode-nerd neofetch micro zenity calcurse flameshot mc dunst xcolor
```


  
# ИНФО
<br /> 

|DISTRO|ArchLinux|
| ------ | ------ |
|WM|BSPWM|
|BAR|Polybar|
|LAUNCHER|rofi|
|TERMINAL|kitty|
|FONT|JetBrainsMono|
