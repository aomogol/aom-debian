#!/bin/bash
#
##################################################################################################################

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update -y
sudo apt-get install sublime-text -y

#wget -O- https://download.sublimetext.com/sublimehq-pub.gpg | gpg --dearmor | sudo tee /usr/share/keyrings/sublimehq-archive-keyring.gpg

#echo "deb [signed-by=/usr/share/keyrings/sublimehq-archive-keyring.gpg] https://download.sublimetext.com/ apt/dev/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

##################################################################################################################

echo "################################################################"
echo "###################    T H E   E N D      ######################"
echo "################################################################"


