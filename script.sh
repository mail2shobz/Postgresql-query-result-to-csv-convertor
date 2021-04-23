#!/bin/bash
printf 'Enter the Query You want to save as CSV:'
read -r  var
echo "Execting the command"
psql -h 127.0.0.1  -d student -U myuser -t -A -F"," -c "$var" > output.csv
