#!/bin/bash

GROUP="students"
PASSWORD="Welcome@123"

groupadd -f $GROUP

for USER in $(cat user_list.txt)
do
useradd -m -g $GROUP $USER
echo "$USER:$PASSWORD" | chpasswd
done

echo "Users added successfully."



