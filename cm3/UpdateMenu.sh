#!/bin/bash

clear
cd ~
if [ -d /home/pi/RetroPie/retropiemenu/Update-Addons ]; then
        echo "Directory update addons was created yet."
        echo "Updating Addons Menu..."
        sleep 2
        rm -R /home/pi/RetroPie/retropiemenu/Update-Addons
        mkdir /home/pi/RetroPie/retropiemenu/Update-Addons
else
        echo "Creatings directory update addons."
        sleep 2
        mkdir /home/pi/RetroPie/retropiemenu/Update-Addons
fi

#Install Addons Menu Updater
wget -O- https://raw.githubusercontent.com/julenvitoria/FreeplayGBA/master/cm3/UpdateMenu.sh>/home/pi/RetroPie/retropiemenu/Update-Addons/UpdateMenu.sh
chmod +x /home/pi/RetroPie/retropiemenu/Update-Addons/UpdateMenu.sh
if grep -q "UpdateMenu.sh" /opt/retropie/configs/all/emulationstation/gamelists/retropie/gamelist.xml ; then
        echo "UpdateMenu is in the gamelist.xml yet"
else
        sudo sed -i 's|</gameList>|\t<game>\n\t\t<path>./Update-Addons/UpdateMenu.sh</path>\n\t\t<name>Addons menu update</name>\n\t\t<desc>Script to update addons menu.</desc>\n\t\t<image></image>\n\t\t<playcount>0</playcount>\n\t\t<lastplayed>20180514T205700</lastplayed>\n\t</game>\n</gameList>|' /opt/retropie/configs/all/emulationstation/gamelists/retropie/gamelist.xml
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
        sudo sed -i 's|</gameList>|\t<game>\n\t\t<path>./Update-Addons/UpdateUpgradeSystem.sh</path>\n\t\t<name>Update-Upgrade System</name>\n\t\t<desc>Script to Update and Upgrade System automatically</desc>\n\t\t<image></image>\n\t\t<playcount>0</playcount>\n\t\t<lastplayed>20180514T205700</lastplayed>\n\t</game>\n</gameList>|' /opt/retropie/configs/all/emulationstation/gamelists/retropie/gamelist.xml
fi
#Install Update Emulators.cfg
wget -O- https://raw.githubusercontent.com/julenvitoria/FreeplayGBA-Emulators.cfg/master/cm3/UpdateEmulators.sh>/home/pi/RetroPie/retropiemenu/Update-Addons/UpdateEmulators.sh
chmod +x /home/pi/RetroPie/retropiemenu/Update-Addons/UpdateEmulators.sh
if grep -q "UpdateEmulators.sh" /opt/retropie/configs/all/emulationstation/gamelists/retropie/gamelist.xml ; then
        echo "Update Emulators is in the gamelist.xml yet"
else
        sudo sed -i 's|</gameList>|\t<game>\n\t\t<path>./Update-Addons/UpdateEmulators.sh</path>\n\t\t<name>Update Emulators.cfg</name>\n\t\t<desc>Script to Update emulators.cfg</desc>\n\t\t<image></image>\n\t\t<playcount>0</playcount>\n\t\t<lastplayed>20180514T205700</lastplayed>\n\t</game>\n</gameList>|' /opt/retropie/configs/all/emulationstation/gamelists/retropie/gamelist.xml
fi

#Install Super Retroboy theme and launchings
wget -O- https://raw.githubusercontent.com/julenvitoria/FreeplayGBA-SuperRetroBoyTheme/master/ThemePlusLaunchings.sh>/home/pi/RetroPie/retropiemenu/Update-Addons/ThemePlusLaunchings.sh
chmod +x /home/pi/RetroPie/retropiemenu/Update-Addons/ThemePlusLaunchings.sh
if grep -q "ThemePlusLaunchings.sh" /opt/retropie/configs/all/emulationstation/gamelists/retropie/gamelist.xml ; then
        echo "ThemePlusLaunchings is in the gamelist.xml yet"
else
        sudo sed -i 's|</gameList>|\t<game>\n\t\t<path>./Update-Addons/ThemePlusLaunchings.sh</path>\n\t\t<name>SRB theme + Launchings</name>\n\t\t<desc>Script to install Super Retroboy theme from KALEL1981 and launchings per systems.</desc>\n\t\t<image></image>\n\t\t<playcount>0</playcount>\n\t\t<lastplayed>20180514T205700</lastplayed>\n\t</game>\n</gameList>|' /opt/retropie/configs/all/emulationstation/gamelists/retropie/gamelist.xml
fi

#Install N64HDTextures
wget -O- https://raw.githubusercontent.com/julenvitoria/FreeplayGBA-N64HDTextures/master/N64HDTextures.sh>/home/pi/RetroPie/retropiemenu/Update-Addons/N64HDTextures.sh
chmod +x /home/pi/RetroPie/retropiemenu/Update-Addons/N64HDTextures.sh
if grep -q "N64HDTextures.sh" /opt/retropie/configs/all/emulationstation/gamelists/retropie/gamelist.xml ; then
        echo "N64HDTextures is in the gamelist.xml yet"
else
        sudo sed -i 's|</gameList>|\t<game>\n\t\t<path>./Update-Addons/N64HDTextures.sh</path>\n\t\t<name>Install N64 HD Textures</name>\n\t\t<desc>Script to install HD textures used with Mupen64Plus emulator.</desc>\n\t\t<image></image>\n\t\t<playcount>0</playcount>\n\t\t<lastplayed>20180514T205700</lastplayed>\n\t</game>\n</gameList>|' /opt/retropie/configs/all/emulationstation/gamelists/retropie/gamelist.xml
fi

#Restart EmulationStation
~/scripts/multi_switch.sh --ES-RESTART
