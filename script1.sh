#!/bin/bash
cd /home/grid/testbed/tb022/CS_lab3-main
ml icc
for 0 in {1..3];do
scr= $(date +%A _%H %M %≤ _%N) 
icc -0$0 c.cpp -o try$scr
echo
echo "0"$O
time ./try$scr done
~ 
