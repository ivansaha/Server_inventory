#!/bin/bash

# Author: Ivan Saha
# Date 03/31/2025
# Inventory script for servers

echo "This file contains a script that will help us generate the inventory of any decommissioned servers"
sleep 2

echo "Operating system used"
cat /etc/*release | tail -1
sleep 1

echo "Kernel version"
uname -r
sleep 1

echo "CPU info"
lscpu
sleep 1

echo "Memory"
free -m
sleep 1

echo "Disk information"
lsblk
sleep 1

echo "Network info"
ip a
sleep 1

echo "System uptime"
uptime 
sleep 1

echo "32 or 64 bit?"
lscpu > file1
grep Architecture file1
rm -rf file*
sleep 1

echo "System hostname"
hostname
sleep 1