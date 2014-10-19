#!/bin/sh

if [ ! -f /usr/local/bin/ansible ]; then
  sudo apt-get install -y gcc python-setuptools python-dev
  sudo easy_install pip
  sudo pip install ansible
  sudo mkdir -p /etc/ansible
  sudo sh -c "echo localhost > /etc/ansible/hosts"
fi

