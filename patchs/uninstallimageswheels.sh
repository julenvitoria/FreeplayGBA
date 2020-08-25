#!/bin/bash

#This script is to delete three games configs of an image that I have

#Images
if [ -d "/home/pi/RetroPie/roms/arcade/images/" ]; then
        rm -r "/home/pi/RetroPie/roms/arcade/images/"
else
        echo "Images directory isn't in arcade directory"
fi

if [ -d "/home/pi/RetroPie/roms/neogeo/images/" ]; then
        rm -r "/home/pi/RetroPie/roms/neogeo/images/"
else
        echo "Images directory isn't in neogeo directory"
fi

#Wheels
if [ -d "/home/pi/RetroPie/roms/arcade/wheel/" ]; then
        rm -r "/home/pi/RetroPie/roms/arcade/wheel/"
else
        echo "Wheel directory isn't in arcade directory"
fi

if [ -d "/home/pi/RetroPie/roms/dreamcast/wheel/" ]; then
        rm -r "/home/pi/RetroPie/roms/dreamcast/wheel/"
else
        echo "Wheel directory isn't in dreamcast directory"
fi

if [ -d "/home/pi/RetroPie/roms/gamegear/wheel/" ]; then
        rm -r "/home/pi/RetroPie/roms/gamegear/wheel/"
else
        echo "Wheel directory isn't in gamegear directory"
fi

if [ -d "/home/pi/RetroPie/roms/gb/wheel/" ]; then
        rm -r "/home/pi/RetroPie/roms/gb/wheel/"
else
        echo "Wheel directory isn't in gb directory"
fi

if [ -d "/home/pi/RetroPie/roms/gba/wheel/" ]; then
        rm -r "/home/pi/RetroPie/roms/gba/wheel/"
else
        echo "Wheel directory isn't in gba directory"
fi

if [ -d "/home/pi/RetroPie/roms/gbc/wheel/" ]; then
        rm -r "/home/pi/RetroPie/roms/gbc/wheel/"
else
        echo "Wheel directory isn't in gbc directory"
fi

if [ -d "/home/pi/RetroPie/roms/mastersystem/wheel/" ]; then
        rm -r "/home/pi/RetroPie/roms/mastersystem/wheel/"
else
        echo "Wheel directory isn't in mastersystem directory"
fi

if [ -d "/home/pi/RetroPie/roms/megadrive/wheel/" ]; then
        rm -r "/home/pi/RetroPie/roms/megadrive/wheel/"
else
        echo "Wheel directory isn't in megadrive directory"
fi

if [ -d "/home/pi/RetroPie/roms/n64/wheel/" ]; then
        rm -r "/home/pi/RetroPie/roms/n64/wheel/"
else
        echo "Wheel directory isn't in n64 directory"
fi

if [ -d "/home/pi/RetroPie/roms/nds/wheel/" ]; then
        rm -r "/home/pi/RetroPie/roms/nds/wheel/"
else
        echo "Wheel directory isn't in nds directory"
fi

if [ -d "/home/pi/RetroPie/roms/neogeo/wheel/" ]; then
        rm -r "/home/pi/RetroPie/roms/neogeo/wheel/"
else
        echo "Wheel directory isn't in neogeo directory"
fi

if [ -d "/home/pi/RetroPie/roms/nes/wheel/" ]; then
        rm -r "/home/pi/RetroPie/roms/nes/wheel/"
else
        echo "Wheel directory isn't in nes directory"
fi

if [ -d "/home/pi/RetroPie/roms/pcengine/wheel/" ]; then
        rm -r "/home/pi/RetroPie/roms/pcengine/wheel/"
else
        echo "Wheel directory isn't in pcengine directory"
fi

if [ -d "/home/pi/RetroPie/roms/segacd/wheel/" ]; then
        rm -r "/home/pi/RetroPie/roms/segacd/wheel/"
else
        echo "Wheel directory isn't in segacd directory"
fi

if [ -d "/home/pi/RetroPie/roms/snes/wheel/" ]; then
        rm -r "/home/pi/RetroPie/roms/snes/wheel/"
else
        echo "Wheel directory isn't in snes directory"
fi

if [ -d "/home/pi/RetroPie/roms/zxspectrum/wheel/" ]; then
        rm -r "/home/pi/RetroPie/roms/zxspectrum/wheel/"
else
        echo "Wheel directory isn't in zxspectrum directory"
fi

#Create scripts directory if it isn't
if [ -d /home/pi/scripts/ ]; then
        echo "Directory scripts was created yet"
else
        echo "Creating scripts directory"
        mkdir /home/pi/scripts/
fi

#Install multi_switch script if it isn't
if [ /home/pi/scripts/multi_switch.sh does not exist ]; then
        wget -O- https://raw.githubusercontent.com/julenvitoria/FreeplayGBA/master/multi_switch.sh>/home/pi/scripts/multi_switch.sh
        chmod +x /home/pi/scripts/multi_switch.sh
fi

#Restart EmulationStation
/home/pi/scripts/multi_switch.sh --ES-RESTART

echo "Process finished!"