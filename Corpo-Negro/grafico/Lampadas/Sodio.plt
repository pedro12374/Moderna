set output 'Sodio.pdf'
set terminal pdfcairo

set xrange[500:830]
set mxtics

set grid
show grid

set ylabel "I(u.a)"
set xlabel '{/Symbol l}(nm)'

plot 'Sodio.dat' u 1:2 t 'Gás Sodio' w l lw 1 lc 5

unset output

######################################################################

set output 'Sodio-Zoom.pdf'
set terminal pdfcairo

set xrange[500:830]
set yrange[0:8]
set mxtics

set grid
show grid

set ylabel "I(u.a)"
set xlabel '{/Symbol l}(nm)'

plot 'Sodio.dat' u 1:2 t 'Gás Sodio' w l lw 1 lc 5

unset output
