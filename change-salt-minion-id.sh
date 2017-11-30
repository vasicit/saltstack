#!/bin/sh

NEWNAME=$1
sudo sed -i 's/.*^id: *.*/id: $NEWNAME/g' /etc/salt/minion
sudo systemctl restart salt-minion
sudo service salt-minion restart
sudo /etc/init.d/salt-mainion restart
