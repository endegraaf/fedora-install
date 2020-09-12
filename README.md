# fedora-install 
## What to do after installing Fedora (Last updated for Fedora 32)
### The purpose of this GIT repository
This README page in this repo just serves as personal notes on what to install after a whipe of the root partition.

## Extra repo's
RPMFusion
```
sudo dnf -y install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

sudo dnf -y groupinstall "Development libraries"
sudo dnf -y groupinstall "Java Development"
sudo dnf -y groupinstall "KDE Plasma Workspaces" libtool
sudo dnf install -y sdl2-devel ffms2-devel meson gcc make java-devel ark gradle ksshaskpass gradle gnome-builder photoflare plasma-workspace-wayland vim-enhanced
sudo dnf install -y libxslt-devel libxml2-devel libvirt-devel libguestfs-tools-c ruby-devel gcc vagrant qemu libvirt
vagrant plugin install vagrant-libvirt
dnf install -y remmina inkscape kompare vlc podman android-tools kde-connect livecd-tools spin-kickstarts
sudo dnf install -y obs-studio kdenlive audacity synfig krita inkscape latte-dock chromium
sudo dnf install -y gstreamer{1,}-{ffmpeg,libav,plugins-{good,ugly,bad{,-free,-nonfree}}} --setopt=strict=0
sudo dnf install -y steam
```

### Desktop environment 
- Gnome is fine but KDE gives way more customization options. 


### Video editing & graphics
- Open Broadcaster Software
- KDE Non-Linear Video Editor
- Audacity
- Synfig studio
- Krita


### Workflow
- latte dock


### Containers / Virt
* Vagrant (using libvirt)

### emacs
* Config https://github.com/jhamrick/emacs.git
* reveal

### Database
* mysql-server
* mysql workbench(rpm)

### Browsers 
- Chromium


### IDE
* intellij idea (have this one in ~/Apps) 

## Multimedia playback (nonfree)


## Citrix client
- RPM Citrix workspace
- Config SSL certificates
  - https://www.sslcertificaten.nl/download/Comodo_PositiveSSL/Comodo_PositiveSSL_-_SHA-2

## Customization
### Firefox (default zoom size)
- FF browser default page zoom 
  - adjust the value of 'layout.css.devPixelsPerPx' in about:config (mine is at 1.25) 
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
- Yanone Kaffeesatz

## Games
- Steam


## Partition
- Partition table looks like
```
/dev/nvme0n1p1  fat32    /boot/efi  (512 MiB)
/dev/nvme0n1p2  xfs      /boot      (  1 GiB)
/dev/nvme0n1p3  lvm2 pv  rhel       (475 GiB)

/dev/rhel
/dev/rhel/home  xfs        /home    (317 GiB)
/dev/rhel/root  xfs        /        (150 GiB)
/dev/rhel/swap  linuxswap  none     (7,7 GiB)
```

