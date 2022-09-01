#!/bin/sh
# TODO: Dynamic paths
cd $HOME
cp -Ruv .zshrc .Xresources .Xresources.d/ .xinitrc .vimrc -t $HOME/Desktop/Code/dotfiles/
cd $HOME/.config/
cp -Ruv bspwm/ sxhkd/ polybar/ ranger/ redshift/ -t $HOME/Desktop/Code/dotfiles/.config
echo "Dotfiles repo updated !"
cd $HOME/Desktop/Code/dotfiles && git status
