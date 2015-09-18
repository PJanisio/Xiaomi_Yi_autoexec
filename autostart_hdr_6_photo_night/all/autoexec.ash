#HDR script v.3 NIGHT 
#author: nutsey
#Howto: Put this file into root of SD
#Steady fix your Yi
#Turn on, auto-capture 6 JPEG stills, long beep
sleep 7
#SET HDR TRIM LEVELS, SET GAMMA
t ia2 -adj l_expo 163
t ia2 -adj autoknee 255
t ia2 -adj gamma 150
#SET ISO TO 400
t ia2 -ae exp 400 0 0
#SET JPEG QUALITY TO 100
writeb 0xC0BC205B 0x64
sleep 1
#8
t ia2 -ae still_shutter 1
sleep 1
t cal -raw 2 1 0
sleep 18
#5.4
t ia2 -ae still_shutter 70
sleep 1
t cal -raw 2 1 0
sleep 15
#3.5
t ia2 -ae still_shutter 150
sleep 1
t cal -raw 2 1 0
sleep 13
#1.5
t ia2 -ae still_shutter 300
sleep 1
t cal -raw 2 1 0
sleep 12
#1/1.8
t ia2 -ae still_shutter 500
sleep 1
t cal -raw 2 1 0
sleep 12
#1/16
t ia2 -ae still_shutter 900
sleep 1
t cal -raw 2 1 0
sleep 10
#DELETE JUNK FILES. Please check if your MEDIA folder is 100MEDIA
lu_util exec 'rm -f /tmp/fuse_d/DCIM/100MEDIA/*.TXT'
lu_util exec 'rm -f /tmp/fuse_d/DCIM/100MEDIA/*.BIN'
lu_util exec 'rm -f /tmp/fuse_d/DCIM/100MEDIA/*.bin'
lu_util exec 'rm -f /tmp/fuse_d/DCIM/100MEDIA/*.UV'
lu_util exec 'rm -f /tmp/fuse_d/DCIM/100MEDIA/*.Y'
lu_util exec 'rm -f /tmp/fuse_d/DCIM/100MEDIA/*.RAW'
#LONG BEEP
t pwm 1 enable
sleep 1
t pwm 1 disable
poweroff yes
