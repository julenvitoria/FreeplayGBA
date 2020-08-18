#!/bin/sh

if [ -f "/etc/rc.local" ]; then
        sudo mv "/etc/rc.local" "/etc/rc.local.bak"
    fi

    #####Do not touch the following lines#####
cat <<EOF > /etc/rc.local &&
#!/bin/sh
echo "I will continue with system update..."
/home/pi/Freeplay/mk_arcade_joystick_rpi/install.sh
sudo rm -f /etc/rc.local; sudo cp -f /etc/rc.local.bak /etc/rc.local; /etc/rc.local
EOF
sudo reboot
exit
    #####End no touch zone#####