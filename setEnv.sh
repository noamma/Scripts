#! /bin/bash

clear
echo "--------------Menu--------------"
echo ""
echo "1. install Angular Environment from scratch (git , nodejs, angular cli, vscode)"
echo "2. install only git"
echo "3. install only angular cli"
echo "4. install only vscode"
echo "5. only create new AngularJS Project"
echo ""
read -p  "enter your choise number: " ch
echo $ch
case $ch in
"1")
read -p "Please Enter Projec\\Repository Name: " f
sudo apt-get install curl
sudo apt-get install python-software-properties
sudo curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt-get install -y npm
sudo npm install -g @angular/cli@latest
cd ~
mkdir Git
mkdir  ~/Git/AngularJS
mkdir $f
cd ~/Git/AngularJS/$f
sudo ng new $f
sudo curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt update
sudo apt install code
sudo add-apt-repository ppa:git-core/ppa
sudo apt-get update
sudo apt-get install git;;
"2")sudo add-apt-repository ppa:git-core/ppa
sudo apt-get update
sudo apt-get install git;;
"3")sudo apt-get install curl
sudo apt-get install python-software-properties
sudo curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt-get install -y npm
sudo npm install -g @angular/cli@latest;;
"4")sudo apt-get install curl
sudo curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt update
sudo apt  install code;;
"5")read -p "Please Enter Project\\Repository Name: " f
cd ~/Git/AngularJS
mkdir $f
cd ~/Git/AngularJS/$f
sudo ng new $f;;esac

