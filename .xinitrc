#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

### Custom
#Nvidia offload
/usr/bin/prime-offload

# Daemons
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
picom &
sxhkd &
~/scripts/lightsonplus/lightson+ &

# Applets
nm-applet &
optimus-manager-qt &
pamac-tray &
redshift-gtk &

# Window Manager
bspwm

# Nvidia switch
sudo /usr/bin/prime-switch
