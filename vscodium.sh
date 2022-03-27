# vscodium
sudo apt install curl apt-transport-https gnupg2 -y
curl https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg | gpg --dearmor \
| sudo tee /usr/share/keyrings/vscodium.gpg >/dev/null
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/vscodium.gpg] \
https://download.vscodium.com/debs vscodium main" \
| sudo tee /etc/apt/sources.list.d/vscodium.list
sudo apt update -y
sudo apt install codium -y
