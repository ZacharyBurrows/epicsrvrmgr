#!/bin/bash

echo dickbutt | sudo -S /home/ark/epicsrvrmgr/ark/stop.sh

sudo chown -R ark: /home/ark/*

sudo chown -R ark: /home/ark/*

sudo -u ark /home/ark/arkserver update

nohup /home/ark/epicsrvrmgr/ark/start.sh &
