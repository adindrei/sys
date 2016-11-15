#!/bin/bash

#for d in dir1 dir2 dir3; do
#  rm -vf `ls -1t $d | head -n-4` 
#done

location=/Users/adrian/Documents/backup_test/
list=$('ls -t | awk 'NR>2' $location')

rm -rf $list  &> /dev/null


if [ $(date +%d) -lt 8 ] && [ $(date +%A) == "Monday" ]
then
        cp /destination/directory/mysql.tgz /destination/directory/mysqlarchive/monthly$(date +%m_%Y).tgz
exit
fi
#If the day of the month is less than 8, and current day is Monday name it as Monthly

find /destination/directory/mysqlarchive -iname "monthly*.tgz" -mtime +365 -exec rm {} \;
#Find and Delete any Monthly Backups older than 1 year

cp /destination/directory/mysql.tgz /destination/directory/mysqlarchive/$(date +%A%m_%d_%Y)mysql.tgz
#Copy the Staged file, and name it with Today's date

find /destination/directory/mysqlarchive -iname "$(date +%A)*.tgz" -mtime +13 -exec rm {} \;
#Find and Delete any Backups of today's day name older than 2 weeks



