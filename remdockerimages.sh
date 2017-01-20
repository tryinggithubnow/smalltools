#!/bin/bash
rm imagesInfo.txt
sudo docker images | awk ‘{print $3}’ > imagesInfo.txt
echo “$(tail -n +2 imagesInfo.txt)” > imagesInfo.txt
while read line; do
sudo docker rmi “${line}”
done < imagesInfo.txt
