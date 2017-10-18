#!/bin/sh

# For 1600x900
cvt 1600 900 60
# 1600x900 59.95 Hz (CVT 1.44M9) hsync: 55.99 kHz; pclk: 118.25 MHz
# Modeline "1600x900_60.00"  118.25  1600 1696 1856 2112  900 903 908 934 -hsync +vsync
sudo xrandr --newmode "1600x900_60.00"  118.25  1600 1696 1856 2112  900 903 908 934 -hsync +vsync
sudo xrandr --addmode LVDS-1 1600x900_60.00
# xrandr -s 1600x900


# For 1920x1080
cvt 1920 1080 60
# 1920x1080 59.96 Hz (CVT 2.07M9) hsync: 67.16 kHz; pclk: 173.00 MHz
# Modeline "1920x1080_60.00"  173.00  1920 2048 2248 2576  1080 1083 1088 1120 -hsync +vsync
xrandr --newmode "1920x1080_60.00" 173.00  1920 2048 2248 2576  1080 1083 1088 1120 -hsync +vsync

# xrandr --addmode LVDS-1 1920x1080_60.00
xrandr --addmode VGA-1 1920x1080_60.00
xrandr -s 1920x1080

# For 2560×1440
# xrandr --newmode "2560x1440_60.00"  312.25  2560 2752 3024 3488  1440 1443 1448 1493 -hsync +vsync
# xrandr --addmode VGA-1 2560x1440_60.00
# xrandr -s 2560x1440


# Screen brightness
# xrandr --output HDMI-3 --brightness .2
