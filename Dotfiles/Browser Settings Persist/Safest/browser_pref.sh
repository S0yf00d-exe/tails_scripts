#!/bin/bash

mkdir -p Persistent/scripts/

cd Persistent/scripts/

touch browser-preferences.sh
echo 'echo "user_pref(\"extensions.torbutton.security_slider\", 1);
user_pref(\"privacy.prioritizeonions.enabled\", true);
user_pref(\"accessibility.force_disabled\", 1);
user_pref(\"browser.toolbars.bookmarks.visibility\", \"always\");
user_pref(\"extensions.torbutton.noscript_inited\", true);
user_pref(\"permissions.default.camera\", 2);
user_pref(\"permissions.default.desktop-notification\", 2);
user_pref(\"permissions.default.geo\", 2);
user_pref(\"permissions.default.microphone\", 2);
user_pref(\"permissions.default.xr\", 2);
user_pref(\"media.autoplay.default\", 5);
user_pref(\"webgl.disabled\", true);" >> /home/amnesia/.tor-browser/profile.default/user.js'| tee -a Persistent/scripts/browser-preferences.sh

chmod +x Persistent/scripts/browser-preferences.sh
mkdir -p /live/persistence/TailsData_unlocked/dotfiles/.config/autostart/
cd /live/persistence/TailsData_unlocked/dotfiles/.config/autostart/
touch browser-preferences.desktop
echo '[Desktop Entry]
Name=Browser Prefernces
Type=Application
Exec=/home/amnesia/Persistent/scripts/browser-preferences.sh
Terminal=false
X-GNOME-Autostart-enabled=true' | tee -a /live/persistence/TailsData_unlocked/dotfiles/.config/autostart/browser-preferences.desktop
