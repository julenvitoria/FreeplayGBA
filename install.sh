#!/bin/bash

cd ~
git clone https://github.com/julenvitoria/FreeplayGBAcm3
if grep -q "Update Addons" /opt/retropie/configs/all/emulationstation/gamelists/retropie/gamelist.xml ; then
        echo "Directory update addons was created yet"
else
        mkdir /home/pi/RetroPie/retropiemenu/Update-Addons
fi
#mkdir /home/pi/RetroPie/retropiemenu/Update-Addons
cp /home/pi/FreeplayGBAcm3/Update.sh /home/pi/RetroPie/retropiemenu/Update-Addons
cp /home/pi/FreeplayGBAcm3/ActualizarSistema.sh /home/pi/RetroPie/retropiemenu/Update-Addons
chmod +x /home/pi/RetroPie/retropiemenu/Update-Addons/Update.sh
chmod +x /home/pi/RetroPie/retropiemenu/Update-Addons/ActualizarSistema.sh
if grep -q "Update Addons" /opt/retropie/configs/all/emulationstation/gamelists/retropie/gamelist.xml ; then
        echo "Update Addons is in the gamelist.xml yet"
else
        sudo sed -i 's|</gameList>|\t<game>\n\t\t<path>./Update-Addons/Update.sh</path>\n\t\t<name>Update Addons</name>\n\t\t<desc>Script for la updating options and configs of the image FreeplayGBAcm3</desc>\n\t\t<image></image>\n\t\t<playcount>0</playcount>\n\t\t<lastplayed>20180514T205700</lastplayed>\n\t</game>\n</gameList>|' /opt/retropie/configs/all/emulationstation/gamelists/retropie/gamelist.xml
fi
if grep -q "Update && Upgrade System" /opt/retropie/configs/all/emulationstation/gamelists/retropie/gamelist.xml ; then
        echo "Update && Upgrade System is in the gamelist.xml yet"
else
        sudo sed -i 's|</gameList>|\t<game>\n\t\t<path>./Update-Addons/UpdateUpgradeSystem.sh</path>\n\t\t<name>Update && Upgrade System</name>\n\t\t<desc>Script for Update && Upgrade System automatically</desc>\n\t\t<image></image>\n\t\t<playcount>0</playcount>\n\t\t<lastplayed>20180514T205700</lastplayed>\n\t</game>\n</gameList>|' /opt/retropie/configs/all/emulationstation/gamelists/retropie/gamelist.xml
fi

