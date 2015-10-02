#LEDs address
#12 shutter
#114 WIFI
#6 front blue
#54 front red

#author: ?

sleep 1

t gpio 6 sw out1
sleep 3
t gpio 6 sw out0
sleep 3
t gpio 54 sw out1
sleep 3
t gpio 54 sw out0
