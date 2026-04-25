for %%i in (*stretched.mp4) do (
	@echo file '%%i' >> mylist.txt
)
ffmpeg -f concat -i mylist.txt -c copy output.mp4
exiftool -tagsfromfile pano.xml -api largefilesupport=1 -all:all -o output.mp4 merged.mp4
del mylist.txt output.mp4
pause
