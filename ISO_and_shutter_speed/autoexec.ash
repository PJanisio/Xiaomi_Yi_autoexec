#ISO possible values from 100, 200, 400, 800, 1600, 3200, 6400, 12800, 25600 Maximum
#shutter_speed values from 1-2047 -> 1==7.9s, 8==7.7f, 50==6.1s. 100==4.6s, 200==2.7s, 400==1sec, 590==1/3sec, 600==1/5sec, 800==1/10sec, 900==1/15sec, 1000==1/30sec, 1100==1/50sec, 1145==1/60sec, 1200==1/80sec, 1275==1/125sec, 1300==1/140sec, 1405==1/250sec, 1450==1/320sec, 1531==1/500sec, 1607==1/752sec, 1660==1/1002sec, 1788==1/2004sec, 1800==1/2138, 1900==1/3675, 2000==1/6316, 2047==1/8147 (EXIF value)
#author: ?

#set fixed photo ISO 400 and auto shutter speed
t ia2 -ae exp 400 0 0
