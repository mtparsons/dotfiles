#!/bin/sh

#Global Stuff Installed Via apt
sudo apt-get update;
sudo apt-get build-dep -y -q python-imaging;
sudo ln -s /usr/lib/`uname -i`-linux-gnu/libfreetype.so /usr/lib/;
sudo ln -s /usr/lib/`uname -i`-linux-gnu/libjpeg.so /usr/lib/;
sudo ln -s /usr/lib/`uname -i`-linux-gnu/libz.so /usr/lib;
sudo apt-get install python-pip -y;
sudo apt-get install git -y;
sudo apt-get install emacs -y;
sudo apt-get install libmysqlclient-dev -y;
sudo apt-get install libpq-dev -y;
sudo apt-get install screen -y;
sudo apt-get install libssl-dev -y;
sudo apt-get install nodejs -y;
sudo apt-get install nodejs-legacy -y;
sudo apt-get install npm -y;
sudo apt-get install python-dev -y;
sudo apt-get install ruby-dev -y;

#Global Stuff Installed Via PIP
sudo pip install virtualenvwrapper;

#Global Gems
sudo gem install sass;
sudo gem install compass;

#Global Node packages
sudo npm install -g grunt-cli;
sudo npm install -g bower;
sudo npm install -g jsdoc;
sudo npm install -g phonegap;

#Android Development
mkdir -p ~/Work/android && pushd ~/Work/android;
#xXx wonder if there is a way to get latest
wget http://dl.google.com/android/android-sdk_r24.3.3-linux.tgz;
tar -zxvf android-sdk_r24.3.3-linux.tgz;
popd;
