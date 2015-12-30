#video script by gente for 1.2.13 firmware
#loudness boot buzzer
t pwm 1 set_level 70

#2304x1296 30 fps 45 mbps
#writeb 0xC06CC426 0x02
#writew 0xC05C1EB2 0x4234

#1920x1080 60 fps 45 mbps
#writeb 0xC06CC426 0x03
#writew 0xC05C1EE2 0x4234

#1920x1080 45 fps 45 mbps
#writeb 0xC06CC426 0x04
#writew 0xC05C1F12 0x4234

#setting vibrance and saturation
t ia2 -adj ev 10 0 70 0 0 150 0

#shadow/highlight clipping adjustments
t ia2 -adj l_expo 163
t ia2 -adj autoknee 150

#set gamma level
t ia2 -adj gamma 200

#enable 1/13/14/34/38 scene modes: auto/landscape/portrait/through_glass/car_DV
t cal -sc 13

#noise reduction 0:no reduction(noisy but sharper)/16383:full noise reduction(no noise but less sharp)
t ia2 -adj tidx -1 500 -1

#fix ae/awb/af/adj 0:on 1:off 
t ia2 -3a 1 1 0 1

#Set JPEG quality to 100%
t cal -jqlt 100

#vignettenkorrektur abschalten/v:video mode,s: still mode/enable 0:disable,1:enable
#t ia2 -vnc v 0

#enable raw+jpeg stills
#t app test debug_dump 14

#set file size to 4GB
#sleep 3
#writew 0xC03A8520 0x2004
#sleep 1

#sd test script by nutsey
cardmgr d info > d:\cardinfo.txt

sleep 1
t app lowbatt 100 10000000

#ready beep
t pwm 1 enable
sleep 1
t pwm 1 disable
