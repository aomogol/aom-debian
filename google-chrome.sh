#!/bin/bash
#
############################################################################################
# Author 	: A Onder Mogol
# Website 	:
############################################################################################
# google chrome stable
sudo apt install software-properties-common -y
sudo wget -O- https://dl.google.com/linux/linux_signing_key.pub | gpg --dearmor | sudo tee /usr/share/keyrings/chrome.gpg
sudo sh -c 'echo "deb [signed-by=/usr/share/keyrings/chrome.gpg] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt-get update -y
sudo apt install google-chrome-stable -y
echo "################################################################"
echo "###################    google chrome installed #################"
echo "################################################################"
