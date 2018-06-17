#!/bin/bash

#playbook that create the groups
ansible-playbook -v ./Groups.yml

#playbook that create instances
ansible-playbook -v ./Instances.yml
sleep 2m

#ssh to each server to verify connectivity
#and run the following command
ansible all -m ping

#playbook that configure the clients
ansible-playbook -v ./Clients-config.yml

#reboot all instances
ansible-playbook -v ./Reboot-servers.yml
sleep 1m
