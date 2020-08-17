#!/bin/bash

clear
cd ~
sudo apt update
sudo apt upgrade -y
#Install packages that have been kept back. If not nothing happens...
#sudo apt install raspberrypi-kernel -y --allow-change-held-packages
#sudo apt install raspberrypi-kernel-headers -y --allow-change-held-packages
#sudo apt install libraspberrypi-bin libraspberrypi-dev libraspberrypi-doc libraspberrypi0 raspberrypi-bootloader -y --allow-change-held-packages
