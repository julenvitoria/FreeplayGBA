#!/bin/bash

cd ~
if [ -d /home/pi/tmp ]; then
        sudo rm -R /home/pi/tmp
        mkdir /home/pi/tmp
else
        mkdir /home/pi/tmp
fi
cd tmp
#Downloading and copying emulators configs
echo "Download and copy original retropie section gamelist.xml"
sleep 2
~/scripts/github-downloader.sh https://github.com/julenvitoria/FreeplayGBA/blob/master/ESoriginalgamelist/gamelist.xml
cp gamelist.xml /opt/retropie/configs/all/emulationstation/gamelists/retropie/
cd ..
rm -r tmp
echo "Reinstalling Addons Menu..."
sleep 2
wget -O- https://raw.githubusercontent.com/julenvitoria/FreeplayGBA/master/cm3/install.sh | bash