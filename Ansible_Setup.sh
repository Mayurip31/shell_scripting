#!/bin/bash

# Ansible Installation
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install -y ansible




# SSH Key Generation on Ansible Master

ssh-keygen

#ssh-copy-id ubuntu@172.31.35.31

# Add Private_IP into hosts file

sudo echo "172.31.47.18" >> "/etc/ansible/hosts"
sudo echo "172.31.35.31" >> "/etc/ansible/hosts"
sudo echo "172.31.44.137" >> "/etc/ansible/hosts"

# Disable configuration file of ansible (ansible.cfg)

sudo ansible-config init --disabled -t all > ansible.cfg

# Adding some changes in config file

sudo -i

sudo echo "[defaults]" >> "/etc/ansible/ansible.cfg"
sudo echo "host_key_checking = False" >> "/etc/ansible/ansible.cfg"
sudo echo "private_key_file = /home/ubutnu/.ssh/id_rsa" >> "/etc/ansible/ansible.cfg"


