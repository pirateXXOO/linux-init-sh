#!/bin/bash

sudo apt update
sudo apt install -y vim htop iftop iotop terminator
sudo apt-get remove -y docker docker-engine docker.io containerd runc
sudo apt-get install -y ca-certificates curl gnupg lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin


DOCKER_CONFIG=${DOCKER_CONFIG:-$HOME/.docker}
mkdir -p $DOCKER_CONFIG/cli-plugins
curl -SL https://github.com/docker/compose/releases/download/v2.4.1/docker-compose-linux-x86_64 -o $DOCKER_CONFIG/cli-plugins/docker-compose
chmod +x $DOCKER_CONFIG/cli-plugins/docker-compose

sudo apt install -y fonts-arphic-uming gnome-user-docs-zh-hans language-pack-gnome-zh-hans libreoffice-help-zh-cn libreoffice-l10n-zh-cn libreoffice-help-en-gb libreoffice-l10n-en-za ibus-libpinyin fonts-arphic-ukai mythes-en-au thunderbird-locale-zh-cn thunderbird-locale-zh-hans hunspell-en-za hunspell-en-ca thunderbird-locale-en-gb language-pack-zh-hans ibus-table-wubi hyphen-en-gb fonts-noto-cjk-extra hunspell-en-gb hyphen-en-ca hunspell-en-au libreoffice-l10n-en-gb


sudo snap refresh
sudo snap install code --classic
sudo snap install postman
sudo snap install vlc

sudo apt upgrade -y
