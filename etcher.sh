#!/bin/bash
#
##################################################################################################################
##################################################################################################################
#etcher
curl -1sLf 'https://dl.cloudsmith.io/public/balena/etcher/setup.deb.sh' | sudo -E bash
sudo apt update && sudo apt upgrade -y
sudo apt-get install balena-etcher-electron -y


echo "################################################################"
echo "###################    T H E   E N D      ######################"
echo "################################################################"
