# fedora-install (Update after installing Fedora 31)

## Fedora software after clean install
### The purpose of this GIT repository
This README page in this repo just serves as personal notes on what to install after a whipe of the root partition.

## Extra repo's
- RPMFusion
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

## Software

### Desktop environment 
- if default is Gnome, also install KDE, Gnome is fine but KDE gives me more customization options. 
sudo dnf groupinstall "KDE Plasma Workspaces" -y

### Video editing & graphics
- Open Broadcaster Software
- KDE Non-Linear Video Editor
- Audacity
- Synfig studio
- Krita
sudo dnf install -y obs-studio kdenlive audacity synfig krita inkscape

### Workflow
- latte dock
sudo dnf install -y latte-dock

### Containers / Virt
* VirtualBox
* docker
* docker-compose
* Add user to docker group

### Database
* mysql-server
* mysql workbench(rpm)


### emacs
* Config 
https://github.com/jhamrick/emacs.git
* reveal

### Browsers 
* Chromium
sudo dnf install -y chromium

### IDE
* intellij idea (have this one in ~/Apps)

## Multimedia playback (nonfree)
dnf install gstreamer{1,}-{ffmpeg,libav,plugins-{good,ugly,bad{,-free,-nonfree}}} --setopt=strict=0


## Customization
### Firefox (default zoom size)
FF browser default page zoom 
adjust the value of 'layout.css.devPixelsPerPx' in about:config (mine is at 1.25) 
(source: https://superuser.com/a/1270947/533120)

### Firefox extensions
- Adblock Plus
- I don't care about cookies
- Lastpass
- Owl - for comfortable reading

### Firefox themes
- Firefox dark theme

### Dictionaries
- Woordenboek nederlands (opentaal)

### Desktop fonts
- Nerdfonts
- Breeze dark

## Games
- Steam
sudo dnf install -y steam



## Partition
- Partition table looks like
/dev/nvme0n1p1  fat32    /boot/efi  (512 MiB)
/dev/nvme0n1p2  xfs      /boot      (  1 GiB)
/dev/nvme0n1p3  lvm2 pv  rhel       (475 GiB)

/dev/rhel
/dev/rhel/home  xfs        /home    (317 GiB)
/dev/rhel/root  xfs        /        (150 GiB)
/dev/rhel/swap  linuxswap  none     (7,7 GiB)
