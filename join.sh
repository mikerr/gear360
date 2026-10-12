for f in *.MP4; do echo "file '$f'"; done > mylist.txt
ffmpeg -f concat -safe 0 -i mylist.txt -c copy output.mp4
