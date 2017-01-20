#!/bin/bash
rm instanceinfo.txt
sudo docker ps -a | awk ‘{print $1}’ > instanceinfo.txt
echo "$(tail -n +2 instanceinfo.txt)" > instanceinfo.txt
while read line; do
sudo docker rm "${line}"
done < instanceinfo.txt
