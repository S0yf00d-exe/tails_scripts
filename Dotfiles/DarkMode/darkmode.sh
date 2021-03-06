#!/bin/bash


# Enable Dark Mode Theme in Tails
gsettings set org.gnome.desktop.interface gtk-theme 'Adwaita-dark'
gsettings set org.gnome.desktop.background picture-options 'none'
gsettings set org.gnome.desktop.background primary-color '#000000'
gsettings set org.gnome.desktop.background secondary-color '#000000'

#

cd /live/persistence/TailsData_unlocked/dotfiles
mkdir .config
mkdir .config/dconf
mkdir .config/gtk-3.0
cp ~/.config/dconf/user .config/dconf/

#

cd /live/persistence/TailsData_unlocked/dotfiles/config/gtk-3.0
touch config/gtk-3.0/settings.ini
echo '[Settings]
gtk-application-prefer-dark-theme = true
gtk-theme-name = Adwaita-dark' | tee -a config/gtk-3.0/settings.ini

