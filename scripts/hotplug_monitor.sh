#! /usr/bin/bash
# Sets right perspective when monitor is plugged in
# Needed by udev rule /etc/udev/rules.d/95-hotplug-monitor
export DISPLAY=:0
export XAUTHORITY=/home/skvoter/.Xauthority

function connect(){
    xrandr --auto
    xrandr --output eDP1 --left-of HDMI1
    i3-msg 'workspace 2'
    i3-msg 'move workspace to output HDMI1'
    i3-msg 'workspace 1'
    echo "CONNECTED" >> /home/skvoter/scriptlog
}

function disconnect(){
    xrandr --output HDMI1 --off
    xrandr --auto
    echo "DISCONNECTED" >> /home/skvoter/scriptlog
}
sleep 6
xrandr | grep "HDMI1 connected" >> /home/skvoter/scriptlog
xrandr | grep "HDMI1 connected"
if [ ! $? -eq 0 ]; then
  disconnect
else
  connect
fi
~/.fehbg &
