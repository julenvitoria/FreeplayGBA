#!/usr/bin/env bash
cd ~
mkdir FreeplayGBAcm3
git clone https://github.com/julenvitoria/FreeplayGBAcm3
cd FreeplayGBAcm3
crontab mycron
cp emulators.cfg /opt/retropie/configs/all


mkdir -p "/home/pi/RetroPie/retropiemenu/Freeplay Options"
cp /home/pi/Freeplay/Freeplay-Support/OptimalLCDSettings.sh "/home/pi/RetroPie/retropiemenu/Freeplay Options/OptimalLCDSettings.sh"

if grep -q "Freeplay Optimal LCD Settings" /opt/retropie/configs/all/emulationstation/gamelists/retropie/gamelist.xml ; then
	echo "Optimal LCD Settings Changer already in menu"
else
	sudo sed -i 's|</gameList>|\t<game>\n\t\t<path>./Freeplay Options/OptimalLCDSettings.sh</path>\n\t\t<name>Freeplay Optimal LCD Settings</name>\n\t\t<desc>Switch between optimal LCD settings and HDMI compatibility</desc>\n\t\t<image></image>\n\t\t<playcount>0</playcount>\n\t\t<lastplayed>20180514T205700</lastplayed>\n\t</game>\n</gameList>|' /opt/retropie/configs/all/emulationstation/gamelists/retropie/gamelist.xml
fi
