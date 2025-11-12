#!/bin/bash

set -euo pipefail

a=5
b=0

if (( b == 0 )); then
	echo "b is zero - divide would fail" >&2
	exit 1
fi

if (( a % b == 0 )); then
	echo "a is divisible by b"
fi
