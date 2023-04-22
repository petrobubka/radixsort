#!/bin/bash
cd /home/grid/testbed/tb410/radixsort-main
ml icc
for i in {1..3}; do
  scr=$(date +"%A_%H:%M:%S_%N")
  icc -O$i c.cpp -o try_$scr
  echo "Iteration $i:"
  time ./try_$scr
done
