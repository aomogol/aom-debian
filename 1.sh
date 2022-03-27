#!/bin/bash
#
############################################################################################
# Author 	: A Onder Mogol
# Website 	:
############################################################################################

sudo usermod -aG sudo $USER

##
sudo apt install -y openjdk-8-jdk
sudo apt install -y firefox chromium torbrowser-launcher
apt-cache policy torbrowser-launcher
sudo apt install -y putty filezilla thunderbird qbittorrent
sudo apt install -y terminator catfish ncdu
## Install restricted-extras & Microsoft Fonts Compatibility
sudo apt install -y ttf-mscorefonts-installer rar unrar libavcodec-extra gstreamer1.0-libav gstreamer1.0-plugins-ugly gstreamer1.0-vaapi fonts-crosextra-carlito fonts-crosextra-caladea

sudo apt install -y synaptic timeshift meld
sudo apt install -y vlc
sudo apt install -y p7zip-full
sudo apt install -y remmina
sudo apt install -y fonts-powerline
####################################################################################################
## çeşitli yazılımlar
sudo apt install -y telegram-desktop grub-customizer neofetch caffeine

# kurulabilir uygulamalar
# sudo apt install variety
####################################################################################################

#nala
echo "deb [arch=amd64,arm64,armhf] http://deb.volian.org/volian/ scar main" | sudo tee /etc/apt/sources.list.d/volian-archive-scar-unstable.list
wget -qO - https://deb.volian.org/volian/scar.key | sudo tee /etc/apt/trusted.gpg.d/volian-archive-scar-unstable.gpg > /dev/null
sudo apt update && sudo apt install nala -y
echo "deb-src http://deb.volian.org/volian/ scar main" | sudo tee -a /etc/apt/sources.list.d/volian-archive-scar-unstable.list


# google chrome
sudo apt install software-properties-common -y
sudo wget -O- https://dl.google.com/linux/linux_signing_key.pub | gpg --dearmor | sudo tee /usr/share/keyrings/chrome.gpg
sudo sh -c 'echo "deb [signed-by=/usr/share/keyrings/chrome.gpg] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt-get update -y
sudo apt install google-chrome-stable -y

#brave
sudo apt install apt-transport-https curl -y
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update -y
sudo apt install brave-browser -y

#opera
sudo apt install apt-transport-https ca-certificates curl software-properties-common wget
wget -qO- https://deb.opera.com/archive.key | sudo apt-key add -
sudo add-apt-repository "deb [arch=i386,amd64] https://deb.opera.com/opera-stable/ stable non-free"
sudo apt update -y
sudo apt install opera-stable -y

# sublime-text
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https -y
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update -y
sudo apt-get install sublime-text -y

#etcher
curl -1sLf 'https://dl.cloudsmith.io/public/balena/etcher/setup.deb.sh' | sudo -E bash
sudo apt update -y
sudo apt-get install balena-etcher-electron -y
sudo apt-cache policy balena-etcher-electron


#spotify
curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | sudo apt-key add -
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install spotify-client -y

# vscodium
sudo apt install curl apt-transport-https gnupg2 -y
curl https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg | gpg --dearmor \
| sudo tee /usr/share/keyrings/vscodium.gpg >/dev/null
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/vscodium.gpg] \
https://download.vscodium.com/debs vscodium main" \
| sudo tee /etc/apt/sources.list.d/vscodium.list
sudo apt update -y
sudo apt install codium -y

# anydesk
sudo apt install wget apt-transport-https gnupg2 -y
curl https://keys.anydesk.com/repos/DEB-GPG-KEY | gpg --dearmor \
| sudo tee /usr/share/keyrings/anydesk.gpg >/dev/null
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/anydesk.gpg] \
http://deb.anydesk.com/ all main" \ | sudo tee /etc/apt/sources.list.d/anydesk.list
sudo apt update -y
sudo apt install anydesk -y

#zoom
wget https://zoom.us/client/latest/zoom_amd64.deb
sudo apt install ./zoom_amd64.deb -y

#discord
wget http://ftp.mx.debian.org/debian/pool/main/libi/libindicator/libindicator3-7_0.5.0-3+b1_amd64.deb
sudo apt install -y  ./libindicator3-7_*_amd64.deb
wget http://ftp.mx.debian.org/debian/pool/main/liba/libappindicator/libappindicator3-1_0.4.92-7_amd64.deb
sudo apt install -y ./libappindicator3-1_*_amd64.deb
wget https://dl.discordapp.net/apps/linux/0.0.16/discord-0.0.16.deb
sudo apt install -y ./discord-0.0.16.deb


# development tools
####################### go
wget https://golang.org/dl/go1.17.linux-amd64.tar.gz
sudo tar -zxvf go1.17.linux-amd64.tar.gz -C /usr/local/
echo "export PATH=/usr/local/go/bin:${PATH}" | sudo tee /etc/profile.d/go.sh
source /etc/profile.d/go.sh
echo "export PATH=/usr/local/go/bin:${PATH}" | sudo tee -a $HOME/.profile
source $HOME/.profile
# test etmek için  go env


# ceşitli development tools
sudo apt install -y git
sudo apt install -y python3 python3-pip


####################################################################################################
# qemu
sudo apt install -y  qemu-kvm libvirt-clients libvirt-daemon-system bridge-utils virtinst libvirt-daemon bridge-utils
sudo apt install virt-manager -y
sudo virsh net-list --all
sudo virsh net-start default
sudo virsh net-autostart default
sudo modprobe vhost_net
####################################################################################################
####################################################################################################
### nvidia
sudo apt install -y nvidia-detect
sudo nvidia-detect
sudo apt install nvidia-driver

