#!/bin/bash

read -p "Enter the environment (dev/stage/prod): " env

if [[ -z "$env" ]]; then
	echo "❌ No input provided, Please enter a valid environment."
	exit 1
else
	echo "✅ Environment set to: $env"
fi
