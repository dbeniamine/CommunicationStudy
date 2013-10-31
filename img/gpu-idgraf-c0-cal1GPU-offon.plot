set terminal epslatex color dl 4
set grid
set output 'gpu-idgraf-c0-cal1GPU-offon.tex'
set ylabel 'time (s)'
set key below
set yrange[0:0.08]
set xlabel 'square matrix dimension'
plot  \
'gpu-idgraf-c0-cal1GPU.dat' using 1:2:5 index 1 with yerrorlines title \
'heft online 2 gpu' lw 5 ,\
'gpu-idgraf-c0-cal1GPU.dat' using 1:2:5 index 2 with yerrorlines title \
'heft online 8 gpu' lw 5 ,\
'gpu-idgraf-c0-cal1GPU.dat' using 1:3:6 index 1 with yerrorlines title \
'heft offline 2 gpu' lw 5,\
'gpu-idgraf-c0-cal1GPU.dat' using 1:3:6 index 2 with yerrorlines title \
'heft offline 8 gpu' lw 5 
