set terminal epslatex color dl 3 
set grid
set output 'clust-size-full-bm20-m1000-4GPU-cal1GPU-idgraf.tex'
set ylabel 'time (s)'
set key below
set xrange [0:50]
set yrange [0:0.095]
set xlabel 'MaxClusterSize'
plot  \
'clust-size-full-bm20-m600_1100-4GPU-cal1GPU-idgraf.dat' using 1:2:6 index 4 \
with yerrorlines title 'heft online' lw 5,\
'clust-size-full-bm20-m600_1100-4GPU-cal1GPU-idgraf.dat' using 1:3:7 index 4 \
with yerrorlines title 'convex cluster + heft offline' lw 5 linecolor rgb "blue"
#'clust-size-full-bm20-m600_1100-4GPU-cal1GPU-idgraf.dat' using 1:4:8 index 4 with yerrorlines title 'kaapi matrix 1000 ' 
