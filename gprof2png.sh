#!/bin/sh

for last; do true; done

$@
gprof "$1" gmon.out > gmon.txt
gprof2dot.py gmon.txt | dot -Tpng -o gprof.png
rm -f -- gmon.out
rm -f -- gmon.txt
