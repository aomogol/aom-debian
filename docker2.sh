#Uninstall old versions
#sudo apt-get remove docker docker-engine docker.io containerd runc

sudo apt-get install -y ca-certificates curl gnupg lsb-release
sudo add-apt-repository    "deb [arch=amd64] https://download.docker.com/linux/debian \
   stretch \
   stable"

curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

sudo apt-get update -y
sudo apt-get install -y docker-ce docker-ce-cli containerd.io

#sudo chmod a+r /usr/share/keyrings/docker-archive-keyring.gpg

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key --keyring /etc/apt/trusted.gpg.d/docker-apt-key.gpg add



