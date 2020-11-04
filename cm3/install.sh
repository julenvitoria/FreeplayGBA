#!/bin/bash

clear
cd /home/pi
sudo apt update
sudo apt upgrade -y
#Install subversion (SVN) for the normal functionality of github-downloader script
sudo apt install -y subversion
#Install autoconf.cfg for sound on Mupen64Plus
wget -O- https://raw.githubusercontent.com/julenvitoria/FreeplayGBA-ConfigsRemaps/master/cm3/configs/all/autoconf.cfg>/opt/retropie/configs/all/autoconf.cfg
#Create scripts directory
if [ -d /home/pi/scripts/ ]; then
        echo "Directory scripts was created yet"
        sleep 2
else
        echo "Creatings scripts directory"
        sleep 2
        mkdir /home/pi/scripts/
fi
#Install multi_switch script
wget -O- https://raw.githubusercontent.com/julenvitoria/FreeplayGBA/master/multi_switch.sh>/home/pi/scripts/multi_switch.sh
chmod +x /home/pi/scripts/multi_switch.sh

#Install github-downloader script
wget -O- https://raw.githubusercontent.com/julenvitoria/FreeplayGBA/master/github-downloader.sh>/home/pi/scripts/github-downloader.sh
chmod +x /home/pi/scripts/github-downloader.sh

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
        sudo sed -i 's|</gameList>|\t<game>\n\t\t<path>./Update-Addons/UpdateMenu.sh</path>\n\t\t<name>Addons Menu Updater Script</name>\n\t\t<desc>Script to update addons menu.</desc>\n\t\t<image></image>\n\t\t<playcount>0</playcount>\n\t\t<lastplayed>20180514T205700</lastplayed>\n\t</game>\n</gameList>|' /opt/retropie/configs/all/emulationstation/gamelists/retropie/gamelist.xml
fi

#Install Temperature Indicator
wget -O- https://raw.githubusercontent.com/julenvitoria/FreeplayGBA-TempIndicatorAddon/master/InstallTempIndicator.sh>/home/pi/RetroPie/retropiemenu/Update-Addons/InstallTempIndicator.sh
chmod +x /home/pi/RetroPie/retropiemenu/Update-Addons/InstallTempIndicator.sh
if grep -q "InstallTempIndicator.sh" /opt/retropie/configs/all/emulationstation/gamelists/retropie/gamelist.xml ; then
        echo "InstallTempIndicator is in the gamelist.xml yet"
else
        sudo sed -i 's|</gameList>|\t<game>\n\t\t<path>./Update-Addons/InstallTempIndicator.sh</path>\n\t\t<name>Install Temp. Indicator script</name>\n\t\t<desc>Script to install temperature indicator. If the temperature exceeds 68 degrees, an icon will appear with the degrees the cpu is at.</desc>\n\t\t<image></image>\n\t\t<playcount>0</playcount>\n\t\t<lastplayed>20180514T205700</lastplayed>\n\t</game>\n</gameList>|' /opt/retropie/configs/all/emulationstation/gamelists/retropie/gamelist.xml
fi
#Install Update and Upgrade System
wget -O- https://raw.githubusercontent.com/julenvitoria/FreeplayGBA-UpdateUpgradeSystem/master/UpdateUpgradeSystem.sh>/home/pi/RetroPie/retropiemenu/Update-Addons/UpdateUpgradeSystem.sh
chmod +x /home/pi/RetroPie/retropiemenu/Update-Addons/UpdateUpgradeSystem.sh
if grep -q "UpdateUpgradeSystem.sh" /opt/retropie/configs/all/emulationstation/gamelists/retropie/gamelist.xml ; then
        echo "Update and Upgrade System is in the gamelist.xml yet"
else
        sudo sed -i 's|</gameList>|\t<game>\n\t\t<path>./Update-Addons/UpdateUpgradeSystem.sh</path>\n\t\t<name>Update-Upgrade System packages</name>\n\t\t<desc>Script to Update and Upgrade System automatically</desc>\n\t\t<image></image>\n\t\t<playcount>0</playcount>\n\t\t<lastplayed>20180514T205700</lastplayed>\n\t</game>\n</gameList>|' /opt/retropie/configs/all/emulationstation/gamelists/retropie/gamelist.xml
fi
#Install Update Emulators.cfg
wget -O- https://raw.githubusercontent.com/julenvitoria/FreeplayGBA-Emulators.cfg/master/cm3/UpdateEmulators.sh>/home/pi/RetroPie/retropiemenu/Update-Addons/UpdateEmulators.sh
chmod +x /home/pi/RetroPie/retropiemenu/Update-Addons/UpdateEmulators.sh
if grep -q "UpdateEmulators.sh" /opt/retropie/configs/all/emulationstation/gamelists/retropie/gamelist.xml ; then
        echo "Update Emulators is in the gamelist.xml yet"
else
        sudo sed -i 's|</gameList>|\t<game>\n\t\t<path>./Update-Addons/UpdateEmulators.sh</path>\n\t\t<name>Update Emulators.cfg file</name>\n\t\t<desc>Script to Update emulators.cfg</desc>\n\t\t<image></image>\n\t\t<playcount>0</playcount>\n\t\t<lastplayed>20180514T205700</lastplayed>\n\t</game>\n</gameList>|' /opt/retropie/configs/all/emulationstation/gamelists/retropie/gamelist.xml
fi

#Install Super Retroboy theme and launchings
wget -O- https://raw.githubusercontent.com/julenvitoria/FreeplayGBA-SuperRetroBoyTheme/master/STBtheme.sh>/home/pi/RetroPie/retropiemenu/Update-Addons/ThemePlusLaunchings.sh
chmod +x /home/pi/RetroPie/retropiemenu/Update-Addons/SRBtheme.sh
if grep -q "SRBtheme.sh" /opt/retropie/configs/all/emulationstation/gamelists/retropie/gamelist.xml ; then
        echo "SRBtheme is in the gamelist.xml yet"
else
        sudo sed -i 's|</gameList>|\t<game>\n\t\t<path>./Update-Addons/SRBtheme.sh</path>\n\t\t<name>SuperRetroBoy theme + Launchings</name>\n\t\t<desc>Script to install Super Retroboy theme from KALEL1981 and launchings per systems.</desc>\n\t\t<image></image>\n\t\t<playcount>0</playcount>\n\t\t<lastplayed>20180514T205700</lastplayed>\n\t</game>\n</gameList>|' /opt/retropie/configs/all/emulationstation/gamelists/retropie/gamelist.xml
fi

#Install N64HDTextures
wget -O- https://raw.githubusercontent.com/julenvitoria/FreeplayGBA-N64HDTextures/master/N64HDTextures.sh>/home/pi/RetroPie/retropiemenu/Update-Addons/N64HDTextures.sh
chmod +x /home/pi/RetroPie/retropiemenu/Update-Addons/N64HDTextures.sh
if grep -q "N64HDTextures.sh" /opt/retropie/configs/all/emulationstation/gamelists/retropie/gamelist.xml ; then
        echo "N64HDTextures is in the gamelist.xml yet"
else
        sudo sed -i 's|</gameList>|\t<game>\n\t\t<path>./Update-Addons/N64HDTextures.sh</path>\n\t\t<name>Install N64 HD Textures</name>\n\t\t<desc>Script to install HD textures used with Mupen64Plus emulator.</desc>\n\t\t<image></image>\n\t\t<playcount>0</playcount>\n\t\t<lastplayed>20180514T205700</lastplayed>\n\t</game>\n</gameList>|' /opt/retropie/configs/all/emulationstation/gamelists/retropie/gamelist.xml
fi

#Install Configs and Remaps
wget -O- https://raw.githubusercontent.com/julenvitoria/FreeplayGBA-ConfigsRemaps/master/cm3/ConfigsRemaps.sh>/home/pi/RetroPie/retropiemenu/Update-Addons/ConfigRemaps.sh
chmod +x /home/pi/RetroPie/retropiemenu/Update-Addons/ConfigRemaps.sh
if grep -q "ConfigRemaps.sh" /opt/retropie/configs/all/emulationstation/gamelists/retropie/gamelist.xml ; then
        echo "Configs and Remaps is in the gamelist.xml yet"
else
        sudo sed -i 's|</gameList>|\t<game>\n\t\t<path>./Update-Addons/ConfigRemaps.sh</path>\n\t\t<name>Emulator Configs + Games Remaps</name>\n\t\t<desc>Script to install emulators configs and remaps for various games of various systems.</desc>\n\t\t<image></image>\n\t\t<playcount>0</playcount>\n\t\t<lastplayed>20180514T205700</lastplayed>\n\t</game>\n</gameList>|' /opt/retropie/configs/all/emulationstation/gamelists/retropie/gamelist.xml
fi
                
#Restart EmulationStation
/home/pi/scripts/multi_switch.sh --ES-RESTART
