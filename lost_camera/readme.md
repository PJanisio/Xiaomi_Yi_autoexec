<<<<<<< HEAD
## Creates file with your credentials with every boot of camera
=======
## Creates file with your credentials every boot of camera
>>>>>>> parent of 4b23acd... Update readme.md

### What the hell is that?  

If you will lost your cam during your activity and someone will find it, camera will serve him you data (name, address, telephone number) whatever you like to message to him.
Even after **formatting SD card** your data will be still recreated!

### Installing script

1. Copy all files from **install_script** directory to your SD card root
2. Edit file IF_FOUND.txt and place your credentials
3. Boot up your camera
4. After you hear long (3s) beep from camera, you are done!

### Updating script

1. Copy all files from **update_info_script** directory to your SD card root
2. Edit file update/IF_FOUND.txt and place your credentials
3. Boot up your camera
4. After you hear 1s beep from camera, your informations are updated!

### Removing script completely

1. Copy all files from **delete_script** directory to your SD card root
2. Boot up your camera
3. After you hear 1s beep from camera, your script and info script are removed from camera!


Now every time if you will boot your camera file IF_FOUND.txt will be created.  
You dont need to delete autoexec.ash or other files from your camera, script will do it for you.

Thanks to KonradIT for the idea!
