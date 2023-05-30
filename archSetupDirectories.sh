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
    printf "\n\n            Creating {$HOME}/Pictures folder \n"
    printf "\n\n            Creating {$HOME}/Pictures/Wallpapers folder \n"
    printf "\n\n            Creating {$HOME}/Pictures/Screenshots folder \n"
    mkdir $HOME/Pictures
    mkdir $HOME/Pictures/Wallpapers
    mkdir $HOME/Pictures/Screenshots
else
    #-------------------- ~/Pictures/Wallpapers --------------------#
    if [ ! -d $HOME/Pictures/Wallpapers ]
    then
        printf "\n\n            Creating {$HOME}/Pictures/Wallpapers folder \n"
        mkdir $HOME/Pictures/Wallpapers
    fi
    #-------------------- ~/Pictures/Screenshots --------------------#
    if [ ! -d $HOME/Pictures/Screenshots ]
    then
        printf "\n\n            Creating {$HOME}/Pictures/Screenshots folder \n"
        mkdir $HOME/Pictures/Screenshots
    fi
fi
