#1/bin/bash

servers=("web1" "db1")
metrics=("cpu" "memory" "disk")

for s in "${servers[@]}"
do
	echo " Metrics for $s:"
	for m in "${metrics[@]}"
	do
		echo " Checking $m usage..."
		ssh ubuntu@"$s" "ssh /opt/scripts/check_$m.sh"
	done
done
