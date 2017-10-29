clear
read -p "Please Enter Projec\\Repository Name: " f
sudo apt-get install curl
sudo apt-get install python-software-properties
sudo curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install nodejs
sudo npm install -g @angular/cli@latest
cd
mkdir Git ./Git/AngularJS
sudo ng new $f
sudo curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt update
sudo apt install code
sudo add-apt-repository ppa:git-core/ppa
sudo apt-get update
sudo apt-get install git
