#!/bin/bash

for url in google.com amazon.com fakeurl.fakeurl
do
	echo "Checking $url..."
	curl -Is $url >/dev/null 2>&1 || { echo "$url failed ❌"; break; }
	echo "$url reachable ✅"
done
