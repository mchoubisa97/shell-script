#!/bin/bash

read -p "Enter project name: " project
read -p "Enter AWS region [default: ap-south-1]: " region
region=${region:-ap-south-1}

echo "Your are about to deploy $project in $region"
read -p "Proceed? (y/n): " confirm

if [[ "$confirm" =~ ^[Yy]$ ]]; then
	echo "🚀 Deploying $project to $region..."
# Example placeholder for Terraform or AWS CLI command
# terraform apply -var "project=$project" -var "region=$region"
else
	echo "❌ Deployment cancelled."
fi
