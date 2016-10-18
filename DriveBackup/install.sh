#!/bin/bash

echo "INSTALLING GO"
sudo apt-get install golang git mercurial

echo "SETTING UP GOPATH"
cat << ! >> ~/.bashrc
export GOPATH=\$HOME/gopath
export PATH=\$GOPATH:\$GOPATH/bin:\$PATH
!
source ~/.bashrc

echo "INSTALLING GOOGLE DRIVE"
sudo go get -u github.com/odeke-em/drive/cmd/drive

echo "PRINTING DRIVE HELP"
drive help

echo "INITIALIZING GOOGLE DRIVE - YOU WILL NEED TO CHOOSE LOCAL DIRECTORY AND AUTHENTICATE YOUR GOOGLE ACCOUNT"
drive init
