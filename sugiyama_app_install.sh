#!/bin/bash

<<commentout
vagrant(https://www.vagrantup.com/)とvirtualbox(https://www.virtualbox.org/)はあらかじめ入れといてね
-----------------------------------------------------------------------
たった３回コマンドを打つだけでおけ！
$curl -O https://raw.githubusercontent.com/hibiking-0422/sugiyama_app/master/sugiyama_app_install.bat
$sugiyama_app_install.bat
$bash <(curl -s https://raw.githubusercontent.com/hibiking-0422/sugiyama_app/master/sugiyama_app_install.sh)
-----------------------------------------------------------------------
commentout

#update
sudo yum -y update

#SELinux disable
sudo setenforce 0

# Firewall http open
sudo firewall-cmd --add-service=http --zone=public --permanent
sudo firewall-cmd --reload

#git install
sudo yum install -y git

# Ruby Required
sudo yum install -y bzip2 gcc openssl-devel readline-devel zlib-devel

#needed pachage
sudo yum install -y openssl-devel readline-devel zlib-devel
sudo yum install -y gcc-c++
sudo yum -y install bzip2

#rbenv install
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
source ~/.bash_profile

#ruby-build install
git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
cd ~/.rbenv/plugins/ruby-build
sudo ./install.sh

#needed ruby pachage
sudo yum install -y openssl-devel readline-devel zlib-devel

#ruby install
rbenv install 2.6.3
rbenv rehash
rbenv global 2.6.3

#rails install
gem i -v 5.2.3 rails

# gem bundler install
gem install bundler

#SQLite install
sudo yum install -y sqlite-devel

#Node.js install
sudo yum install -y epel-release
sudo yum install -y nodejs npm

reboot
