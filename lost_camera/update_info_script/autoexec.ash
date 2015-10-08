#updates your credentials in IF_FOUND.txt
#v.0.0.2

sleep 2
#updating fuse_a
lu_util exec 'mv -f /tmp/fuse_d/update/IF_FOUND.txt /tmp/fuse_a/IF_FOUND.txt'
#cleaning
lu_util exec 'rm -rf /tmp/fuse_d/update'
lu_util exec 'rm -f /tmp/fuse_d/autoexec.ash'
#updating fuse_d
lu_util exec 'mv -f /tmp/fuse_a/IF_FOUND.txt /tmp/fuse_d/IF_FOUND.txt'

#confirmation
#long beep
t pwm 1 enable
sleep 1
t pwm 1 disable
#end
