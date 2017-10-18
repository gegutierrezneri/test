#!/bin/sh

## Keybindings for swithcing context menu, home, end, pgup, pgdwn. For x230
# xmodmap -e "keycode 110  = Prior"
# xmodmap -e "keycode 115  = Next"
# xmodmap -e "keycode 112  = Home"
# xmodmap -e "keycode 117  = End"
# xmodmap -e "keycode 107  = Menu"

## Increase sensitivity of trackpoint
	# xinput --list
	# TPPS/2 IBM TrackPoint   id=13   [slave  pointer  (2)]
	# Default: 			  13 2 20 10
# xinput set-ptr-feedback 13 10000 10000 1
# xinput --set-prop 13 276 1

## Install Git
# sudo apt install git

## Install cmake
# sudo apt install cmake

## Install sublime
# echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
# sudo apt-get update
# sudo apt-get install sublime-text

## Install OpenFoam
# sudo apt-get update
# sudo apt-get upgrade
# sudo add-apt-repository http://dl.openfoam.org/ubuntu
# sudo sh -c "wget -O - http://dl.openfoam.org/gpg.key | apt-key add -"
# sudo apt-get update
# sudo apt-get -y install openfoam4

## Install Battery Treshold for x230
## For Arch, install TLP and run before running tpacpi-bat
# git clone https://github.com/teleshoes/tpacpi-bat
# cd tpacpi-bat 
# sudo ./install.pl

## Install libraries for Python
# sudo apt-get install -y python3-pip
# sudo apt install -y python-pip
# pip install --upgrade pip
# pip3 install --upgrade pip
# sudo pip3 install Matplotlib
# sudo pip3 install Pandas
# sudo pip3 install Numpy
# sudo pip3 install Sympy
# sudo pip3 install Scipy
# sudo pip3 install pyevtk

## Install spyder
# sudo apt-get install spyder3
# sudo pip3 install --upgrade spyder
# sudo pip3 install --upgrade beautifulsoup4
# sudo pip3 install --upgrade html5lib

## Install spotify
# sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886
# echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
# sudo apt-get update
# sudo apt-get install spotify-client
## For playing local files
# sudo apt install ubuntu-restricted-extras
# sudo wget -N https://github.com/ramedeiros/spotify_libraries/raw/master/libavcodec.so.54.71.100 -O /usr/lib/x86_64-linux-gnu/libavcodec.so.54 && sudo wget -N https://github.com/ramedeiros/spotify_libraries/raw/master/libavformat.so.54.36.100 -O /usr/lib/x86_64-linux-gnu/libavformat.so.54 && sudo wget -N https://github.com/ramedeiros/spotify_libraries/raw/master/libavutil.so.52.6.100 -O /usr/lib/x86_64-linux-gnu/libavutil.so.52 && sudo ldconfig

# Install stuff
# sudo apt-get install playonlinux -y
# sudo apt-get install inkscape -y
# sudo apt-get install cups-pdf -y
# sudo apt-get install pdftYk -y
# sudo apt-get install vlc -y
# sudo apt-get install texlive-full  -y

## Install Fsearch (Everything alternative)
# sudo apt install git build-essential automake autoconf libtool pkg-config intltool autoconf-archive libpcre3-dev libglib2.0-dev libgtk-3-dev libxml2-utils
# git clone https://github.com/cboxdoerfer/fsearch.git
# cd fsearch
# ./autogen.sh
# ./configure
# make && sudo make install

## Install Mozilla Nightly
# sudo add-apt-repository ppa:ubuntu-mozilla-daily/ppa
# sudo apt-get update
# sudo apt-get install firefox-trunk 

## Install neofetch
# git clone https://github.com/dylanaraps/neofetch
# cd neofetch
# sudo make install

## Install Google Chrome
# sudo apt-get install libxss1 libappindicator1 libindicator7
# wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
# sudo dpkg -i google-chrome*.deb
## To run things in app-mode, such as Netflix do the following:
## google-chrome-stable --app=https://www.netflix.com/browse

## Install kvantum. Widget styles for Qt based applications
## Download the 'kvantum_0.10.4-ubuntuLTS_amd64.deb' and install with dpkg

## Install Doxygen
# sudo apt-get install doxygen
# sudo apt-get install doxygen-gui
# sudo apt install graphviz

## Install Office 2007 with Wine
# pacman -S wine winetricks wine_gecko libwbclient
# WINEARCH=win32 WINEPREFIX=~/newwin32 winecfg
# WINEARCH=win32 winecfg
# winetricks msxml3
# wine /media/vega/Library/Programs/Office/setup.exe 
# <enter license key>
# winecfg <set riched20.dll to native windows>

# ------------------------------------------------------------------------------------
# DEPRECATED BELOW THIS LIST ---------------------------------------------------------
# ------------------------------------------------------------------------------------

## Install qtcurve5. Widget styles for Qt based applications. Has transparency
# git clone git://anongit.kde.org/qtcurve.git
# cd qtcurve
# mkdir build
# cd build
# cmake .. -DCMAKE_INSTALL_PREFIX=/usr
# make
# sudo make install

## Install aptitude. An alternative to apt-get that can solve dependencies
# sudo apt-get install aptitude
# sudo aptitude install qtcurve

## Install spyder (python IDE)
# sudo apt-get install build-essential libssl-dev libffi-dev python-dev
# sudo apt-get install python-mpmath
# sudo apt-get install python-sympy
# sudo apt-get install spyder -y
# pip3 install Rope
# pip3 install Qtconsole
# pip3 install PyQt5
# pip3 install Pyqt5
# pip3 install Pyflakes
# pip3 install Sphinx
# pip3 install Pygments

# pip3 install Pylint
# pip3 install Pep8
# pip3 install Psutil
# pip3 install Nbconvert
# pip3 install Qtawesome
# pip3 install Pickleshare
# pip3 install PyZMQ
# pip3 install QtPy
# pip3 install Chardet
# pip3 install Numpydoc
# pip3 install --upgrade spyder

## Install octave
# sudo apt install octave
	# Inside Octave terminal run:
	# pkg install -forge symbolic

## Remove stuff from basic Kubuntu installation
# sudo apt-get --purge remove amarok
# sudo apt-get --purge remove dragonplayer 
# sudo apt-get --purge remove kate

## Keep plasma up to date
# sudo apt-add-repository ppa:kubuntu-ppa/backports
# sudo apt update
# sudo apt full-upgrade -y
