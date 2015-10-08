#deletes lost camera mod
#v.0.0.2

sleep 1
lu_util exec 'rm -f /tmp/fuse_a/autoexec.ash'
lu_util exec 'rm -f /tmp/fuse_a/IF_FOUND.txt'
lu_util exec 'rm -f /tmp/fuse_d/IF_FOUND.txt'

#confirmation
#long beep
t pwm 1 enable
sleep 1
t pwm 1 disable
#end
