#!/bin/bash

while true; do
	read -p "Enter your environemt (dev/stage/prod): " env
	if [[ "$env" =~ ^(dev|stage|prod)$ ]]; then
		echo "Environemt set to $env"
		break
	else
		echo "Invalid input: Try again."
	fi
done
