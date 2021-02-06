#!/bin/sh
COUNTRY=FR
NUMBER=5
echo "You can find the old list in /etc/pacman.d/mirrorlist.backup"
cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.backup
echo "Fetchning the $NUMBER fastest mirrors in $COUNTRY..."
curl -s "https://archlinux.org/mirrorlist/?country=$COUNTRY&country=GB&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n $NUMBER - > /etc/pacman.d/mirrorlist
echo "Mirrorlist updated !"
