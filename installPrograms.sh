#!/bin/bash

#-------------------- Update system --------------------#
sudo pacman -Syu

#-------------------- Install xorg & video drivers --------------------#
sudo pacman -S --needed xorg-server xorg-xrandr lxrandr mesa xf86-video-amdgpu nvidia

#-------------------- Install i3 wm --------------------#
sudo pacman -S --needed i3-gaps i3blocks polybar dmenu

#-------------------- Install basic apps --------------------#
sudo pacman -S --needed alacritty firefox gwenview feh vlc spectacle ark brightnessctl xfce4-appfinder xdg-utils polkit polkit-gnome

#-------------------- Install network --------------------#
sudo pacman -S --needed networkmanager nftables network-manager-applet ntp

#-------------------- Install music settings & BT / BT music --------------------#
sudo pacman -S --needed pulseaudio pulseaudio-alsa pulsemixer bluez blueman pulseaudio-bluetooth

#-------------------- Install text / emoji support % dark Mode --------------------#
sudo pacman -S --needed ttf-fira-mono ttf-liberation noto-fonts-emoji lxappearance-gtk3 breeze breeze-gtk

#-------------------- Install notifications & keyring & openssh --------------------#
sudo pacman -S --needed notification-daemon dunst gnome-keyring libsecret seahorse openssh

#-------------------- Install nemo and addons --------------------#
sudo pacman -S --needed nemo nemo-fileroller gsettings-desktop-schemas
gsettings set org.nemo.desktop show-desktop-icons false 

#-------------------- Install YT-DLP and addons --------------------#
sudo pacman -S --needed yt-dlp aria2 atomicparsley ffmpeg python-mutagen python-pycryptodomex python-websockets rtmpdump

#-------------------- Install virtual machine --------------------#
sudo pacman -S --needed virt-manager qemu-desktop libvirt edk2-ovmf dnsmasq nftables network-manager-applet

#-------------------- Install apps --------------------#
sudo pacman -S --needed prusa-slicer blender

#-------------------- Install joplin --------------------#
NPM_CONFIG_PREFIX=~/.joplin-bin npm install -g joplin
sudo ln -s ~/.joplin-bin/bin/joplin /usr/bin/joplin

#-------------------- Install development packages --------------------#
sudo pacman -S --needed git vim nodejs npm

#-------------------- Enable modules --------------------#
systemctl enable lightdm.service
systemctl enable ntpd.service
systemctl enable bluetooth.service
sudo usermod -aG raul libvirt

#-------------------- Setup time & date & locale --------------------#
sudo timedatectl set-timezone Europe/Bucharest
ntpd -qg
sudo hwclock --systohc

#-------------------- Install YAY & VS-Code --------------------#
if [ ! -d $HOME/yay ]
then
    printf "\n\n            Installing yay \n"
    cd $HOME
    git clone https://aur.archlinux.org/yay.git
    cd $HOME/yay
    makepkg -si
fi
yay -S visual-studio-code-bin 
yay -S optimus-manager
