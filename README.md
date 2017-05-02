# fedora-install
## Fedora software after clean install

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
* chrome (rpm)

### IDE
* intellij idea

## Eye strain reduction
> Note: Redshift is not working under Wayland

* redshift redshift-gtk
`sudo dnf copr enable mystro256/gnome-redshift`
`sudo dnf install gnome-shell-extension-redshift`

## Multimedia playback (nonfree)
* enable RPM fusion 
> $ su -c 'dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm'

Source : > https://linuxconfig.org/install-kodi-vlc-and-multimedia-libraries-on-fedora-25-linux

* install 
> dnf install gstreamer{1,}-{ffmpeg,libav,plugins-{good,ugly,bad{,-free,-nonfree}}} --setopt=strict=0


### PHP (Behat development)
* dnf install php php-mbstring php-mysqlnd
* xdebug

