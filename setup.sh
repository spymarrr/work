#!/bin/bash

sudo apt -o Acquire::Check-Valid-Until=false update -y && sudo apt upgrade -y
sudo apt install vim ccze ansible zip unzip -y
unzip ansible.zip
ansible-playbook -i ansible/hosts ansible/rs1.yml --user=hessaddo --extra-vars "ansible_sudo_pass=56452312"