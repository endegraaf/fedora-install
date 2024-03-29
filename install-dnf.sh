sudo dnf -y install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf update 
sudo dnf -y groupinstall "Development libraries" "Java Development"
sudo dnf install -y sdl2-devel ffms2-devel meson gcc make java-devel ark gradle gnome-builder vim-enhanced remmina inkscape kompare vlc podman android-tools obs-studio kdenlive audacity krita inkscape chromium gstreamer{1,}-{ffmpeg,libav,plugins-{good,ugly,bad{,-free,-nonfree}}} --setopt=strict=0 steam spectacle syncthing emacs
sudo dnf remove -y totem
sudo dnf install -y ibm-plex-fonts-all
sudo fc-cache -f -v
