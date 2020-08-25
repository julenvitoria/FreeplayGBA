#!/bin/bash

#This script is to delete three games configs of an image that I have
if [ -f "/opt/retropie/configs/all/retroarch/config/FinalBurn Neo/wrally2.cfg" ]; then
        rm -f "/opt/retropie/configs/all/retroarch/config/FinalBurn Neo/wrally2.cfg"
else
        echo "wrally2.cfg isn't in FinalBurn Neo directory"
fi
if [ -f "/opt/retropie/configs/all/retroarch/config/FB Alpha/dmnfrnt.cfg" ]; then
        rm -f "/opt/retropie/configs/all/retroarch/config/FB Alpha/dmnfrnt.cfg"
else
        echo "dmnfrnt.cfg isn't in FB Alpha directory"
fi
if [ -f "/opt/retropie/configs/all/retroarch/config/FinalBurn Neo/dmnfrnt.cfg" ]; then
        rm -f "/opt/retropie/configs/all/retroarch/config/FinalBurn Neo/dmnfrnt.cfg"
else
        echo "dmnfrnt.cfg isn't in FinalBurn Neo directory"
fi

echo "Process finished!"