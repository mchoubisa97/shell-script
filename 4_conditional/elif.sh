#!/bin/bash

set -euo pipefail
val=0

if (( val > 0 )); then
	echo "positive"
elif (( val < 0 )); then
	echo "negative"
else
	echo "zero"
fi
