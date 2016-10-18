Using drive
To use this application, you’ll need version 1.2 or newer of Google’s Go 
language compiler installed. On Ubuntu 14.04, you can install it using the 
following command — this also installs other tools you’ll need:

sudo apt-get install golang git mercurial



Set up your GOPATH before continuing.
(
	Make sure to set your GOPATH in your env, .bashrc or .bash_profile file.
	If you have not yet set it, you can do so like this:

	cat << ! >> ~/.bashrc
	> export GOPATH=\$HOME/gopath
	> export PATH=\$GOPATH:\$GOPATH/bin:\$PATH
	> !
	source ~/.bashrc
)

After doing so, use the following command to download and install drive:

go get -u github.com/odeke-em/drive/cmd/drive



You can then run the following command to get help:

drive help



First, you’ll need to initialize drive with the following command. 
It will ask you to choose a local directory and authenticate with your Google account.

drive init



Afterward, you can use the “drive push” command to push a file to the remote server 
— for example, “drive push example.txt” pushes a file named example.txt in the 
current folder to your Google Drive account. The “drive pull” command pulls a file 
from Google Drive to your computer — for example, “drive pull /text/example.txt” 
pulls a file named “example.txt” located in the Google Drive “text” folder to your 
local computer. It’s your job to push and pull files back and forth when you need them.
