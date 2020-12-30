#!/bin/bash
#
# Instal Ansible module
#
# curl -sL https://raw.githubusercontent.com/alexberny/thin_client_ubunut_with_ansible/main/install.sh -o install.sh && bash install.sh && rm install.sh
#
# wget https://raw.githubusercontent.com/alexberny/thin_client_ubunut_with_ansible/main/install.sh -O install.sh && bash install.sh && rm install.sh


set -x
set -e
PATH=/usr/local/bin:$PATH


# install ansible galaxy dep
ansible-galaxy install -r requirements.yml

ansible-playbook workstation-setup.yml --ask-become-pass
