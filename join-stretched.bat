for %%i in (*stretched.mp4) do (
	@echo file '%%i' >> mylist.txt
)
ffmpeg -f concat -i mylist.txt -c copy output.mp4
del mylist.txt
pause