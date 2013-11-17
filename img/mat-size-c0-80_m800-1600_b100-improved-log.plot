set terminal epslatex color dl 3
set grid
set output 'mat-size-c0-80_m800-1600_b100-improved-log.tex'
set ylabel 'time (s)'
set key below
set yrange [0:0.7]
set xlabel 'square matrix dimension'
plot  \
'mat-size-c0-80_m800-1600_b100-improved-log.dat' using 1:2:5 with yerrorlines \
title 'heft online' lw 5 ,\
'mat-size-c0-80_m800-1600_b100-improved-log.dat' using 1:3:6 with yerrorlines \
title 'heft offline' lw 5 linecolor rgb "blue" 
