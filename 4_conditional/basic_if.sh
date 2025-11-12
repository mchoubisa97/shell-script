#!/bin/bash

set -euo pipefail

count=3

if [[ $count -gt 0 ]]; then
	echo "Count is positive"
else
	echo "Count is zero or negative"
fi
