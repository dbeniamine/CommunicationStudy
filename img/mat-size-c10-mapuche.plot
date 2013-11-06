set terminal epslatex color dl 3
set grid
set output 'mat-size-c10-mapuche.tex'
set ylabel 'time (s)'
set key below
set xlabel 'square matrix dimension'
plot  \
'mat-size-c10-mapuche.dat' using 1:2:5 index 0 with yerrorlines title 'heft online ' lw 5 ,\
'mat-size-c10-mapuche.dat' using 1:3:6 index 0 with yerrorlines title 'convex clusters + heft offline' lw 5  linecolor rgb "blue"
#'mat-size-c10-mapuche.dat' using 1:3:6 index 1 with yerrorlines title 'heft offline',\
