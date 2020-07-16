#!/bin/bash

cd ~
git clone https://github.com/julenvitoria/FreeplayGBAcm3
mkdir /home/pi/RetroPie/retropiemenu/Actualizar-Addons
cp /home/pi/FreeplayGBAcm3/Update.sh /home/pi/RetroPie/retropiemenu/Actualizar-Addons
chmod +x /home/pi/RetroPie/retropiemenu/Actualizar-Addons/Update.sh
if grep -q "Actualizar-Addons" /opt/retropie/configs/all/emulationstation/gamelists/retropie/gamelist.xml ; then
        echo "Actualizar Addons ya se encuenra en el menu"
else
        sudo sed -i 's|</gameList>|\t<game>\n\t\t<path>./Actualizar-Addons/Update.sh</path>\n\t\t<name>Actualizar Addons de la Imag$
fi

