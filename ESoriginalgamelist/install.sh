#!/bin/bash

cd /home/pi
if [ -d /home/pi/tmp ]; then
        sudo rm -R /home/pi/tmp
        mkdir /home/pi/tmp
else
        mkdir /home/pi/tmp
fi
cd tmp
#Downloading and copying emulators configs
echo "Downloading and copying original retropie section gamelist.xml and reinstalling Addons Menu..."
sleep 2
~/scripts/github-downloader.sh https://github.com/julenvitoria/FreeplayGBA/blob/master/ESoriginalgamelist/gamelist.xml
cp gamelist.xml /opt/retropie/configs/all/emulationstation/gamelists/retropie/
cd ..
rm -r tmp
