#!/bin/bash

while read -r host
do
	echo "Checking uptime for $host..."
	ssh ubuntu@"$host" uptime
done < servers.txt
