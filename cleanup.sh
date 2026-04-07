#!/bin/bash

#variables
SOURCE_DIR="/home/devops/academy/backup"
DAYS=7

#Find the list of files which are older than 7 days and delete them
for i in $(find "$SOURCE_DIR" -type f -mtime +"$DAYS"); do
echo "Deleting old files: $i"
rm -f "$i"
done
echo "cleanup done sucessfully"
