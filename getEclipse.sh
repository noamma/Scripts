#!/bin/bash
cd ~/Downloads
wget http://mirrors.uniri.hr/eclipse//oomph/epp/oxygen/R/eclipse-inst-linux64.tar.gz
sudo tar -xvzf eclipse-inst-linux64.tar.gz -C /opt
/opt/eclipse-installer/eclipse-inst
sudo gedit /usr/share/applications/eclipse.desktop
