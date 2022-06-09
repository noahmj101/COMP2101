#!/bin/bash
# This script will display basic system information!

# Retrieves pc hostname
hostname=$(hostname)

# Retrieves fqdn
fqdn=$(hostname --fqdn)

# Retrieves current IP address
ip=$(ip route get 1.1.1.1 | grep 'src' | cut -b 41,42,43,44,45,46,47,48,49,50,51,52,53,54,55)

# Retrieves free filesystem space
filesystem=$(df -H | grep "/dev/sda3" | cut -b 23,24,25,26)

lines="========================"
echo -e " "
echo -e "System info report for $hostname"
echo -e "$lines"
echo -e "FQDN: $fqdn"
hostnamectl | grep "Operating"
echo -e "IP Address: $ip"
echo -e "Root Filesystem Free Space: $filesystem"
echo -e "$lines"
echo -e " "
