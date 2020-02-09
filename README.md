# fedora-install (Update after installing Fedora 31)

## Fedora software after clean install
### The purpose of this GIT repository
This README page in this repo just serves as personal notes on what to install after a whipe of the root partition.

## Extra repo's
- RPMFusion
```sudo dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm```

- ```sudo dnf -y groupinstall "Development libraries"```
- ```
sudo dnf install docker-ce
sudo dnf install docker-ce --allowerasing
sudo dnf install sdl2-devel ffms2-devel meson gcc make
sudo dnf install java-devel
sudo dnf install -y ark
sudo dnf install -y gradle
sudo dnf install -y ksshaskpass
sudo dnf install -y gradle
sudo dnf group install "Java Development"
sudo dnf install -y gnome-builder
sudo dnf install photoflare
sudo dnf install -y plasma-workspace-wayland
  ```

## Software

### Desktop environment 
- Gnome is fine but KDE gives way more customization options. 
- ```sudo dnf groupinstall -y "KDE Plasma Workspaces" libtool```

### Video editing & graphics
- Open Broadcaster Software
- KDE Non-Linear Video Editor
- Audacity
- Synfig studio
- Krita
- ```sudo dnf install -y obs-studio kdenlive audacity synfig krita inkscape```

### Workflow
- latte dock
- ```sudo dnf install -y latte-dock```

### Containers / Virt
* Vagrant (using libvirt) 
- ```sudo dnf install -y libxslt-devel libxml2-devel libvirt-devel libguestfs-tools-c ruby-devel gcc vagrant qemu libvirt```
- ```vagrant plugin install vagrant-libvirt```
  - Deprecated since f31:
  * VirtualBox
  * docker
  * docker-compose
  * Add user to docker group

### emacs
* Config https://github.com/jhamrick/emacs.git
* reveal

### Database
* mysql-server
* mysql workbench(rpm)

### Browsers 
- Chromium
- ```sudo dnf install -y chromium```

### IDE
* intellij idea (have this one in ~/Apps) 

## Multimedia playback (nonfree)
```dnf install -y gstreamer{1,}-{ffmpeg,libav,plugins-{good,ugly,bad{,-free,-nonfree}}} --setopt=strict=0```

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
- ```sudo dnf install -y steam```

## Other / misc.
- ```
dnf install -y remmina
dnf install -y inkscape
dnf install -y kompare
dnf install -y vlc
dnf install -y podman
dnf install -y android-tools
dnf install -y kde-connect
dnf install -y livecd-tools spin-kickstarts
```

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

