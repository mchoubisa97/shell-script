#!/bin/bash

read -p "Enter region (default ap-south-1): " region
region=${region:-ap-south-1}

echo "Deploying resources in region: $region"
