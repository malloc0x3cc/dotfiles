#!/bin/sh

COUNTRY="France"
URL="https://www.archlinux.org/mirrorlist/?country=FR&protocol=http&protocol=https&ip_version=4"
cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.backup
curl $URL > /etc/pacman.d/mirrorlist.backup
awk '/^## $(COUNTRY)$/{f=1; next}f==0{next}/^$/{exit}{print substr($0, 1);}' /etc/pacman.d/mirrorlist.backup
sed -i 's/^#Server/Server/' /etc/pacman.d/mirrorlist.backup
rankmirrors -n 6 /etc/pacman.d/mirrorlist.backup > /etc/pacman.d/mirrorlist
echo "Mirrorlist updated !"
