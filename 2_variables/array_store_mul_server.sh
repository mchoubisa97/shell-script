#!/bin/bash

SERVERS=("google.com" "github.com" "aws.amazon.com" "youtube.com" "chatgpt.com")

for SERVER in "${SERVERS[@]}"; do
	echo "Pinging $SERVER..."
	ping -c 1 $SERVER
done
