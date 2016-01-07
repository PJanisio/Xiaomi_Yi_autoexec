#!/bin/sh

# Yi Plus Launch Script
#
# Author:     Mike Morrison
# Created on: 2015-09-23
# Donations:  https://goo.gl/ApYN94

# network_message_daemon doesn't receive some messages from the uItron
# when wifi is off so fool uItron into thinking that wifi is on 
sleep 3 && /usr/local/share/script/t_gpio.sh 11 1 && sleep 1 && /usr/bin/boot_done 1 2 1 &

# copy yi_plus to the tmp directory
cp /tmp/fuse_d/yiplus/yi_plus /tmp
cp /tmp/fuse_d/yiplus/yi_plus.json /tmp

# run yi_plus
sleep 3 killall network_message_daemon && network_message_daemon 2>&1 >> /tmp/yi_plus.log &
sleep 5 && /tmp/yi_plus 2>&1 >> /tmp/yi_plus.log &

