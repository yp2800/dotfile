#!/bin/sh

export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS="@im=fcitx"
export GDK_USE_XFT=1
export QT_XFT=true

xrdb -load ~/.Xresources
#file  ~/.ssh/*  | awk -F: '/private key/{print $1}' |xargs ssh-add 
export DESKTOP_SESSION=gnome
fcitx -d &> /dev/null
#start-pulseaudio-x11
exec awesome
