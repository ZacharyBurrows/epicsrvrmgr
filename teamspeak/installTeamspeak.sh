#!/bin/bash

wget http://teamspeak.gameserver.gamed.de/ts3/releases/3.0.11.3/teamspeak3-server_linux-amd64-3.0.11.3.tar.gz
tar xvfz teamspeak3-server_linux-amd64-3.0.11.3.tar.gz
cd teamspeak3-server_linux-amd64
./ts3server_startscript.sh start
