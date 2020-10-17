sudo dnf -y install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

sudo dnf -y groupinstall "Development libraries"
sudo dnf -y groupinstall "Java Development"
sudo dnf -y groupinstall "KDE Plasma Workspaces" libtool
sudo dnf install -y sdl2-devel ffms2-devel meson gcc make java-devel ark gradle ksshaskpass gradle gnome-builder photoflare plasma-workspace-wayland vim-enhanced
sudo dnf install -y remmina inkscape kompare vlc podman android-tools kde-connect livecd-tools 
sudo dnf install -y obs-studio kdenlive audacity synfig krita inkscape latte-dock chromium
sudo dnf install -y gstreamer{1,}-{ffmpeg,libav,plugins-{good,ugly,bad{,-free,-nonfree}}} --setopt=strict=0
sudo dnf install -y steam copyq ksnip syncthing syncthing-cli syncthing-tools

