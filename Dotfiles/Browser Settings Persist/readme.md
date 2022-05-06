# Make Tor Brower Preferences persist each Reboot without persisting your `prefs.js` file which can change or have new features added with each update to the Tor Browser.


**These scripts automate and set autostart Dotfile that set these settings in the browser so you don't have to spend time tweaking each time saving you time eachboot.**
 
- Set Safest Security Level

- Prioritze Onion Addresses

- Disable Accessibility Services

- Show Boomark Toolbar

- Noscript Enabled

- Block Camera Permissions

- Block Notifications Permissions

- Block Location Permissions

- Block Microphone Permissions

- Block VR Permissions

- Block Autoplay Audio/Video

- WebGL Disabled

**The safer script sets security level to *"Safer"* and fully disables WebRTC.**

**You can Add or Remove Browser Preferences by editing the `browser_prefs.sh` script in `/Persistent/scripts/`** 

**The `browser_prefs-nojava.sh` script sets the above setting but fully disables Javascript if you don't trust *"Safest"* to manage javescript.** 


## Note only run the script you want once or you will have to delete/wipe the `/Peristent/scripts/` Folder and the  Dotfiles `/.config/autostart/` Folder. 


