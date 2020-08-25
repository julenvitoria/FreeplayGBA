Here are various patchs:

1-To reinstall addons menu downloading original retropie gamelist (needed if I change addons names in gamelist.txt to others and is installed):

    wget -O- https://raw.githubusercontent.com/julenvitoria/FreeplayGBA/master/patchs/installgamelist.sh | bash

2-To repair packages that have been kept back (only tested on stretch) please type this command twice via ssh:

    wget -O- https://raw.githubusercontent.com/julenvitoria/FreeplayGBA/master/patchs/PackagesPatch.sh | bash

3-To uninstall older games configs from our image:

    wget -O- https://raw.githubusercontent.com/julenvitoria/FreeplayGBA/master/patchs/uninstallgamescfg.sh | bash

4-To delete launching images per game and wheels from our image:

    wget -O- https://raw.githubusercontent.com/julenvitoria/FreeplayGBA/master/patchs/uninstallimageswheels.sh | bash