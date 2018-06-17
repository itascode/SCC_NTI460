#!/bin/bash
# forked from https://github.com/yolmant/Ansible

# VERY INSECURE; ONLY BEING DONE FOR ACADEMIC EXERCISE. NEVER DO THIS IN PRODUCTION
sudo chmod 777 /private/etc/ansible
echo "***Now creating groups for ansible (ldap, nfs, clients)***"
ansible-playbook -v ./create_groups.yml
echo "***Now creating servers for ansible (ldap, nfs)***"
ansible-playbook -v ./create_ldap_server.yml
ansible-playbook -v ./create_nfs_server.yml
# wait to spin up main LDAP + NFS servers
sleep 30
echo "***Now creating clients for LDAP and NFS servers***"
# generate yml playbook for arbitrary number of clients...
bash ./create_arbitrary_number_of_clients.sh
# playbook that configures the clients
ansible-playbook -v ./create_clients.yml
