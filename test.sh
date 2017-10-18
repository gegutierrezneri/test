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
	echo "manjaro!"

	
















else
	echo "not manjaro"
fi