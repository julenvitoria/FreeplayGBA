#!/bin/bash

#This script is to delete three games configs of an image that I have
if [ -d "/home/pi/RetroPie/roms/arcade/images/" ]; then
        rm -r "/home/pi/RetroPie/roms/arcade/images/"
else
        echo "Images directory isn't in arcade directory"
fi
if [ -d "/home/pi/RetroPie/roms/arcade/images/" ]; then
        rm -r "/home/pi/RetroPie/roms/arcade/images/"
else
        echo "Images directory isn't in arcade directory"
fi

echo "Process finished!"