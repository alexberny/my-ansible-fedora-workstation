#!/bin/bash
#
# Instal Ansible module
#
# curl -sL https://raw.githubusercontent.com/alexberny/my-ansible-fedora-workstation/main/install.sh -o install.sh && bash install.sh && rm install.sh
#
# wget https://raw.githubusercontent.com/alexberny/my-ansible-fedora-workstation/main/install.sh -O install.sh && bash install.sh && rm install.sh


set -x
set -e
PATH=/usr/local/bin:$PATH

# install ansible
sudo dnf install ansible

# get ansible script
if [ ! -d my-ansible-fedora-workstation ]; then
    git clone https://github.com/alexberny/my-ansible-fedora-workstation.git
    cd my-ansible-fedora-workstation
else
    cd my-ansible-fedora-workstation
    git pull
fi 


# # install ansible galaxy dep
# ansible-galaxy install -r requirements.yml

ansible-playbook workstation-setup.yml --ask-become-pass
# install ansible galaxy dep
# ansible-galaxy install -r requirements.yml
