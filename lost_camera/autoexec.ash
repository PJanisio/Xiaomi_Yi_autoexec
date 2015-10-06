#lost camera script, IF_FOUND.txt will be created every time you boot the camera with your credentials.
#author: PJanisio

sleep 3
cp d:\IF_FOUND.txt a:\IF_FOUND.txt
cp d:\new_autoexec.txt a:\new_autoexec.txt

#change filenmae
mv a:\new_autoexec.txt a:\autoexec.ash

#delete files
rm d:\new_autoexec.txt
rm d:\autoexec.ash

#confirmation beep
sleep 1
#long beep
t pwm 1 enable
sleep 3
t pwm 1 disable
