#!bin/bash

#for d in dir1 dir2 dir3; do
#  rm -vf `ls -1t $d | head -n-4` 
#done


rm `ls -t | awk 'NR>2'` /Users/adrian/Documents/backup_test/ &> /dev/null
