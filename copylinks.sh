#!/bin/bash

# Vars
home_conf=$HOME/.config
scripts_dir=/usr/local/bin

# configs
cp  compton $home_conf/compton.conf
cp  dunstrc $home_conf/dunst/dunstrc
cp  i3 $home_conf/i3/config
cp  polybar $home_conf/polybar/default
cp  polybar-launch $home_conf/polybar/launch.sh
cp  rofi $home_conf/rofi/config
cp  vimrc $HOME/.vimrc
cp  xinitrc $HOME/.xinitrc
cp  zshrc $HOME/.zshrc

# scripts
for filename in scripts/*; do
	sudo cp  $filename $scripts_dir/
done
