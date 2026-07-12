# gear360
Scripts to convert spherical video to equirectangular 360 and tag for youtube

![](/img/gear360.jpg)

The samsung gear produces images and dual spherical video :

![](/img/s_360_0312.jpg) 

This script converts it to equirectangular as below, 

![](/img/s_sam_0312.jpg)

and "tags" it as 360, so it's suitable for viewing via VLC, youtube etc.


Usage
-----
batch360.bat
<pre>
Joins all files named 360_*.mp4 in a folder together into one file
and converts it to equirectangular and 360 tagged ready for youtube upload
</pre>


stretch.bat, stretch.sh
<pre>
Converts all files in the current folder ending in .mp4
a converted copy of each file is created called filename-stretched.mp4
files are also tagged ready for 360 viewing/youtube upload

</pre>
<pre>
  
conversion times: 
  2x   realtime (50fps) on intel i7 / gtx3060
  0.1x realtime (2fps) on Pi 5 
</pre>


join-stretched.bat
<pre>joins all files ending in *stretched.mp4 into one file</pre>

              
Requirements:
-------------
ffmpeg.exe

exiftool.exe
