# gear360
Scripts to convert spherical video to equirectangular 360 and tag for youtube

![](/img/gear360.jpg)

The samsung gear produces images and dual spherical video :

![](/img/s_360_0312.jpg)  ![](/img/s_sam_0312.jpg)

This script converts it to equirectangular as in the second image, which is suitable for viewing on youtube etc.

Usage
-----


stretch.bat

converts all files in the current folder ending in .mp4 
a converted copy is created called filename-stretched.mp4
files are also tagged ready for 360 viewing/youtube upload

join-stretched.bat

joins all files ending in *stretched.mp4 into one file

              
Requirements:
-------------
ffmpeg.exe

exiftool.exe
