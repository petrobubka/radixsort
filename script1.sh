#!/bin/bash
cd /home/grid/testbed/tb117/vec_samples/src
ml icc
arr=( "avx" "sse4.2" "sse4.1" "sse3" "sse2" "ssse3")
for j in "${arr[@]}"; do
for i in {1..3}; do
icc -O$i -m$j F1.c -o try
echo "$j $i:"
time ./try
done
done
~
