#!/bin/bash

apt-get -y install zsh
apt-get -y install git-core

wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh

chsh -s `which zsh`

mkdir /home/bart/GitHub
git clone git@gitlab.com:miklasz/first-run.git /home/bart/GitHub
cp /home/bart/GitHub/first-run/.zshrc ~/.zshrc
cp /home/bart/GitHub/first-run/bartron.zsh-theme ~/.oh-my-zsh/themes
