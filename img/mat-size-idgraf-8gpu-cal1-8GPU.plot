set terminal epslatex color dl 3
set grid
set output 'mat-size-idgraf-8gpu-cal1-8GPU.tex'
set ylabel 'time (s)'
set yrange [0:0.09]
set key below
set xlabel 'square matrix dimension'
plot  \
'mat-size-idgraf-8gpu-cal8GPU.dat' using 1:3:6 with yerrorlines title \
'heft offline calibration on 8 GPU' lw 5,\
'gpu-idgraf-c0-cal1GPU.dat' using 1:3:6 index 2 with yerrorlines title \
'heft offline calibration on 1 GPU' lw 5 linecolor rgb "blue"
