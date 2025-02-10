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
bash setup_bspwm.sh
```

Перезапуститесь командой:
```
reboot
```

## ДОПОЛНИТЕЛЬНАЯ НАСТРОЙКА
<br /> 

Что бы изменить расширение экрана в файле ~/.config/bspwm/bspwmrc на 4 строке изменить "Virtual1" на название вашего монитора (узнать можно прописав в терминале xrandr, под строкой Screen 0), и там же 1920х1080 изменить на своё расширение. Так же можно прописать новую строчку, с именем и расширением вашего второго монитора.

Что бы заменить обои, нужно в папке ~/.config/bgimages заменить картинку "BG.jpg" на свою с таким же названием, или в файле ~/.config/bspwm/bspwmrc в 5 строке изменить папку или название.

Замените комбинации клавиш в ~/.config/sxhkd/sxhkdrc на нужные вам.
Перезагрузитесь.  

Что бы поставить подходящую тему в "midnight commander", нужно зайти в сам "midnight commander", сверху нажать options, appearance и в пункте "Skin" выбрать тему "modarin256-defbg".



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
Из ~/BSPWM-Dracula-Mint/Dracula-Mint скопировать все кроме "Gradient-Dark-GTK.tar.gz" и ".icons" в ~/.config,
а Gradient-Dark-GTK.tar.gz разпаковать в папку ~/.themes
```
tar -xf Gradient-Dark-GTK.tar.gz
```

.xinitrc скопировать в домашний каталог ~/

Так же файлы ~/.config/bspwm/bspwmrc, ~/.config/bspwm/dunstrc, ~/.config/polybar/launch.sh, ~/.config/rofi/network-manager.sh, ~/.config/rofi/rofi-power-menu.sh, ~/.config/sxhkd/sxhkdrc, ~/.config/xcolor-pick/xcolor-pick.sh, ~/.config/bspwm/changevolume нужно сделать испоняемыми (если они не исполняемые по стандарту) командой:
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
sudo pacman -S kitty bspwm nemo sxhkd xorg xorg-server xorg-xinit neovim picom polybar python3 python-pywal nitrogen rofi firefox feh ttf-jetbrains-mono ttf-firacode-nerd neofetch micro zenity calcurse flameshot mc dunst libnotify xcolor pamixer udiskie vlc eog
```

# FIREFOX

Что бы включить тему для фаерфокса, нужно перейти по ссылке:
```
https://color.firefox.com/?theme=XQAAAAKsAQAAAAAAAABBKYhm849SCia9U4KEGccwS-xMDPr2oHyICZ7aeRR_-nu52zZ2ZXxbupuBL22_MaHKFJ4CpG01p8Gu5LBo4eY2XoiQBWX45Om0_HEvL85ZdwiN4vc0Lbmf68YP5uXuI4CEVBdJBVpznXhaTC69-INqWH8dhUcDF4cgJLdHainS94q5UMAF610ZLCcqjPr6RJLa-G2ky7ZXD8FXwj6smMmYCRlya-ah2J84TX3rz2gjGVNIb-vs00QlJpE9TC1Qigbf0n5gcsxP_f7ynl2qu7heypsDy3Hjlbw5lPKu88iMJUOqrB8Ijt-Da-QFbP5F22zsPXKWslPRQTq8_vbr2mI
```
После нажать на кнопку "Add Firefox Color". Вас перекинет в магазин расширений, где вы должны будете добавить это расширение.

# Курсор

Сначала нужно подключить AUR.
```
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```

После установите сам курсор
```
yay -S bibata-cursor-theme-bin
```

После скопируйте из ~/BSPWM-Dracula-Mint/Dracula-Mint папку .icons в домашний каталог.
  
# ИНФО
<br /> 

|DISTRO|ArchLinux|
| ------ | ------ |
|WM|BSPWM|
|BAR|Polybar|
|LAUNCHER|rofi|
|TERMINAL|kitty|
|FONT|JetBrains Mono|
|CURSOR|Bibata Modern Classic|
