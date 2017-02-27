#!/bin/bash

echo dickbutt | sudo -S /home/ark/epicsrvrmgr/ark/stop.sh

echo "MAKING ark OWNER OF ALL FILES IN /home/ark"
sudo chown -R ark: /home/ark/*

sudo chown -R ark: /home/ark/*

echo "UPDATING SERVER USING /home/ark/arkserver update command"
sudo -u ark /home/ark/arkserver update

echo "STARTING SERVER USING: nohup /home/ark/epicsrvrmgr/ark/start.sh &"
./start.sh
