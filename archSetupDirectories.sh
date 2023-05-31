#!/bin/bash

#-------------------- Create ~/bin --------------------#
if [ ! -d $HOME/bin ]
then
    printf "\n\n            Creating {$HOME}/bin folder \n"
    mkdir $HOME/bin
fi

#-------------------- ~/Downloads --------------------#
if [ ! -d $HOME/Downloads ]
then
    printf "\n\n            Creating {$HOME}/Downloads folder \n"
    mkdir $HOME/Downloads
fi

#-------------------- ~/Documents --------------------#
if [ ! -d $HOME/Documents ]
then
    printf "\n\n            Creating {$HOME}/Documents folder \n"
    mkdir $HOME/Documents
fi

#-------------------- ~/Pictures --------------------#
if [ ! -d $HOME/Pictures ]
then
    mkdir $HOME/Pictures
    mkdir $HOME/Pictures/Wallpapers
    mkdir $HOME/Pictures/Screenshots
else
    #-------------------- ~/Pictures/Wallpapers --------------------#
    if [ ! -d $HOME/Pictures/Wallpapers ]
    then
        mkdir $HOME/Pictures/Wallpapers
    fi
    #-------------------- ~/Pictures/Screenshots --------------------#
    if [ ! -d $HOME/Pictures/Screenshots ]
    then
        mkdir $HOME/Pictures/Screenshots
    fi
fi
