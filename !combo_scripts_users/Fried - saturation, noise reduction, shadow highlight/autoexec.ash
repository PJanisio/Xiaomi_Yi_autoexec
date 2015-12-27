#author: Fried

#boot buzzer
t pwm 1 set_level 50
t pwm 1 enable
sleep 2
t pwm 1 disable
#begin
#vibrance/saturation adjustments
t ia2 -adj ev 0 0 160 0 0 190 0

#shadow/highlight clipping adjustments
t ia2 -adj l_expo 163

t ia2 -adj ae 160	

t ia2 -adj autoknee 250

#set gamma level
t ia2 -adj gamma 80
#enable 14 scene mode
t cal -sc 14
#enable raw+jpeg stills
#t app test debug_dump 14
#fix ae/awb/adj locks
t ia2 -3a 1 1 0 1
#ready beep
#set noise reduction value to 500
t ia2 -adj tidx -1 500 -1


#end
#ready beep
t pwm 1 enable
sleep 1
t pwm 1 disable


