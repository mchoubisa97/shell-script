#!/bin/bash

c=38

f=$(echo "scale=1; ($c*9/5)+32" | bc)

echo $f
