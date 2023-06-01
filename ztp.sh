#!/bin/bash
# Created by Topology-Converter v4.7.1
#    Template Revision: v4.7.1

function error() {
  echo -e "e[0;33mERROR: The Zero Touch Provisioning script failed while running the command $BASH_COMMAND at line $BASH_LINENO.e[0m" >&2
}
trap error ERR

SSH_URL="http://192.168.200.1/authorized_keys"
# Uncomment to setup SSH key authentication for Ansible
# mkdir -p /home/cumulus/.ssh
# wget -O /home/cumulus/.ssh/authorized_keys $SSH_URL

# Uncomment to unexpire and change the default cumulus user password
# passwd -x 99999 cumulus
# echo 'cumulus:CumulusLinux!' | chpasswd

# Uncomment to make user cumulus passwordless sudo
# echo "cumulus ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/10_cumulus

# Uncomment to enable all debian sources & netq apps3 repo
# sed -i 's/#deb/deb/g' /etc/apt/sources.list
# wget -O pubkey https://apps3.cumulusnetworks.com/setup/cumulus-apps-deb.pubkey
# apt-key add pubkey
# rm pubkey

# Uncomment to allow NTP to make large steps at service restart
# echo "tinker panic 0" >> /etc/ntp.conf
# systemctl enable ntp@mgmt

exit 0
#CUMULUS-AUTOPROVISIONING

