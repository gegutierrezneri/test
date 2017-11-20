#!/bin/sh

# Create the ~/.mozilla directory by opening firefox once
# firefox &
# killall firefox

## Keybindings for swithcing context menu, home, end, pgup, pgdwn. For x230
## use 'xev' on terminal to find the keycode of each stroke
# xmodmap -e "keycode 110  = Prior"
# xmodmap -e "keycode 115  = Next"
# xmodmap -e "keycode 112  = Home"
# xmodmap -e "keycode 117  = End"
# xmodmap -e "keycode 107  = Menu"

## Install sublime
# wget -qO - https://downtload.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
# sudo apt-get install apt-transport-https
# echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
# sudo apt-get update
# sudo apt-get install sublime-text

# rm -r ~/Documents
# rm -r ~/Downloads
# rm -r ~/Music
# rm -r ~/Pictures
# rm -r ~/Public
# rm -r ~/Templates
# rm -r ~/Videos
# rm -r ~/.config/sublime-text-3

# ln -s /media/vega/Library/Documents ~/Documents
# ln -s /media/vega/Library/Downloads ~/Downloads
# ln -s /media/vega/Library/Music ~/Music
# ln -s /media/vega/Library/Pictures ~/Pictures
# ln -s /media/vega/Library/Videos ~/Videos
# ln -s /media/vega/Library/sublime-text-3 ~/.config/
# ln -s /media/vega/Library/2pjzn0fm.default ~/.mozilla/firefox

## General installing stuff for compiling things
# sudo apt install git build-essential automake autoconf libtool pkg-config intltool autoconf-archive libpcre3-dev libglib2.0-dev libgtk-3-dev libxml2-utils aptitude -y
# sudo apt install cmake -y

## Install fsearch
# sudo add-apt-repository ppa:christian-boxdoerfer/fsearch-daily
# sudo apt-get update && sudo apt install fsearch-trunk -y

## Install Neofetch
# sudo add-apt-repository ppa:dawidd0811/neofetch
# sudo apt update
# sudo apt install neofetch

## Install spotify
# sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886
# echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
# sudo apt-get update 
# sudo apt-get install spotify-client -y
# # For playing local files
# sudo apt install ubuntu-restricted-extras -y
# sudo wget -N https://github.com/ramedeiros/spotify_libraries/raw/master/libavcodec.so.54.71.100 -O /usr/lib/x86_64-linux-gnu/libavcodec.so.54 && sudo wget -N https://github.com/ramedeiros/spotify_libraries/raw/master/libavformat.so.54.36.100 -O /usr/lib/x86_64-linux-gnu/libavformat.so.54 && sudo wget -N https://github.com/ramedeiros/spotify_libraries/raw/master/libavutil.so.52.6.100 -O /usr/lib/x86_64-linux-gnu/libavutil.so.52 && sudo ldconfig

# Install stuff
# sudo apt-get install playonlinux -y
# sudo apt-get install inkscape -y
# sudo apt-get install cups-pdf -y
# sudo apt-get install pdftYk -y
# sudo apt-get install vlc -y
# sudo apt-get install texlive-full  -y





## ------------------------------------------------------------------------------
## For later:
# Install dropbox
# ln -s /media/vega/Library/Dropbox\ \(ZEF\) ~/










## ------------------------------------------------------------------------------
## ------------------------------------------------------------------------------
## GUI TODOs
## Change Mouse: Double click for selecting
## Change Terminal fonts
## Sublime: Input license from gmail
## Firefox: Don't forget to change firefox's local user's directory name
# dolphin ~/.mozilla/firefox &