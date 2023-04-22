#!/bin/bash
cd /home/grid/testbed/tb410/radixsort-main
ml icc
for i in {1..3};do
scr=$(date +"$i")
icc -0$i c.cpp -o try&scr
echo
echo "0"$i
time ./try$scr
done
~
