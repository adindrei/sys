#!/bin/bash

WGET="/usr/local/bin/wget"

$WGET -q --tries=20 --timeout=10 http://www.google.com -O /tmp/google.idx &> /dev/null
if [ ! -s /tmp/google.idx ]
then
    echo "Not Connected..!"
else
    echo "Connected..!"
fi

