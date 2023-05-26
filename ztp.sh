#!/bin/bash
function error() {
  echo -e "e[0;33mERROR: The Zero Touch Provisioning script failed while running the command $BASH_COMMAND at line $BASH_LINENO.e[0m" >&2
}
trap error ERR

SSH_URL="http://192.168.200.1/authorized_keys"
mkdir -p /home/cumulus/.ssh
wget -O /home/cumulus/.ssh/authorized_keys $SSH_URL
passwd -x 99999 cumulus
echo 'Academy123' | chpasswd
echo "cumulus ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/10_cumulus
sed -i 's/#deb/deb/g' /etc/apt/sources.list
wget -O pubkey https://apps3.cumulusnetworks.com/setup/cumulus-apps-deb.pubkey
apt-key add pubkey
rm pubkey
echo "tinker panic 0" >> /etc/ntp.conf
systemctl enable ntp@mgmt

exit 0
#CUMULUS-AUTOPROVISIONING
