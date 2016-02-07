# WaffleFPV V8 

#--Recording Adjustments--
# 4GB Clipping
writew 0xC03A8520 0x2004
# Sets Bitrate to 18Mbs.
writew 0xC05C2092 0x4190

#--Sharpness Adjustments--
# Coring
t is2 -shp mode 0
t is2 -shp max_change 5 5
t is2 -shp cor d:\coring.txt
sleep 1

#--Misc. Adjustments--
# Short Beep once script fully loaded
t pwm 1 enable
sleep 1
t pwm 1 disable

#--Junk file deletion--
# Delete Junk Video Files on Startup (Widened version)
rm \DCIM\100MEDIA\*thm.mp4
rm \DCIM\101MEDIA\*thm.mp4
rm \DCIM\102MEDIA\*thm.mp4
rm \DCIM\103MEDIA\*thm.mp4
rm \DCIM\104MEDIA\*thm.mp4
rm \DCIM\105MEDIA\*thm.mp4
rm \DCIM\106MEDIA\*thm.mp4
rm \DCIM\107MEDIA\*thm.mp4
rm \DCIM\108MEDIA\*thm.mp4
rm \DCIM\109MEDIA\*thm.mp4
rm \DCIM\110MEDIA\*thm.mp4
rm \DCIM\111MEDIA\*thm.mp4
rm \DCIM\112MEDIA\*thm.mp4
rm \DCIM\113MEDIA\*thm.mp4
rm \DCIM\114MEDIA\*thm.mp4
rm \DCIM\115MEDIA\*thm.mp4
rm \DCIM\116MEDIA\*thm.mp4
rm \DCIM\117MEDIA\*thm.mp4
rm \DCIM\118MEDIA\*thm.mp4
rm \DCIM\119MEDIA\*thm.mp4
rm \DCIM\120MEDIA\*thm.mp4
rm \DCIM\121MEDIA\*thm.mp4
rm \DCIM\122MEDIA\*thm.mp4
rm \DCIM\123MEDIA\*thm.mp4
rm \DCIM\124MEDIA\*thm.mp4
rm \DCIM\125MEDIA\*thm.mp4
rm \DCIM\126MEDIA\*thm.mp4
rm \DCIM\127MEDIA\*thm.mp4
rm \DCIM\128MEDIA\*thm.mp4
rm \DCIM\129MEDIA\*thm.mp4
rm \DCIM\130MEDIA\*thm.mp4
# Delete App Thumbnails on Startup (Widened version)
rm \DCIM\100MEDIA\*.thm
rm \DCIM\101MEDIA\*.thm
rm \DCIM\102MEDIA\*.thm
rm \DCIM\103MEDIA\*.thm
rm \DCIM\104MEDIA\*.thm
rm \DCIM\105MEDIA\*.thm
rm \DCIM\106MEDIA\*.thm
rm \DCIM\107MEDIA\*.thm
rm \DCIM\108MEDIA\*.thm
rm \DCIM\109MEDIA\*.thm
rm \DCIM\110MEDIA\*.thm
rm \DCIM\111MEDIA\*.thm
rm \DCIM\112MEDIA\*.thm
rm \DCIM\113MEDIA\*.thm
rm \DCIM\114MEDIA\*.thm
rm \DCIM\115MEDIA\*.thm
rm \DCIM\116MEDIA\*.thm
rm \DCIM\117MEDIA\*.thm
rm \DCIM\118MEDIA\*.thm
rm \DCIM\119MEDIA\*.thm
rm \DCIM\120MEDIA\*.thm
rm \DCIM\121MEDIA\*.thm
rm \DCIM\122MEDIA\*.thm
rm \DCIM\123MEDIA\*.thm
rm \DCIM\124MEDIA\*.thm
rm \DCIM\125MEDIA\*.thm
rm \DCIM\126MEDIA\*.thm
rm \DCIM\127MEDIA\*.thm
rm \DCIM\128MEDIA\*.thm
rm \DCIM\129MEDIA\*.thm
rm \DCIM\130MEDIA\*.thm
