#!/bin/bash

service="nginx"

while ! systemctl is-active --quiet "$service"
do
	echo "Waiting for $service to start..."
	sleep 3
done

echo "$service is now running ✅"
