#!/bin/bash

#--------------------Update Alacritty
if [ ! -d ~/.config/alacritty ]; then mkdir $HOME/.config/alacritty; fi
if [ -f ~/.config/alacritty/alacritty.yml ];
    then cat configs/arch/alacritty.yml > $HOME/.config/alacritty/alacritty.yml;
    else cp configs/arch/alacritty.yml $HOME/.config/alacritty/alacritty.yml;
fi

#--------------------Update Grub
if [ -f /etc/default/grub ];
    then sudo bash -c 'cat configs/arch/grub > /etc/default/grub';
    else sudo cp configs/arch/grub /etc/default/grub;
fi

#--------------------Update I3
if [ ! -d ~/.config/i3 ]; then mkdir $HOME/.config/i3; fi
if [ -f ~/.config/i3/config ];
    then cat configs/arch/i3_config.txt > ~/.config/i3/config;
    else cp configs/arch/i3_config.txt $HOME/.config/i3/config;
fi

#--------------------Update Optimus Manager
if [ ! -d /etc/optimus-manager ]; then sudo mkdir /etc/optimus-manager; fi
if [ -f /etc/optimus-manager/optimus-manager.conf ];
    then sudo bash -c 'cat configs/arch/optimus-manager.conf > /etc/optimus-manager/optimus-manager.conf';
    else sudo cp configs/arch/optimus-manager.conf /etc/optimus-manager/optimus-manager.conf;
fi
sudo cp Config/optimus-manager.conf /etc/optimus-manager/optimus-manager.conf

#--------------------Update Polybar
if [ ! -d ~/.config/polybar ]; then mkdir ~/.config/polybar; fi
if [ -f ~/.config/polybar/config.ini ];
    then cat configs/arch/polybar > $HOME/.config/polybar/config.inirm;
    else cp configs/arch/polybar $HOME/.config/polybar/config.ini;
fi

#--------------------Update Polybar Launcher
if [ -f ~/.config/polybar/launch.sh ];
    then cat configs/arch/polybar_launch.sh > $HOME/.config/polybar/launch.sh;
    else cp configs/arch/polybar_launch.sh $HOME/.config/polybar/launch.sh && chmod +x $HOME/.config/polybar/launch.sh;
fi

#--------------------Update .profile
if [ ! -f ~/.profile ];
    then cat configs/arch/profile.txt > $HOME/.profile;
    else cp configs/arch/profile.txt $HOME/.profile;
fi

#--------------------Disable Mouse Acceleration
if [ -f /etc/X11/xorg.conf.d/50-mouse-acceleration.conf ];
    then sudo bash -c 'cat configs/arch/x_mouse_accel.txt > /etc/X11/xorg.conf.d/50-mouse-acceleration.conf';
    else sudo cp configs/arch/x_mouse_accel.txt /etc/X11/xorg.conf.d/50-mouse-acceleration.conf
fi

#--------------------Update Grub Background Image
if [ -f /etc/default/grubbootloaderpic.png ]; then
    sudo rm /etc/default/grubbootloaderpic.png;
fi
sudo cp images/grubbootloaderpic.png /etc/default/grubbootloaderpic.png
sudo grub-mkconfig -o /boot/grub/grub.cfg

#--------------------Update Polybar Background Image
if [ -d $HOME/Pictures/Wallpapers ]; then
    if [ ! -f $HOME/Pictures/Wallpapers/wallpaper.jpg ]; then
        cp images/wallpaper.jpg $HOME/Pictures/Wallpapers/wallpaper.jpg;
    fi
fi
