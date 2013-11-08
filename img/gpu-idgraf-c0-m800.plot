set terminal epslatex color dl 3
set grid
set output 'gpu-idgraf-c0-m800.tex'
set ylabel 'time (s)'
set style data histograms
set style histogram clustered errorbars lw 2
set style fill solid 1.0 border 3
set key below 
set xlabel 'number of GPU used'
plot  for [COL=2:3] 'gpu-idgraf-c0-m800.dat' using COL:COL+3:xticlabel(1) title columnheader(COL)
