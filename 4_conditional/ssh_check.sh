#!/bin/bash

set -euo pipefail
hosts=("host1.example host2.example")
for h in "${hosts[@]}" do
	if ssh -o ConnectTimeout=5 "$h" true; then
		echo "$h reachable"
	else
		echo "$h unreachable"
	fi
done
