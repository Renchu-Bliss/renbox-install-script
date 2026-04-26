#!/bin/bash

echo "What are we installing?"

echo "1 - CachyOS"
echo "2 - Arch with JaKooLit"

read distro;

case $distro in
   1) echo "Cachy, it is...";;
   2) echo "Looks like the indie shit...";;
   *) echo "Nuh huh uh... You didn't say the magic word."
esac   
 
   
if [ $distro -eq 1 ]
then  

#CachyOS Custom Fresh Install Script Cosmic Desktop

#pacman installs

sudo pacman -S --needed --noconfirm aria2 base-devel cmake make cmatrix cosmic-store curl ffmpeg flatpak fzf git grep krita mpv proton-mail-bin proton-pass proton-vpn-cli rofi sed strawberry wget yt-dlp zen-browser-bin patch discord cowsay pokemon-colorscripts-git


#get yay

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd


#yay installs

yay -S --removemake --batchinstall --aur --answerclean "NotInstalled" --answerdiff "None" ani-cli lobster-git ani-skip-git mangal-bin opera-gx neofetch


#flatpak installs

sudo flatpak install flathub tv.kodi.Kodi dev.edfloreshz.CosmicTweaks dev.cappsy.CosmicExtAppletDict …vomar.cosmic-ext-applet-bitrate io.github.cosmic_utils.cosmic-ext-applet-clipboard-manager com.vintagetechie.CosmicExtAppletTempest


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




if [ $distro -eq 2 ]
then

# Arch Jakoolit Install


#  pacman installs
 
sudo pacman -S --needed --noconfirm aria2 base-devel cmake make cmatrix curl grep sed fzf git wget yt-dlp cowsay flatpak ffmpeg mpv patch

# yay

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd


# yay installs

yay -S --removemake --batchinstall --aur --answerclean "NotInstalled" --answerdiff "None" ani-cli lobster-git ani-skip-git mangal-bin neofetch proton-mail-bin proton-pass proton-vpn-cli strawberry zen-browser-bin discord


#flatpak installs

sudo flatpak install flathub tv.kodi.Kodi

#patches

git clone -b allanime-fix https://github.com/justchokingaround/ani-cli.git ani-cli-fix
sudo install -m 755 ./ani-cli-fix/ani-cli "$(which ani-cli)"
hash -r
ani-cli --version


curl -sL https://raw.githubusercontent.com/synacktraa/ani-skip/master/install | sh



#signins

protonvpn signin lauren.marie.bliss@pm.me



#JaKooLit dots

sh <(curl -L https://raw.githubusercontent.com/LinuxBeginnings/Arch-Hyprland/main/auto-install.sh)

fi
