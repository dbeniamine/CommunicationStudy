set terminal epslatex color dl 3
set grid
set output 'mat-size-idgraf-8gpu-cal8GPU.tex'
set ylabel 'time (s)'
set yrange [0:0.09]
set key below
set xlabel 'square matrix dimension'
plot  \
'mat-size-idgraf-8gpu-cal8GPU.dat' using 1:2:5 with yerrorlines title 'heft online' lw 5 ,\
'mat-size-idgraf-8gpu-cal8GPU.dat' using 1:3:6 with yerrorlines title 'heft offline' lw 5  linecolor rgb "blue"
