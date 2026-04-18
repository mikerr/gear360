@echo off
for %%f in (*.mp4) do (  
    ffmpeg -y -i %%f -vf v360=dfisheye:e:yaw=0:ih_fov=192:iv_fov=192 -c:v h264_nvenc -b:v 40000k -bufsize 5000k -c:a copy out.mp4
    exiftool -tagsfromfile pano.xml -api largefilesupport=1 -all:all -o %%~nf-stretched.mp4 out.mp4
)

