#!/bin/bash

cd ~
wget -O- https://raw.githubusercontent.com/julenvitoria/FreeplayGBA/master/multi_switch.sh>/home/pi/scripts/multi_switch.sh
chmod +x ~/scripts/multi_switch.sh
if [ -d /home/pi/RetroPie/retropiemenu/Update-Addons ]; then
        echo "Directory update addons was created yet."
else
        mkdir /home/pi/RetroPie/retropiemenu/Update-Addons
fi
#Install Temperature Indicator
wget -O- https://raw.githubusercontent.com/julenvitoria/FreeplayGBATempIndicatorAddon/master/InstallTempIndicator.sh>/home/pi/RetroPie/retropiemenu/Update-Addons/InstallTempIndicator.sh
chmod +x /home/pi/RetroPie/retropiemenu/Update-Addons/InstallTempIndicator.sh
if grep -q "InstallTempIndicator.sh" /opt/retropie/configs/all/emulationstation/gamelists/retropie/gamelist.xml ; then
        echo "InstallTempIndicator is in the gamelist.xml yet"
else
        sudo sed -i 's|</gameList>|\t<game>\n\t\t<path>./Update-Addons/InstallTempIndicator.sh</path>\n\t\t<name>Install Temp. Indicator</name>\n\t\t<desc>Script to install temperature indicator. If the temperature exceeds 68 degrees, an icon will appear with the degrees the cpu is at.</desc>\n\t\t<image></image>\n\t\t<playcount>0</playcount>\n\t\t<lastplayed>20180514T205700</lastplayed>\n\t</game>\n</gameList>|' /opt/retropie/configs/all/emulationstation/gamelists/retropie/gamelist.xml
fi
#Install Update and Upgrade System
wget -O- https://raw.githubusercontent.com/julenvitoria/FreeplayGBA-UpdateUpgradeSystem/master/UpdateUpgradeSystem.sh>/home/pi/RetroPie/retropiemenu/Update-Addons/UpdateUpgradeSystem.sh
chmod +x /home/pi/RetroPie/retropiemenu/Update-Addons/UpdateUpgradeSystem.sh
if grep -q "UpdateUpgradeSystem.sh" /opt/retropie/configs/all/emulationstation/gamelists/retropie/gamelist.xml ; then
        echo "Update and Upgrade System is in the gamelist.xml yet"
else
        sudo sed -i 's|</gameList>|\t<game>\n\t\t<path>./Update-Addons/UpdateUpgradeSystem.sh</path>\n\t\t<name>Update-Upgrade System</name>\n\t\t<desc>Script for Update and Upgrade System automatically</desc>\n\t\t<image></image>\n\t\t<playcount>0</playcount>\n\t\t<lastplayed>20180514T205700</lastplayed>\n\t</game>\n</gameList>|' /opt/retropie/configs/all/emulationstation/gamelists/retropie/gamelist.xml
fi
#Install Update Emulators.cfg
wget -O- https://raw.githubusercontent.com/julenvitoria/FreeplayGBAcm3-Emulators.cfg/master/UpdateEmulators.sh>/home/pi/RetroPie/retropiemenu/Update-Addons/UpdateEmulators.sh
if grep -q "UpdateEmulators.sh" /opt/retropie/configs/all/emulationstation/gamelists/retropie/gamelist.xml ; then
        echo "Update Emulators is in the gamelist.xml yet"
else
        sudo sed -i 's|</gameList>|\t<game>\n\t\t<path>./Update-Addons/UpdateEmulators.sh</path>\n\t\t<name>Update Emulators.cfg</name>\n\t\t<desc>Script for Update emulators.cfg</desc>\n\t\t<image></image>\n\t\t<playcount>0</playcount>\n\t\t<lastplayed>20180514T205700</lastplayed>\n\t</game>\n</gameList>|' /opt/retropie/configs/all/emulationstation/gamelists/retropie/gamelist.xml
fi
#Restart EmulationStation
~/scripts/multi_switch.sh --ES-RESTART
