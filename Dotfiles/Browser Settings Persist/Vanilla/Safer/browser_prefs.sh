#!/bin/bash

mkdir -p /home/amnesia/Persistent/scripts/

cd /home/amnesia/Persistent/scripts/

touch browser-preferences.sh
echo '#!/bin/bash 
echo "user_pref(\"extensions.torbutton.security_slider\", 1);
user_pref(\"privacy.prioritizeonions.enabled\", true);
user_pref(\"browser.toolbars.bookmarks.visibility\", \"always\");" >> /home/amnesia/.tor-browser/profile.default/user.js' | tee -a /home/amnesia/Persistent/scripts/browser-preferences.sh

chmod +x /home/amnesia/Persistent/scripts/browser-preferences.sh
mkdir -p /live/persistence/TailsData_unlocked/dotfiles/.config/autostart/
cd /live/persistence/TailsData_unlocked/dotfiles/.config/autostart/
touch browser-preferences.desktop
echo '[Desktop Entry]
Name=Browser Preferences
Type=Application
Exec=/home/amnesia/Persistent/scripts/browser-preferences.sh
Terminal=false
X-GNOME-Autostart-enabled=true' | tee -a /live/persistence/TailsData_unlocked/dotfiles/.config/autostart/browser-preferences.desktop
