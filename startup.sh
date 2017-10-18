#!/bin/bash

check_distro2(){
    if [[ -e /etc/redhat-release ]]
    then
      DISTRO=$(cat /etc/redhat-release)
    elif [[ -e /usr/bin/lsb_release ]]
    then
      DISTRO=$(lsb_release -d | awk -F ':' '{print $2}')
    elif [[ -e /etc/issue ]]
    then
      DISTRO=$(cat /etc/issue)
    else
      DISTRO=$(cat /proc/version)
    fi
    }

check_distro2
# echo $DISTRO

if [[ "$DISTRO" =~ .*Manjaro*. ]]
then
	echo "Manjaro!"

# Keybindings for swithcing context menu, home, end, pgup, pgdwn. For x230
# xmodmap -e "keycode 110  = Prior"
# xmodmap -e "keycode 115  = Next"
# xmodmap -e "keycode 112  = Home"
# xmodmap -e "keycode 117  = End"
# xmodmap -e "keycode 107  = Menu"

# Increase sensitivity of trackpoint
	# xinput --list
	# TPPS/2 IBM TrackPoint   id=13   [slave  pointer  (2)]
	# xinput --list-props
xinput set-prop "TPPS/2 IBM TrackPoint" "libinput Accel Speed" 1
xinput set-prop "Logitech M705" "libinput Accel Speed" 0
xinput disable "SynPS/2 Synaptics TouchPad"

# Battery management. Set treshold of charging stopping at 80%. It starts charging at 30%
sudo tlp start
sudo tpacpi-bat -s SP 1 95

# Force screen 1080p VGA
xrandr --newmode "1920x1080_60.00" 173.00  1920 2048 2248 2576  1080 1083 1088 1120 -hsync +vsync
# xrandr --addmode LVDS1 1920x1080_60.00
xrandr --addmode VGA1 1920x1080_60.00
xrandr -s 1920x1080
xrandr --output LVDS1 --auto
xrandr --output HDMI3 --auto
xrandr --output LVDS1 --pos 277x1080

# Lower the brightness of my Monitor
xrandr --output HDMI3 --brightness 0.5
xrandr --output VGA1 --brightness 1

# killall yakuake

#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
else
	echo "Neon!"

# Keybindings for swithcing context menu, home, end, pgup, pgdwn. For x230
# xmodmap -e "keycode 110  = Prior"
# xmodmap -e "keycode 115  = Next"
# xmodmap -e "keycode 112  = Home"
# xmodmap -e "keycode 117  = End"
# xmodmap -e "keycode 107  = Menu"
# xmodmap -e "keycode 21  = backslash questiondown backslash questiondown  exclamdown"

# Increase sensitivity of trackpoint
	# xinput --list
	# TPPS/2 IBM TrackPoint   id=13   [slave  pointer  (2)]
	# Default: 			  13 2 20 10
# xinput set-ptr-feedback 13 10000 10000 1
# xinput set-prop "TPPS/2 IBM TrackPoint" 276 0
xinput set-prop "TPPS/2 IBM TrackPoint" "Device Accel Constant Deceleration" 0.14
xinput set-prop "TPPS/2 IBM TrackPoint" "Device Accel Adaptive Deceleration" 2.5
xinput set-prop "TPPS/2 IBM TrackPoint" "Device Accel Velocity Scaling" 50
xinput set-prop "Logitech USB Laser Mouse" "Device Accel Constant Deceleration" 0.4
xinput set-prop "Logitech M705" "Device Accel Constant Deceleration" 0.4
xinput disable "SynPS/2 Synaptics TouchPad"


# Battery management. Set treshold of charging stopping at 80%. It starts charging at 30%
sudo tpacpi-bat -s SP 1 80

# Dropbox sync
~/.dropbox-dist/dropboxd &

# Force screen 1080p VGA
xrandr --newmode "1920x1080_60.00" 173.00  1920 2048 2248 2576  1080 1083 1088 1120 -hsync +vsync
# xrandr --addmode LVDS-1 1920x1080_60.00
xrandr --addmode VGA-1 1920x1080_60.00
xrandr -s 1920x1080
xrandr --output LVDS-1 --auto
xrandr --output LVDS-1 --pos 277x1080

# Lower the brightness of my Monitor
xrandr --output HDMI-3 --brightness 0.5
xrandr --output VGA-1 --brightness 1

# Open spotify
# spotify &

fi