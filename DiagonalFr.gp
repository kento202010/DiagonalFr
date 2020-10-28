#!/usr/bin/gnuplot

set size square
set key left bottom

### range
set xrange [0:0.6]
set yrange [-4.0e-02:2.0e-02]

### tics
set xtics 0.1
set mxtics 0.05
set ytics 0.02
set mytics 2
set tics font "Arial,12"

### font
set tics font "Arial,12"
set xlabel font "Times New Roman:Italic,18"
set xlabel "r" offset 4,1
set ylabel "{/Times-New-Roman:Italic=18 F_r }" offset 4,7

### output
set terminal postscript eps color
set output 'out/DiagonalFr.eps'
plot "Re50Newton.dat" u ($3):($4) w l lw 2 lc rgb "red" ti "Re = 50 , Newton", \
	"Re50Wi0.10.dat" u ($3):($4) w l  dt 2 lw 2 lc rgb "blue" ti "Re = 50 , Wi = 0.10", \
	"Re50Wi0.25.dat" u ($3):($4) w l  dt 2 lw 2 lc rgb "orange" ti "Re = 50 , Wi = 0.25", \
	"Re50Wi0.50.dat" u ($3):($4) w l  dt 2 lw 2 lc rgb "dark-cyan" ti "Re = 50 , Wi = 0.50",\
	"Re50Wi0.75.dat" u ($3):($4) w l  dt 2 lw 2 lc rgb "dark-violet" ti "Re = 50 , Wi = 0.75"
replot	
pause -1
 