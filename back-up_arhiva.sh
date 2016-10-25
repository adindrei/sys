#!/bin/bash +x


#time="date"
#source="/Users/adrian/Desktop/Folder1"
#destination="/Users/adrian/Desktop/"
#filename=backup-$time.tar.gz
#tar -cpfz $destination$filename $source


SRCDIR="/Users/adrian/Desktop/Folder1"
DESTDIR="/Users/adrian/Desktop/Folder2"
LOCATION="/Users/adrian/Desktop"
tar cfzP $SRCDIR-$(date +%Y-%m-%d).tar.gz $SRCDIR
grep -iR $SRCDIR-$(date +%Y-%m-%d).tar.gz $LOCATION #&>/dev/null

if [ $? -eq 0 ] ; then
cp $SRCDIR-$(date +%Y-%m-%d).tar.gz $DESTDIR
else echo "file not copied"
fi
