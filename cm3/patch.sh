#!/bin/bash

clear
cd ~
sudo apt update
sudo apt upgrade -y
#Install packages that have been kept back. If packages aren't kept back nothing happens...
sudo apt install raspberrypi-kernel raspberrypi-kernel-headers libraspberrypi-bin libraspberrypi-dev libraspberrypi-doc libraspberrypi0 raspberrypi-bootloader -y --allow-change-held-packages
cd ~/Freeplay
cd mk_arcade_joystick_rpi
./install.sh
echo "SHUTTING DOWN... PLEASE POWER ON BEFORE"
sleep 1
echo "SHUTTING DOWN... PLEASE POWER ON BEFORE"
sleep 1
echo "SHUTTING DOWN... PLEASE POWER ON BEFORE"
sleep 1
echo "SHUTTING DOWN... PLEASE POWER ON BEFORE"
sleep 1
echo "SHUTTING DOWN... PLEASE POWER ON BEFORE"
sleep 1
echo "SHUTTING DOWN... PLEASE POWER ON BEFORE"
sleep 1
echo "SHUTTING DOWN... PLEASE POWER ON BEFORE"
sleep 1
echo "SHUTTING DOWN... PLEASE POWER ON BEFORE"
sleep 1
sudo poweroff