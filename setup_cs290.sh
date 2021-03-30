#!/bin/bash

# Write introduction
printf "\033c" # Clear terminal
echo OSU CS 290 setup script
echo v1.0 - March 29, 2021
echo Clones the repository required for Node.js setup into \~/courses/CS290/setup and installs required npm dependencies
echo WARNING: overwrites the contents of \~/courses/CS290/setup if any exist.
read -p 'Press enter to continue or press Ctrl+C to exit.'

# Get user info
read -p 'Enter your ONID username: ' onid
read -p 'Enter the last 4 digits of your OSU ID number: ' student_id
echo Starting installation . . .

# Clear destination directory and download files
rm -rf ~/courses/CS290/setup
git clone https://github.com/luyaozh/CS290.git ~/.290setup
mv ~/.290setup/CS290-Server-Side-Examples-master ~/courses/CS290/setup
rm -rf ~/.290setup

# Install dependencies
cd ~/courses/CS290/setup/diagnostic
npm i express express-handlebars mysql forever

# Write dbcon.js
cat << END > ~/courses/CS290/setup/diagnostic/dbcon.js
var mysql = require('mysql');
var pool = mysql.createPool({
  connectionLimit : 10,
  host            : 'classmysql.engr.oregonstate.edu',
  user            : 'cs290_$onid',
  password        : '$student_id',
  database        : 'cs290_$onid'
});

module.exports.pool = pool;
END
