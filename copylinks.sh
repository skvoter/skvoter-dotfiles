#!/bin/bash

export HOME=/home/skvoter
# Vars
home_conf=$HOME/.config
scripts_dir=/usr/local/bin

# configs
cp  cava-config $home_conf/cava/config
cp  compton $home_conf/compton.conf
cp  dunstrc $home_conf/dunst/dunstrc
cp  i3 $home_conf/i3/config
cp  lilyterm $home_conf/lilyterm/default.conf
cp  ncmcpp-bindings $HOME/.ncmpcpp/bindings
cp  ncmcpp-config $HOME/.ncmpcpp/config
cp  polybar $home_conf/polybar/default
cp  polybar-launch $home_conf/polybar/launch.sh
cp  rofi $home_conf/rofi/config
cp  tmux $home_conf/tmux/tmux.conf
cp  vimrc $HOME/.vimrc
cp  xinitrc $HOME/.xinitrc
cp  zshrc $HOME/.zshrc

# scripts
for filename in scripts/*; do
	sudo cp  $filename $scripts_dir/
done
