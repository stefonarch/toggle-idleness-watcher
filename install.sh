#!/bin/bash
#check if root
if [ "$(id -u)" != "0" ]; then
	echo "This script must be run as root" 1>&2
	exit 1
fi
#check for git
hash git &> /dev/null
if [ $? -eq 1 ]; then
	echo >&2 "Please install git to use this script"
	exit 1
else
    echo "Found git - ok"
fi

	cp *.desktop /usr/share/applications
	cp toggle-idleness /usr/bin

echo "Install finished - just add a quicklaunch plugin to panel and drag and drop "idleness-watcher" from menu to it"