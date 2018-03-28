# /bin/bash
export QT_STYLE_OVERRIDE=gtk
export _JAVA_OPTIONS="-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel -Dswing.crossplatformlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel"
setxkbmap "us,ru" ",winkeys" "grp:caps_toggle,grp_led:caps"
xset b off
gxkb &
compton --dbus &
dunst &
/usr/local/bin/hotplug_monitor.sh &
~/.fehbg &
exec i3
