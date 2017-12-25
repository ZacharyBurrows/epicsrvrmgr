#!/bin/bash

/home/ark/steamcmd/steamcmd.sh +login anonymous +force_install_dir /home/ark/ +app_update 376030 -beta holidayevent validate +quit

sudo chown -R ark: /home/ark/*

#/home/ark/arkserver update
