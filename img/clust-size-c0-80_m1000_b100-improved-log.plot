set terminal epslatex color dl 3
set grid
set output 'clust-size-c0-80_m1000_b100-improved-log.tex'
set ylabel 'time (s)'
set key below
set xlabel 'MaxClusterSize'
set xrange [0:80]
set yrange [0:0.11]
plot  \
'clust-size-c0-80_m800-1600_b100-improved-log.dat' using 1:2:5 index 2 with \
yerrorlines title 'heft online' lw 5, \
'clust-size-c0-80_m800-1600_b100-improved-log.dat' using 1:3:6 index 2 with \
yerrorlines title 'convex cluster + heft offline' lw 5 

