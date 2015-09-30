#wifi client mode
#author: Andy_S

sleep 30
t pwm 1 enable
sleep .5
t pwm 1 disable
lu_util exec '/tmp/fuse_d/wifi/sta.sh'
t pwm 1 enable
sleep 1
t pwm 1 disable
