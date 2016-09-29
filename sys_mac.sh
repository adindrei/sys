#!/bin/bash


# -Hostname information:
echo -e "***** HOSTNAME INFORMATION *****"
hostname
echo ""

#Users on this machine
echo -e "***** USERS ON THIS MACHINE *****"
ls -al /Users/
echo ""

# - Network interfaces and IP 
echo -e "***** Network interfaces and IP  *****"
ifconfig |grep -i 'status: active\|Up\|inet*'
echo ""

# - Network ports
echo -e "***** Network ports *****"
lsof -iTCP -sTCP:LISTEN -n -P
echo ""

# -File system disk space usage:
echo -e "***** FILE SYSTEM DISK SPACE USAGE *****"
df -h
echo ""

# -Free and used memory in the system:
echo -e "***** FREE AND USED MEMORY *****"
top -l 1 -s 0 |grep PhysMem
echo ""

# -System uptime and load:
echo -e "***** SYSTEM UPTIME AND LOAD *****"
uptime
echo ""

# -Logged-in users:
echo -e "***** CURRENTLY LOGGED-IN USERS *****"
who
echo ""
