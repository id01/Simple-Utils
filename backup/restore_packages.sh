#!/bin/sh

if [ "$1" = "" ]; then
	echo "Usage: ./restore_packages.sh [infile]";
	exit 1;
fi

# Dump packages, grep installed, get package name only, and replace newline with ' '
sudo apt-get install `cat "$1"`