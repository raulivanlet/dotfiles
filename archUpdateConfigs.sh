#!/bin/bash

#--------------------Update Alacritty
printf "\n\n            Update Alacritty Settings...\n"
if [ ! -d ~/.config/alacritty ]; then mkdir $HOME/.config/alacritty; fi
if [ -f ~/.config/alacritty/alacritty.yml ]; then rm $HOME/.config/alacritty/alacritty.yml; fi  
cp configs/alacritty.yml $HOME/.config/alacritty/alacritty.yml


#--------------------Update Grub
printf "\n\n            Update Grub Settings...\n"
if [ -f /etc/default/grub ]; then sudo rm /etc/default/grub; fi
sudo cp configs/grub /etc/default/grub
sudo grub-mkconfig -o /boot/grub/grub.cfg


#--------------------Update I3
printf "\n\n            Update I3 Gaps Settings...\n"
if [ ! -d ~/.config/i3 ]; then mkdir $HOME/.config/i3; fi
if [ -f ~/.config/i3/config ]; then rm ~/.config/i3/config; fi
cp configs/i3_config.txt $HOME/.config/i3/config


#--------------------Update Polybar
printf "\n\n            Update Polybar Settings...\n"
if [ ! -d ~/.config/polybar ]; then mkdir ~/.config/polybar; fi
if [ -f ~/.config/polybar/config.ini ]; then rm $HOME/.config/polybar/config.ini; fi
cp configs/polybar $HOME/.config/polybar/config.ini


#--------------------Update Polybar Launcher
printf "\n\n            Update Polybar Launcher Settings...\n"
if [ -f ~/.config/polybar/launch.sh ]; then rm $HOME/.config/polybar/launch.sh; fi
cp configs/polybar_launch.sh $HOME/.config/polybar/launch.sh


#--------------------Update .profile
printf "\n\n            Updating .profile...\n"
if [ ! -f ~/.profile ]; then rm $HOME/.profile; fi
cp configs/profile.txt $HOME/.profile


#--------------------Disable Mouse Acceleration
printf "\n\n            Updating Mouse Acceleration...\n"
if [ -f /etc/X11/xorg.conf.d/50-mouse-acceleration.conf ]; then sudo rm /etc/X11/xorg.conf.d/50-mouse-acceleration.conf; fi
sudo cp configs/x_mouse_accel.txt /etc/X11/xorg.conf.d/50-mouse-acceleration.conf


#--------------------Update Grub Background Image
#printf "\n\n            Update Grub Background Image...\n"
#if [ -f /boot/grub/grubbootloaderpic.png ]; then sudo rm /boot/grub/grubbootloaderpic.png; fi
#sudo cp images/grubbootloaderpic.png /boot/grub/grubbootloaderpic.png
#sudo grub-mkconfig -o /boot/grub/grub.cfg