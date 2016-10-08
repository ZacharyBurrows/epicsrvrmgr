#!/bin/bash

sudo chown -R ark /home/ark/*

/home/ark/arkserver update

nohup /home/ark/epicsrvrmgr/ark/start.sh &
