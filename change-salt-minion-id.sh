#!/bin/sh

sudo sed -i 's/.*^id: *.*/id: srv-ubt-web-vasicio/g' /etc/salt/minion
systemctl restart salt-minion
service salt-minion restart
/etc/init.d/salt-mainion restart
