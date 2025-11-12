#!/bin/bash

servers=("web01" "web02" "web03")

for server in "${servers[@]}"
do
	echo "Pinging $server..."
	ping -c 1 "$server" > /dev/null 2>&1

	if [ $? -eq 0 ]; then
		echo "$server is UP ✅"
	else
		echo "$server is DOWN ❌"
	fi
	echo "_______________"
done
