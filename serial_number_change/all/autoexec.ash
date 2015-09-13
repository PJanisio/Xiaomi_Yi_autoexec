#change your camera serial number
#author: ?

t pwm 1 set_level 140
t pwm 1 enable
sleep 2
t pwm 1 disable
sleep 10
t pwm 1 enable
sleep 1
t pwm 1 disable
#begin
#paste your desired sn below
test board config psn ZXXXXXXXXXXXXXX
#end
#long beep means the commands executed
sleep 1
t pwm 1 enable
sleep 3
t pwm 1 disable