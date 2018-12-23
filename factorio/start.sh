#!/bin/bash

tmux new-session -d -s factorio 'echo dickbutt | sudo -S /home/factorio/factorio/bin/x64/factorio --server-settings /home/factorio/factorio/data/server-settings.json --start-server-load-latest --console-log /home/factorio/Factorio.log'
