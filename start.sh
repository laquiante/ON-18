#!/bin/bash
# -*- tab-width: 4; c-basic-offset: 4; indent-tabs-mode: nil -*-

# ALQ, Hamburg 2023
#clear
echo "start script: running host and api preparation"
sudo ansible-playbook -i /home/cumulus/ON-18/inventory/files/hosts /home/cumulus/ON-18/.nvue/api_file.yaml
sudo ansible-playbook -i /home/cumulus/ON-18/inventory/files/hosts /home/cumulus/ON-18/.netplan/hosts.yaml
echo "start script: searching for and running additional configuration items" 
if [ -f /home/cumulus/ON-18/.additional.conf ]; then
        . /home/cumulus/ON-18/.additional.conf
fi
echo "please use the correct user depending on the selected training, going forward"
exit 0
