#!/usr/bin/env bash
 
#update all packages
#sudo apt-get upgrade -y
#install some too
sudo yum -y install \
  vim \
  git \
  expect \
  tcllib \
  tdom \
  openssh-client \
  make \
  build-essential \
  libssl-dev \
  zlib1g-dev \
  libbz2-dev \
  libreadline-dev \
  libsqlite3-dev \
  wget \
  curl
sudo gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
su - vagrant -c "/bin/bash /vagrant/cbootstrap_user.sh"
