for %%i in (360_*.mp4) do (
	@echo file '%%i' >> mylist.txt
)
ffmpeg -f concat -i mylist.txt -c copy merged.mp4
del mylist.txt
ffmpeg -y -i merged.mp4 -vf v360=dfisheye:e:yaw=0:ih_fov=192:iv_fov=192 -c:v h264_nvenc -b:v 40000k -bufsize 5000k -c:a copy stretched.mp4
del merged.mp4
exiftool -tagsfromfile pano.xml -api largefilesupport=1 -all:all -o out.mp4 stretched.mp4
del stretched.mp4
pause