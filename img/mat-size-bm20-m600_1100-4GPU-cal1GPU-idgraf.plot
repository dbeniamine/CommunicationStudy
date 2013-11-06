set terminal epslatex color dl 3
set grid
set output 'mat-size-bm20-m600_1100-4GPU-cal1GPU-idgraf.tex'
set ylabel 'time (s)'
set yrange[0:0.09]
set key below
set xlabel 'square matrix dimension'
plot  \
'mat-size-bm20-m600_1100-4GPU-cal1GPU-idgraf.dat' using 1:2:6 index 0 \
with yerrorlines title 'heft online' lw 5 ,\
'mat-size-bm20-m600_1100-4GPU-cal1GPU-idgraf.dat' using 1:3:7 index 0 \
with yerrorlines title 'convex cluster + heft offline ' lw 5 linecolor rgb "blue"
#'mat-size-bm20-m600_1100-4GPU-cal1GPU-idgraf.dat' using 1:3:7 index 1 \
#with yerrorlines title 'heft offline ',\

