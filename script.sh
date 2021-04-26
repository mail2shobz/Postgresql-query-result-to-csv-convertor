#!/bin/bash
printf 'Enter the DB name you want to connect:'
read -r dbname
printf 'Enter the hostname name you want to connect:'
read -r hostname
printf 'Enter the username:'
read -r username
printf 'Enter the Query You want to save as CSV:'
read -r  var
echo "Execting the command"
psql -h $hostname  -d $dbname -U $username -t -A -F"," -c "$var" > output.csv
