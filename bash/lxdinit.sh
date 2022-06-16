#!/bin/bash
# This script will install and initialize a basic lxd container

#check if lxd is installed
test -e /snap/bin/lxd || sudo snap install lxd

#initializes lxd
sudo lxd init --auto

#Creates and launches a container named COMP2101-S22
sudo lxc launch ubuntu:22.04 COMP2101-S22

#Adds a line to apply the name of the container to the IP address
sudo echo 10.159.140.203  COMP2101-S22 >> /etc/hosts

#enters the container
sudo lxc exec COMP2101-S22 bash

#installs apache2
sudo apt-get install apache2
sudo service apache2 start

#checks defualt webpage status
if [ "$curl --fail http://didgeridoo.une.edu.au/" = "curl: (6) Could not resolve host: didgeridoo.une.edu.au" ];
then
    echo "Connection to default webpage failed";
fi
echo "Connection to the default webpage succeeded"


