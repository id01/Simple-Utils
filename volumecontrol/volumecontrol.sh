#!/bin/bash

if ! [ -e '/tmp/volumecontrol.tmp' ]; then
	echo '1000' > /tmp/volumecontrol.tmp
fi

showvolume() {
	MUTEDRAW=$(pamixer --get-mute)
	if [ "$MUTEDRAW" == "false" ]; then
		MUTED=''
	else
		MUTED=' (muted)'
	fi
	notify-send.sh 'Volume Control' "Volume: `pamixer --get-volume`$MUTED" --icon=sound --print-id --replace=`cat /tmp/volumecontrol.tmp` > /tmp/volumecontrol.tmp
}

if [ "$1" == "-" ]; then
	pamixer --decrease 2
	showvolume
elif [ "$1" == "+" ]; then
	pamixer --increase 2
	showvolume
elif [ "$1" == "0" ]; then
	pamixer --toggle-mute
	showvolume
else
	echo "Please specify '+' or '-'.";
fi
