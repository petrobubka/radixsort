#!/bin/bash
cd /home/grid/testbed/tb410/radixsort-main
ml icc
for 0 in {1..3};do
scr=_%(date +%A_%H_%M_$S_$N)
icc -0$0 c.cpp -o try&scr
echo
echo "0"$0
time ./try$scr
done
~
