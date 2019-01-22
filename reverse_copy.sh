#!/bin/bash

# Vars
home_conf=$HOME/.config
scripts_dir=/usr/local/bin

# configs
cp  $home_conf/cava/config cava-config 
cp  $home_conf/compton.conf compton
cp  $home_conf/dunst/dunstrc dunstrc 
cp  $home_conf/i3/config i3 
cp  $home_conf/lilyterm/default.conf lilyterm 
cp  $home_conf/polybar/default polybar
cp  $home_conf/polybar/launch.sh polybar-launch
cp  $home_conf/rofi/config rofi
cp  $HOME/.vimrc vimrc
cp  $HOME/.xinitrc xinitrc
cp  $HOME/.zshrc zshrc

