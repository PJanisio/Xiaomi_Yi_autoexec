# XIAOMI YI
# by Halvaborsch <dsequence@gmail.com>
# HDR script with autoknee

sleep 5
# Fix ISO to 200
t ia2 -ae exp 200 0 0

# some time for timelapse preparation
sleep 20

while true
do
   t ia2 -adj autoknee 0
   sleep 1
   t app key shutter
   t app key shutter_rel
   lu_util exec 'sleep 0.5'

   t ia2 -adj autoknee 120
   sleep 1
   t app key shutter
   t app key shutter_rel
   lu_util exec 'sleep 0.5'

   t ia2 -adj autoknee 255
   sleep 1
   t app key shutter
   t app key shutter_rel
   lu_util exec 'sleep 0.5'

   # some sleep between shots
   sleep 5
done

