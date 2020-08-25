#!/bin/bash

echo "Downloading and copying original retropie section gamelist.xml and reinstalling Addons Menu..."
sleep 2
wget -O- https://raw.githubusercontent.com/julenvitoria/FreeplayGBA/master/patchs/gamelist.xml>/opt/retropie/configs/all/emulationstation/gamelists/retropie/gamelist.xml
wget -O- https://raw.githubusercontent.com/julenvitoria/FreeplayGBA/master/cm3/install.sh | bash