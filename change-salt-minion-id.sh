#!/bin/sh

NEWNAME=$1
sed -i 's/^.*id: *.*/id: $NEWNAME/g' /etc/salt/minion
systemctl restart salt-minion
service salt-minion restart
/etc/init.d/salt-mainion restart
