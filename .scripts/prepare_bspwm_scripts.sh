#!/bin/sh

cd /tmp
rm -rf bspwm
mkdir bspwm
mkdir bspwm/.config
cp -rf $HOME/.config/bspwm $HOME/.config/dunst $HOME/.config/sxhkd bspwm/.config
cp -rf /etc/profile bspwm
cp -rf $HOME/.scripts bspwm
echo "#!/bin/sh

cp -rf profile /etc
cp -rf .config $HOME

echo \"Install the following packages: 'dunst', 'lemonbar-xft-git', 'feh', 'pa-applet-git', 'libnm-glib', 'acpi' and all the packages here : 'https://github.com/windelicato/dotfiles/wiki/bspwm-for-dummies' \"

" > bspwm/install.sh

chmod +x bspwm/install.sh
