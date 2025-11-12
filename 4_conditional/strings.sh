#!/bin/bash

set -euo pipefail

s="$1"

if [[ -z ${s:-} ]]; then
	echo "Empty String"
elif [[ $s == "OK" ]]; then
	echo "String matches exactly: OK"
elif [[ $s == 0* ]]; then
	echo "String starts with 0"
else
	echo "Other String"
fi
