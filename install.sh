#!/bin/sh

#Global Stuff Installed Via apt
sudo apt-get update;
#sudo apt-get build-dep -y -q python-imaging;
#sudo ln -s /usr/lib/`uname -i`-linux-gnu/libfreetype.so /usr/lib/;
#sudo ln -s /usr/lib/`uname -i`-linux-gnu/libjpeg.so /usr/lib/;
#sudo ln -s /usr/lib/`uname -i`-linux-gnu/libz.so /usr/lib;
sudo apt-get install python-pip -y;
sudo apt-get install python-pip3 -y;
sudo apt-get install git -y;
sudo apt-get install emacs -y;
sudo apt-get install libmysqlclient-dev -y;
sudo apt-get install screen -y;
sudo apt-get install libssl-dev -y;
sudo apt-get install python-dev -y;
sudo apt-get install python3-dev -y;
sudo apt-get install curl -y;

#Global Stuff Installed Via PIP
sudo pip install virtualenvwrapper;

#Yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install yarn -y

#Node
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs

#Angular Cli
sudo npm install -g @angular/cli
