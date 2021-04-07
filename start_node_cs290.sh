#!/bin/bash

# Write introduction and get port number 
printf "\033c" # Clear terminal
echo OSU CS 290 NodeJS script
echo v1.0 - March 29, 2021
echo ''
read -p 'Enter the port number Node will run on (3000-65535): ' port

# Check if port is in range
if [ "$port" -lt "3000" -o "$port" -gt "65535" ]
    then
        echo ERROR: Provided port out of range.
        exit -1
fi

echo Shutting down previous forever instances
~/courses/CS290/setup/diagnostic/node_modules/forever/bin/forever stopall

echo Starting Node
WD=$PWD
cd ~/courses/CS290/setup/diagnostic
~/courses/CS290/setup/diagnostic/node_modules/forever/bin/forever start diagnostic.js $port
cd $WD
if [ $? -eq 0 ]
    then
        echo Node successfully started.
fi
