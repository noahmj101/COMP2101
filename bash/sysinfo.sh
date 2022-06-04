#!/bin/bash
# This script will display basic system information!

echo -e "Hostname:"
hostname
echo -e "Domainname:"
dnsdomainname
hostnamectl | grep "Operating"
echo -e "IP Addresses:"
ip addr | grep -E "192|fe80"
echo -e "Root Filesystem Status:"
df -H | grep "/dev/sda3"

