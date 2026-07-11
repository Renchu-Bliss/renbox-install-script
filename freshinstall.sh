#!/bin/bash

echo "What are we installing?"

echo "1 - aRCeeOS"
echo "2 - aRchCeeOS"
echo "3 - CachOS Cosmic"
echo "4 - JaKooLit"
echo "5 - Caelestia"
echo "6 - DankMS"
echo "7 - HyDE"
echo "8 - NewTypeOS"

read distro;

case $distro in
   1) echo "CHONK ChOnK cHoNk!!";;
   2) echo "Just the Hyprland then...";;
   3) echo "Basic Cachy, it is...";;
   4) echo "Lowest Common Denominator";;
   5) echo "Does this count as indie shit?";;
   6) echo "Easy Enough...";;
   7) echo "Cheat code pretty...";;
   8) echo "You're a regular Lois & Clark... no wait, that's Superman";;
   *) echo "Nuh huh uh... You didn't say the magic word."
esac   
 
   
if [ $distro -eq 3 ]
then  

#CachyOS Custom Fresh Install Script Cosmic Desktop

#pacman installs

sudo pacman -S --needed --noconfirm aria2 base-devel cmatrix cosmic-store curl ffmpeg flatpak zip unzip fzf git grep mpv proton-mail-bin proton-pass proton-vpn-cli rofi sed wget yt-dlp zen-browser-bin patch discord cowsay pokemon-colorscripts-git strawberry


#get yay

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
cd


#yay installs

yay -S --noconfirm   ani-cli ani-skip-git mangal-bin


#flatpak installs

sudo flatpak install flathub tv.kodi.Kodi



#cleaning

sudo pacman -R firefox


# unleash the dots

unzip -o media.zip

unzip -o cosmic-dotfiles.zip


#signins

protonvpn signin lauren.marie.bliss@pm.me





reboot


fi




if [ $distro -eq 2 ]
then

# aRchCeeOS

#pacman installs

sudo pacman -S --needed --noconfirm aria2 base-devel cmatrix curl ffmpeg foot openssl flatpak zip unzip fzf git grep mpv rofi sed wget yt-dlp patch cowsay

#get yay

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
cd


#yay installs

yay -S --noconfirm caelestia-shell-git caelestia-cli-git caelestia-gif ani-cli mangal-bin wofi strawberry proton-vpn-cli proton-pass proton-mail-bin zen-browser-bin discord


#flatpak installs

sudo flatpak install flathub tv.kodi.Kodi


#cleaning

sudo pacman -R firefox

#patches

sudo ani-cli -U

curl -fsSL https://install.danklinux.com | sh

#signins

protonvpn signin lauren.marie.bliss@pm.me

sudo systemctl disable greetd

#JaKooLit dots

sh <(curl -L https://raw.githubusercontent.com/LinuxBeginnings/Arch-Hyprland/main/auto-install.sh)


#The lren bits

sudo rm -rf Pictures

unzip -o media.zip

unzip -o archceeos-dotfiles.zip

reboot

fi


if [ $distro -eq 5 ]
then  

#Caelestia

#pacman installs

sudo pacman -S --needed --noconfirm aria2 base-devel cmatrix curl ffmpeg flatpak fzf git grep mpv rofi sed wget yt-dlp patch cowsay


#get yay

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
cd


#yay installs

yay -S --noconfirm ani-cli mangal-bin caelestia-cli-git 

# The Deed

caelestia install


#signins

protonvpn signin lauren.marie.bliss@pm.me

unzip -o media.zip

reboot


fi



if [ $distro -eq 4 ]
then
sh <(curl -L https://raw.githubusercontent.com/LinuxBeginnings/Arch-Hyprland/main/auto-install.sh)


fi



if [ $distro -eq 1 ]
then  

#aRCeeOS

#pacman installs

sudo pacman -S --needed --noconfirm aria2 base-devel cmatrix cosmic-store curl ffmpeg foot openssl flatpak zip unzip fzf git grep mpv proton-mail-bin proton-pass proton-vpn-cli rofi sed wget strawberry yt-dlp zen-browser-bin patch gnome-tweaks gnome-menus discord cowsay openssl qbittorrent gnome-browser-connector slim lightdm lightdm-gtk-greeter-settings lightdm-gtk-greeter lightdm-slick-greeter zig gdm-settings

#get yay

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
cd


#yay installs

yay -S --noconfirm caelestia-shell-git caelestia-cli-git caelestia-gif ani-cli mangal-bin wofi gnome-shell-extension-forge-git chromium-extension-web-store ungoogled-chromium-bin 


#flatpak installs

sudo flatpak install flathub tv.kodi.Kodi


#cleaning

sudo pacman -R firefox

#patches

sudo ani-cli -U

curl -fsSL https://install.danklinux.com | sh

#signins

protonvpn signin lauren.marie.bliss@pm.me

sudo systemctl disable greetd

#JaKooLit dots

sh <(curl -L https://raw.githubusercontent.com/LinuxBeginnings/Arch-Hyprland/main/auto-install.sh)

#all the lren bits

sudo rm -rf Pictures

unzip -o media.zip

unzip -o arceeos-dotfiles.zip

unzip gnome-backup.zip

sudo pacman -R xfce-polkit

git clone https://codeberg.org/fairyglade/ly.git
cd ly
zig build

sudo zig build installexe -Dinit_system=systemd

cd

sudo systemctl disable sddm

sudo systemctl enable ly@tty2

sudo systemctl disable getty@tty2.service

sudo cp ly-config.ini /etc/ly/config.ini

./gnome-cfg-exporter.sh --restore gnome-backup



reboot

fi




if [ $distro -eq 6 ]
then

#Generic Dank

curl -fsSL https://install.danklinux.com | sh

fi


if [ $distro -eq 7 ]
then

sudo pacman -S --needed -- noconfirm git base-devel
git clone --depth 1 https://github.com/HyDE-Project/HyDE ~/HyDE
cd ~/HyDE/Scripts
./install.sh

fi


if [ $distro -eq 8 ]
then  

#NewTypeOS

#pacman installs

sudo pacman -S --needed --noconfirm aria2 base-devel papirus-icon-theme cmatrix curl ffmpeg foot openssl flatpak zip unzip fzf git grep mpv proton-mail-bin proton-pass proton-vpn-cli rofi sed wget strawberry yt-dlp zen-browser-bin patch gnome-tweaks gnome-menus discord cowsay openssl qbittorrent gnome-browser-connector zig gdm-settings

#get yay

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
cd


#yay installs

yay -S --noconfirm ani-cli mangal-bin gnome-shell-extension-forge-git chromium-extension-web-store ungoogled-chromium-bin mangowm-git noctalia-git


#flatpak installs

sudo flatpak install flathub tv.kodi.Kodi


#cleaning

sudo pacman -R firefox

#patches

sudo ani-cli -U

#signins

protonvpn signin lauren.marie.bliss@pm.me

sudo systemctl --now disable gdm


#all the lren bits

sudo rm -rf Pictures

unzip -o media.zip

unzip -o NewTypeOS-dotfiles.zip

unzip gnome-backup.zip


git clone https://codeberg.org/fairyglade/ly.git
cd ly
zig build

sudo zig build installexe -Dinit_system=systemd

cd

sudo systemctl enable ly@tty2

sudo systemctl disable getty@tty2.service

sudo cp ly-config.ini /etc/ly/config.ini

./gnome-cfg-exporter.sh --restore gnome-backup



reboot

fi

