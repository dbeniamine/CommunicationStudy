set terminal epslatex color dl 3
set grid
set output 'rdtry_m1100_b100_maxDePartMin.tex'
set ylabel 'time (s)'
set yrange [0:0.15]
set key below
set xlabel 'number of random test'
set arrow from 18.76,0 to 18.76,0.15 nohead lc rgb 'red' lt 5 lw 3
plot  \
'rdtry_m1100_b100_maxDePartMin.dat' using 1:2:5 index 3 with yerrorlines \
title 'heft online' lw 5 ,\
'rdtry_m1100_b100_maxDePartMin.dat' using 1:3:6 index 3 with yerrorlines \
title 'convex cluster + heft offline' lw 5 linecolor rgb "blue"
