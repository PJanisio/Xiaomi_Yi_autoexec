#YiMAX-PRO script by nutsey for 1.2.13 firmware.
#
#Make sure 'goprawn.conf' file is also at the root of your memory card.
#
#Check goprawn.com website for the latest updates and discussions.
#
#Set 1296p30 video mode, ABR, 40Mbps, .75 - 1.25 bitrate range:
writeb 0xC06CC426 0x02
writeb 0xC05C1EAC 0x05
writew 0xC05C1EB2 0x4220
writel 0xC05C1EB4 0x3f400000
writel 0xC05C1EB8 0x3fa00000
#
#Set file size limit to 4GB:
writew 0xC03A8520 0x2004
#
sleep 9
#
#HSV, shadow/highlight clipping, gamma, NR adjustments:
t ia2 -adj ev 10 -1 70 -1 -1 150 -1
t ia2 -adj l_expo 163
t ia2 -adj autoknee 255
t ia2 -adj gamma 160
t ia2 -adj tidx -1 0 -1
#
#Set 12 scene mode (change 12 to 9 for low light):
t cal -sc 12
#
#Enable raw+jpeg stills:
t app test debug_dump 14
#
#Ready beep:
t pwm 1 set_level 10
t pwm 1 enable
sleep 1
t pwm 1 disable
#
#Main loop:
while true; do
	#Enable AE/AWB/ADJ:
	t ia2 -3a 1 1 0 1
	sleep 1
	#Blink with wifi led:
	t gpio 114 sw out0
	t gpio 114 sw out1
	#Load settings from file:
	t cal -ituner load d:\goprawn.conf
done
