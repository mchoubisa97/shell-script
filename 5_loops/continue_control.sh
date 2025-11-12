#!/bin/bash

servers=("app1" "test-app" "app2")

for s in "${servers[@]}"
do
	if [[ "$s" == *"test"* ]]; then
		echo "Skipping $s (test environment)"
		continue
	fi
	echo "Restarting servers on $s..."
	ssh ubuntu@"$s" "sudo systemctl restart app.service"
done
