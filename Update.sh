#!/bin/bash

cd ~
#HACEMOS UPDATE Y UPGRADE PARA TENER EL SISTEMA ACTUALIZADO
sudo apt update && sudo apt upgrade -y
#CLONAMOS EL REPO DE LOS ADDONS DE LA IMAGEN
git clone https://github.com/julenvitoria/FreeplayGBAcm3Addons
#COPIAMOS EL EMULATORS
cd FreeplayGBAcm3Addons
cp emulators.cfg /opt/retropie/configs/all
cd ~
#CLONAMOS EL SCRIPT DE TEMPERATURA, INSTALAMOS SUS DEPENDENCIAS,
#CAMBIAMOS EL SCRIPT POR OTRO MODIFICADO PARA LA GBA Y CAMBIAMOS
#TAMBIEN EL CRONTAB PARA QUE LO CARGUE EN EL ARRANQUE
git clone https://github.com/LuisDiazUgena/temperatureMonitor
sudo apt install libpng-dev -y
sudo apt-get install python-gpiozero -y
sudo apt-get install python-pkg-resources python3-pkg-resources -y
sudo apt-get install build-essential python-dev python-smbus python-pip -y
sudo chmod 755 /home/pi/temperatureMonitor/Pngview/pngview
cd ~/FreeplayGBAcm3Addons
cp tempMonitor.py ~/temperatureMonitor
crontab mycron
