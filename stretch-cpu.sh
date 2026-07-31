#!/bin/bash
for FILE in *.MP4 ; do
    [ -f "$FILE" ] || break
    ffmpeg -y -i $FILE -vf v360=dfisheye:e:yaw=0:ih_fov=192:iv_fov=192 -c:v libx264 -b:v 40000k -bufsize 5000k -c:a copy out.mp4
    exiftool -tagsfromfile pano.xml -api largefilesupport=1 -all:all -o $FILE-stretched.mp4 out.mp4
    rm out.mp4
done
for FILE in *.JPG ; do
    [ -f "$FILE" ] || break
    ffmpeg -y -i $FILE -vf v360=dfisheye:e:yaw=0:ih_fov=192:iv_fov=192 -c:a copy -q:v 2 out.JPG
    exiftool -tagsfromfile pano.xml -api largefilesupport=1 -all:all -o $FILE-stretched.JPG out.JPG
    rm out.JPG
done
