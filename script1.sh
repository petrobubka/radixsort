#!/bin/bash
cd /home/grid/testbed/tb410/radixsort-main
ml icc
arr=( "avx" "sse4.2" "sse4.1" "sse3" "sse2" "ssse3")
for j in "${arr[@]}"; do
for i in {1..3}; do
name=date +%T
icc -O$i -m$j c.cpp -o try-$name
echo "$j $i:"
time ./try-$name
done
done
~
