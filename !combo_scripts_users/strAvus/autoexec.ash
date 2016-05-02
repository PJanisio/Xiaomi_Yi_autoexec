#vibrance/saturation adjustments
t ia2 -adj ev 0 0 140 0 0 150 0

#shadow/highlight clipping adjustments
#this makes blacks not crushed
t ia2 -adj l_expo 163

#this gets back the highlights
t ia2 -adj autoknee 255

#set gamma level - makes picture darker, more highlights?
t ia2 -adj gamma 220

#RAW WB (auskommentiert) + IMPROVED HIGHLIGHTS script by nutsey
t ia2 -3a 1 0 0 1
t ia2 -awb off

#4GB no split files
writew 0xC03A8620 0x2004

#de-noise values between 0-16383 (0x0000-0x3FFF)
t ia2 -adj tidx -1 1024 -1

#cleanup
#lu_util exec rm /tmp/fuse_d/DCIM/100MEDIA/*_thm.mp4

sleep 9

