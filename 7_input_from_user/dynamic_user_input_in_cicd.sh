#!/bin/bash

read -p "Enter Git branch to deploy (default main): " branch
brach=${branch:-main}

read -p "Enter environment (dev/stage/prod): " env
if [[ ! "$env" =~ ^(dev|stage|prod)$ ]]; then
	echo "❌ Invalid environment!"
	exit 1
fi

echo "Deploying branch '$branch' to environemt '$env'..."
# Example deployment command
# git checkout $branch && ./deploy.sh $env
