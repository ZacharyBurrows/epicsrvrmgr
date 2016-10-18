#!/bin/bash

../stop.sh
../update.sh

sudo cp /home/ark/epicsrvrmgr/ark/Custom\ Config\ Files/GameUserSettings_653Event.ini /home/ark/serverfiles/ShooterGame/Saved/Config/LinuxServer/GameUserSettings.ini
sudo cp /home/ark/epicsrvrmgr/ark/Custom\ Config\ Files/Game_AllAlphasOn.ini /home/ark/serverfiles/ShooterGame/Saved/Config/LinuxServer/Game.ini

../start.sh
