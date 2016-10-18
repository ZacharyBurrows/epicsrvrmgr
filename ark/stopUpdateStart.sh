#!/bin/bash

sudo ./stop.sh

sudo chown -R ark: /home/ark/*

sudo chown -R ark: /home/ark/*

/home/ark/arkserver update

nohup /home/ark/epicsrvrmgr/ark/start.sh &
