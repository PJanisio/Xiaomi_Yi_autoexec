#beep testing script
#can be used for all autoexec script at the end to confirm that script has been loaded
#author: holymolywhatever

#wait
sleep 1

#long beep
t pwm 1 enable
sleep 1
t pwm 1 disable
#end
