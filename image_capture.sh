#!/bin/bash


#capture image at regular interval
while true
do
  	ffmpeg -y -f v4l2 -i /dev/video0 -vframes 1  -video_size 640x480 -update 1 /usr/sbin/jobreceiver/test_image.jpeg
      sleep 60
done
