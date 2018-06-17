#!/bin/bash

# Build a YAML configuration file for Ansible arbitrary num of clients
filepath="/Users/codes/__SCHOOL/SCC_NTI460/ansible_cloud_project/final/create_clients.yml"
developer_email="testing@nti-460.iam.gserviceaccount.com"
developer_credentials="/Users/codes/__SCHOOL/SCC_NTI460/ansible_cloud_project/final/NTI-460-0efee1cf66af.json"

echo "---
 - name: Create instance(s)
   hosts: localhost
   connection: local
   gather_facts: no

   vars:
     service_account_email: $developer_email
     credentials_file: $developer_credentials
     project_id: nti-460
     zone: us-west1-a
     machine_type: n1-standard-1
     image: ubuntu-1604-lts
     ldap: \"{{ groups['ldap-server'][0] }}\"
     nfs: \"{{ groups['nfs-server'][0] }}\"

   tasks:" > $filepath

function create_clients {
 echo "
    - name: Launch Client
      gce:
        instance_names: client$1
        zone: \"{{ zone }}\"
        machine_type: \"{{ machine_type }}\"
        image: \"{{ image }}\"
        image_family: \"{{ image }}\"
        service_account_email: \"{{ service_account_email }}\"
        credentials_file: \"{{ credentials_file }}\"
        project_id: \"{{ project_id }}\"
        tags: clients
        metadata: '{\"startup-script\" : \"curl https://raw.githubusercontent.com/codycodes/SCC_NTI460/master/ansible_cloud_project/final/instance_config_scripts/nfs_ldap_client.sh > client.sh; chmod +x ./client.sh; ./client.sh  {{ ldap }} {{ nfs }}\"}'
      register: gce

    - debug: msg=\" Client IP = {{ gce.instance_data[0].private_ip }}\"

    - name: adding instance to the groups
      lineinfile:
        dest: /etc/ansible/hosts
        insertafter: '^\[clients\]'
        line: \"{{ gce.instance_data[0].private_ip }}\"
        state: present
" >> $filepath

}

echo how many clients would you like Ansible to create?
read number_of_clients # stores the user input in a variable
for client_machine in $(seq 1 $number_of_clients);
do
 create_clients $client_machine;
done
