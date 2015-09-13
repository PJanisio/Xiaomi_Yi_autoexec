#HDR script v.2 
#author: nutsey
#Captures 6 JPEG images with various shutters, ISO fixed to 100, some Shadows/Highlights clipping correction, Gamma correction. Cricket beep before cam off.
#Howto: Put this file into root of SD
#Steady fix your Yi
#Turn on, auto-capture 6 stills, cricket beep
sleep 7
#SET HDR TRIM LEVELS, SET GAMMA
t ia2 -adj l_expo 163
t ia2 -adj autoknee 255
t ia2 -adj gamma 255
#SET ISO TO 100
t ia2 -ae exp 100 0 0
sleep 1
#1/16
t ia2 -ae still_shutter 900
sleep 1
t app key shutter
sleep 3
#1/48
t ia2 -ae still_shutter 1100
sleep 1
t app key shutter
sleep 2
#1/245
t ia2 -ae still_shutter 1400
sleep 1
t app key shutter
sleep 2
#1/552
t ia2 -ae still_shutter 1550
sleep 1
t app key shutter
sleep 2
#1/1631
t ia2 -ae still_shutter 1750
sleep 1
t app key shutter
sleep 2
#1/8147 MIN SHUTTER
t ia2 -ae still_shutter 2047
sleep 1
t app key shutter
sleep 2
#CRICKET BEEP
t pwm 1 enable
usleep 150
t pwm 1 disable
usleep 150
t pwm 1 enable
usleep 150
t pwm 1 disable
usleep 150
t pwm 1 enable
usleep 150
t pwm 1 disable
usleep 150
t pwm 1 enable
usleep 150
t pwm 1 disable
usleep 150
t pwm 1 enable
usleep 150
t pwm 1 disable
poweroff yes
