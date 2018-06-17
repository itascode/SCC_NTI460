#!/bin/bash
apt-get update

echo "ARGUMENTS $1 $2"

export DEBIAN_FRONTEND=noninteractive
debconf_url='https://raw.githubusercontent.com/codycodes/SCC_NTI460/master/ansible_cloud_project/final/instance_config_scripts/debconf'
wget --no-verbose -P /tmp/ $debconf_url
sed -i.bak "\,ldap://,s,$,$1," /tmp/debconf # add internal ip to debconf
while read line; do echo "$line" | debconf-set-selections; done < /tmp/debconf # read each line as input to set debconf


apt-get --yes install libpam-ldap nscd
unset DEBIAN_FRONTEND

sed -i.bak '/compat/s/$/ ldap/' /etc/nsswitch.conf # sed line to append ldap w/"compat" match
systemctl reload-or-restart nscd

# nfs client automation script
apt-get install -y nfs-client
mkdir /mnt/test
echo "$2:/var/nfsshare/testing        /mnt/test       nfs     defaults 0 0" >> /etc/fstab
mount -a
cd /mnt/test/
