#cleaning
#author: ?
#cleans any folder in DCIM of _thm.mp4 and .THM

sleep 1
lu_util exec rm /tmp/fuse_d/DCIM/*/*_thm.mp4
lu_util exec rm /tmp/fuse_d/DCIM/*/*THM
