#!/bin/bash
dockerStatus=$(systemctl status docker | grep -i "Active" | awk '{print $3}' | tr -d '[()]')
dockerVersion=$(docker -v | awk '{print $3}' | tr -d ',')
current_date=$(date)

echo "Current time is $current_date and The docker status is : $dockerStatus"

echo "Current Docker versio  is: $dockerVersion"

