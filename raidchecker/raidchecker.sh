#!/bin/bash

# Check if running in Terminal
if [ -t 0 ] ; then
	TERM=1;
else
	TERM=0;
fi

# Get raw info
RAWINFO=$(cat /proc/mdstat)

# If command did not execute successfully
if [ $? -ne 0 ]; then
	if [ TERM -eq 1 ]; then
		echo "Could not open /proc/mdstat."
	else
		zenity --notification --text "Can not open /proc/mdstat. Exiting."
	fi
	exit
fi

# Get filtered info
FILTINFO=$(echo "$RAWINFO" | grep -C 1 "_")

# If filtered info is not blank, warn the user.
if [ "$FILTINFO" != "" ]; then
        if [ $TERM -eq 1 ]; then
                echo "A raid array has depleted."
		echo "Here is where it occurs:"
		echo "$RAWINFO" | grep -C 1 "_"
        else
                zenity --notification --text 'A raid array has depleted. More information can be found by executing "raidchecker.sh" on the terminal.'
        fi
fi
