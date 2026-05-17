#!/bin/bash

echo "What are we installing?"

echo "1 - CachyOS Cosmic"
echo "2 - Arch with JaKooLit"
echo "3 - Cachy Plasma"
echo "4 - Cachy Mango Caelestia"

read distro;

case $distro in
   1) echo "Cachy, it is...";;
   2) echo "Looks like the indie shit...";;
   3) echo "Does this count as DIY?";;
   4) echo "Okay... Pretty and polished, and very fruity this go. ^_^";;
   *) echo "Nuh huh uh... You didn't say the magic word."
esac   
 
   
if [ $distro -eq 1 ]
then  

#CachyOS Custom Fresh Install Script Cosmic Desktop

#pacman installs

sudo pacman -S --needed --noconfirm aria2 base-devel cmatrix cosmic-store curl ffmpeg flatpak zip unzip fzf git grep krita mpv proton-mail-bin proton-pass proton-vpn-cli rofi sed wget yt-dlp zen-browser-bin patch discord cowsay pokemon-colorscripts-git dms-shell


#get yay

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd


#yay installs

yay -S --removemake --batchinstall --noconfirm --clearnafter --aur --answerclean  "NotInstalled" --answerdiff "None" --answeredit=None ani-cli ani-skip-git mangal-bin rhythmbox


#flatpak installs

sudo flatpak install flathub tv.kodi.Kodi



#cleaning

sudo pacman -R firefox

#patches

curl -sL https://raw.githubusercontent.com/synacktraa/ani-skip/master/install | sh



#signins

protonvpn signin lauren.marie.bliss@pm.me


reboot


fi




if [ $distro -eq 2 ]
then

# Arch Jakoolit Install


#  pacman installs
 
sudo pacman -S --needed --noconfirm aria2 base-devel cmake make zip unzip cmatrix curl grep sed fzf git wget yt-dlp cowsay flatpak ffmpeg mpv patch qbittorrent

# yay

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd


# yay installs

yay -S --removemake --batchinstall --noconfirm --aur --answerclean "NotInstalled" --answerdiff "None" ani-cli lobster-git ani-skip-git wofi mangal-bin proton-mail-bin proton-pass proton-vpn-cli strawberry zen-browser-bin discord caelestia-cli caelestia-shell caelestia-gif fuzzel


#flatpak installs

sudo flatpak install flathub tv.kodi.Kodi

#patches


curl -sL https://raw.githubusercontent.com/synacktraa/ani-skip/master/install | sh



#JaKooLit dots

sh <(curl -L https://raw.githubusercontent.com/LinuxBeginnings/Arch-Hyprland/main/auto-install.sh)

fi


if [ $distro -eq 3 ]
then  

#CachyOS Plasma Custom Fresh Install Script Cosmic Desktop

#pacman installs

sudo pacman -S --needed --noconfirm aria2 base-devel cmake make cmatrix curl ffmpeg flatpak fzf git grep krita mpv proton-mail-bin proton-pass proton-vpn-cli rofi sed strawberry wget yt-dlp zen-browser-bin patch discord cowsay pokemon-colorscripts-git


#get yay

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd


#yay installs

yay -S --removemake --batchinstall --noconfirm --aur --answerclean "NotInstalled" --answerdiff "None" ani-cli lobster-git ani-skip-git mangal-bin neofetch



#flatpak installs

sudo flatpak install flathub tv.kodi.Kodi



#cleaning

sudo pacman -R firefox

yay -c

#patches

git clone -b allanime-fix https://github.com/justchokingaround/ani-cli.git ani-cli-fix
sudo install -m 755 ./ani-cli-fix/ani-cli "$(which ani-cli)"
hash -r
ani-cli --version


curl -sL https://raw.githubusercontent.com/synacktraa/ani-skip/master/install | sh



#signins

protonvpn signin lauren.marie.bliss@pm.me


reboot


fi



if [ $distro -eq 4 ]
then

# Cachy Caelestia Install


#  pacman installs
 
sudo pacman -S --needed --noconfirm aria2 base-devel cmake make cmatrix curl grep sed fzf git wget yt-dlp cowsay flatpak ffmpeg mpv patch proton-mail-bin proton-pass proton-vpn-cli discord zen-browser-bin strawberry

# yay

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd


# yay installs

yay -S --removemake --batchinstall --noconfirm --aur --answerclean "NotInstalled" --answerdiff "None" caelestia-shell caelestia-cli caelestia-gif ani-cli lobster-git ani-skip-git mangal-bin neofetch foot nemo github-desktop 


#flatpak installs

sudo flatpak install flathub tv.kodi.Kodi

#patches

git clone -b allanime-fix https://github.com/justchokingaround/ani-cli.git ani-cli-fix
sudo install -m 755 ./ani-cli-fix/ani-cli "$(which ani-cli)"
hash -r
ani-cli --version


curl -sL https://raw.githubusercontent.com/synacktraa/ani-skip/master/install | sh



#Caelestia dots

git clone https://github.com/caelestia-dots/caelestia.git ~/.local/share/caelestia
~/.local/share/caelestia/install.fish --noconfirm --discord --vscode=codium --zen --aurhelper=yay

fi

