#!/bin/sh

if [ "$1" = "" ]; then
	echo "Usage: ./dump_packages.sh [outfile]";
	exit 1;
fi

# Dump packages, grep installed, get package name only, and replace newline with ' '
sudo dpkg -l | grep 'ii' | awk '{print $2}' | tr '\n' ' ' > "$1"