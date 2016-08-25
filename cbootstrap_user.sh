#!/usr/bin/env bash

echo ">>> vagrant user setup"
git config --global user.name "Vagrant"
git config --global user.email "vagrant@vagrant.com"

#install pyenv
cd ~
sudo rm -Rf ~/.pyenv
curl -L https://raw.githubusercontent.com/yyuu/pyenv-installer/master/bin/pyenv-installer | bash
echo 'export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"' >> ~/.bash_profile
source ~/.bash_profile
pyenv install 2.7.12
pyenv global 2.7.12
if pyenv versions | grep "* 2.7.12"; then echo "PYENV SUCCESSFULLY INSTALLED"; fi
pip install virtualenv

\curl -sSL https://get.rvm.io | bash -s stable --ruby
source ~/.bash_profile
gem install fpm

echo "<<< vagrant user setup"
