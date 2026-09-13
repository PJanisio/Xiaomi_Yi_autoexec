#!/bin/sh

# Do not unload bcmdhd here: a failed module reload can leave the camera
# without Wi-Fi until a power cycle.
n=0
while [ "$n" -lt 5 ]; do
	ifconfig wlan0 >/dev/null 2>&1
	if [ "$?" -eq 0 ]; then
		wpa_cli -i wlan0 reconfigure >/dev/null 2>&1
		sleep 5
		udhcpc -i wlan0 -A 2 -b -t 10
		if [ "$?" -eq 0 ]; then
			exit 0
		fi
	fi
	n=$(($n + 1))
	sleep 5
done

exit 1
