#!/bin/bash


cd /home/USERNAME/Android/Sdk/platform-tools/
./adb kill-server
./adb start-server
./adb -s IP.IP.IP.IP:5555 connect IP.IP.IP.IP:5555
sleep 10
./adb -s IP.IP.IP.IP:5555 -d shell screenrecord --time-limit 10 /sdcard/demo.mp4
./adb -s IP.IP.IP.IP:5555 -d pull /sdcard/demo.mp4 /home/USERNAME/Videos/demo.mp4
./adb -s IP.IP.IP.IP:5555 -d shell rm /sdcard/demo.mp4
