#!/bin/bash

sudo cp topLogger.service /etc/systemd/system/
sudo chmod 664 /etc/systemd/system/topLogger.service

sudo systemctl daemon-reload

sudo systemctl enable topLogger.service
sudo systemctl start topLogger.service
