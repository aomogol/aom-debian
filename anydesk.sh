sudo apt install wget apt-transport-https gnupg2 -y
curl https://keys.anydesk.com/repos/DEB-GPG-KEY | gpg --dearmor \
| sudo tee /usr/share/keyrings/anydesk.gpg >/dev/null
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/anydesk.gpg] \
http://deb.anydesk.com/ all main" \ | sudo tee /etc/apt/sources.list.d/anydesk.list
sudo apt update -y
sudo apt install anydesk -y
