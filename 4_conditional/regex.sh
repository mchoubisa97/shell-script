#!/bin/bash

set -euo pipefail
ip='$1'

if [[ $ip =~ ^([0-9]{1,3}\.){3}[0-9]{1,3}$ ]]; then
	echo "looks like an IPv4 address"
else
	echo "Not IPv4"
fi
