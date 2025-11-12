#!/bin/bash

CPU=85
MEM=70

if [ $CPU -ge 80 ] && [ $MEM -ge 70 ]; then
	echo "High load on server!"
else
	echo "Either CPU or MEM is high"
fi
