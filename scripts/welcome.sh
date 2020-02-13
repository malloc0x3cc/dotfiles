#!/bin/sh
#
#	welcome.sh
#		by Mac
#

place="Paris"
neofetch
cal
date
nm-online -t 10
if [ $? -eq 0 ]; then
	curl "wttr.in/~$place" && echo -e "\n"
fi
dfc
echo -e "\nHello,"
figlet $USER
echo -e "Hope you have a productive day today !"
