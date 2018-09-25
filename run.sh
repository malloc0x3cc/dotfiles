#!/bin/sh
#
#	run.sh
#		by Mac
#

## Made for Manjaro-i3 !
## TODO: Figure out how to install Discord (libc++ bullshit)
## idk yet: fbreader, playerctl, cli-visualizer

# Sublime Text stable repo
curl -O https://download.sublimetext.com/sublimehq-pub.gpg && sudo pacman-key --add sublimehq-pub.gpg && sudo pacman-key --lsign-key 8A8F901A && rm sublimehq-pub.gpg
echo -e "\n[sublime-text]\nServer = https://download.sublimetext.com/arch/stable/x86_64" | sudo tee -a /etc/pacman.conf

pacman -Syyuu base-devel
pacman -S ncurses fftw
pacman -S manjaro-pulse \
git python3 ruby nodejs vim sublime-text \
rofi xautolock powerline powerline-fonts tree \
thunderbird filezilla rhythmbox cmus \

yaourt -S google-chrome visual-studio-code-bin jdownloader \
cli-visualizer

# OhMyZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "DONE !"
