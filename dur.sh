wget -qO - 'https://proget.hunterwittenborn.com/debian-feeds/makedeb.pub' | \
gpg --dearmor | \
sudo tee /usr/share/keyrings/makedeb-archive-keyring.gpg &> /dev/null

echo 'deb [signed-by=/usr/share/keyrings/makedeb-archive-keyring.gpg arch=all] https://proget.hunterwittenborn.com/ makedeb main' | \
sudo tee /etc/apt/sources.list.d/makedeb.list
sudo apt update -y
sudo apt install makedeb -y

# UNA (arch aur gibi
bash <(curl -fsL https://github.com/AFK-OS/una/raw/main/install.sh)

#tap (arch aur gibi )
git clone 'https://mpr.hunterwittenborn.com/tap'
cd tap/
makedeb -si

