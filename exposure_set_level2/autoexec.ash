#author: luckylz
# add this in the autoexec.ash and power up yicam
sleep 5
# first need to turn off AE
# t ia2 -ae  [on|off]:    turn on/off AE

t ia2 -ae off
sleep 5

# second set manual exposure value
# t cal -me [mode][agc][shutter][iris][dgain] : Set specified parameter mode = [0|1], 0:VIDEO, 1:STILL
# the following value means: 1/30s, ISO3200

t cal -me 0 192 1012 0 4096
