# fedora-install 
## What to do after installing Fedora (Last updated for Fedora 33)
### The purpose of this GIT repository
This README page in this repo just serves as personal notes on what to install after a whipe of the root partition.

## Installation scripts, choose either dnf or flatpak
- [dnf install scipt](install-dnf.sh)
- install-flatpak.sh (if you want to use flatpak in stead of dnf)

## Extra repo's
RPMFusion

## Desktop environment 
- Gnome
  - https://extensions.gnome.org/extension/2311/topicons-plus/
  - https://extensions.gnome.org/extension/307/dash-to-dock/

## Video editing & graphics
- OBS Open Broadcaster Software
- Kdenlive - KDE Non-Linear Video Editor
- Audacity
- Krita


## emacs
* Config https://github.com/jhamrick/emacs.git
* reveal

## Database
* MariaDB (formerly MySQL)
* mysql workbench (rpm)

## Browsers 
- Chromium

## IDE
* intellij idea (have this one in ~/Apps) 

## Multimedia playback (nonfree)

## Citrix client
- RPM Citrix workspace https://www.citrix.com/nl-nl/downloads/workspace-app/linux/workspace-app-for-linux-latest.html
- Config SSL certificates
  - https://www.sslcertificaten.nl/download/Comodo_PositiveSSL/Comodo_PositiveSSL_-_SHA-2
  - copy these crt files to /opt/Citrix/ICAClient/keystore/cacerts

## Customization
### Firefox (default zoom size)
- FF browser default page zoom 
  - adjust the value of 'layout.css.devPixelsPerPx' in about:config (mine is at 1.25) 
(source: https://superuser.com/a/1270947/533120)

### Firefox extensions (synced through Firefox sync)
- Adblock Plus
- I don't care about cookies
- Lastpass
- Darkreader

### Dictionaries
- Woordenboek nederlands (opentaal) https://www.opentaal.org/bestanden/file/4-woordenlijst-v-2-10g-voor-openoffice-org-3

### Fonts
- Yanone Kaffeesatz
- IBM_Plex_Mono   
- JetBrains Mono
- Alegreya        
- FiraCode
- neuropol_x
- Alegreya_Sans   
- 'Source Sans Pro'
- Cabin
- IBM_Plex_Sans    
 

## Games
- Steam

## Utilities
- Syncthing
