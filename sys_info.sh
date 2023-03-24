#!/bin/bash
echo "A Quick System Audit Script"
date
echo ""
echo "Machine Type Info:"
uname -a
echo $MACHTYPE
echo -e "Uname info: $(uname -a) \n"
echo -e "IP Info: $(ip addr | grep inet | tail -3 | head -1) \n"
echo "Hostname: $(hostname -s) "
################   This is the Bonus Section ##################
echo "DNS Servers: "
cat /etc/resolv.conf
echo "Memory Info:"
free
echo -e "\nCPU Info:"
lscpu | grep CPU
echo -e "\nDisk Usage:"
df -H | head -2
echo -e "\nWho is logged in: \n $(who) \n"