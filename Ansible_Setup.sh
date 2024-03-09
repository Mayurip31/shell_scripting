#!/bin/bash

# Ansible Installation
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install -y ansible




# SSH Key Generation on Ansible Master

ssh-keygen

# Add Private_IP into hosts file

sudo echo "Node-1_IP" >> "/etc/ansible/hosts"
sudo echo "Node-2_IP" >> "/etc/ansible/hosts"
sudo echo "Node-3_IP" >> "/etc/ansible/hosts"


# Adding some changes in config file

sudo echo "[defaults]" >> "/etc/ansible/ansible.cfg"
sudo echo "host_key_checking = False" >> "/etc/ansible/ansible.cfg"
sudo echo "private_key_file = /home/ubutnu/.ssh/id_rsa" >> "/etc/ansible/ansible.cfg"


