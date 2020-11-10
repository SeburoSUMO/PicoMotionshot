#!/bin/bash


cd /home/USERNAME/Android/Sdk/platform-tools/ && ./adb kill-server && ./adb start-server && ./adb -d shell screenrecord --time-limit 10 /sdcard/demo.mp4 && ./adb -d pull /sdcard/demo.mp4 /home/USERNAME/Videos/demo.mp4 && ./adb -d shell rm /sdcard/demo.mp4
