#!/bin/sh
#
#	welcome.sh
#		by Mac
#

place="Paris"
neofetch
cal
date
curl "wttr.in/~$place" && echo -e "\n"
dfc
echo -e "\nHello,"
figlet $USER
echo -e "Hope you have a productive day today !"
