#!bin/bash

servers=("app1.example.com" "app2.example.com" "app3.example.com")

for host in "${servers[@]}"
do
	echo "Deploying to $host..."
	ssh ubuntu@"host" "cd /var/www/app && git pull origin main"
done
