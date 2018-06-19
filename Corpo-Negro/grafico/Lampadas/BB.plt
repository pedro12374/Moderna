set output 'BB.pdf'
set terminal pdfcairo

set xrange[400:700]
set mxtics

set grid
show grid

set ylabel "I(u.a)"
set xlabel '{/Symbol l}(nm)'

plot 'BB.dat' u 1:2 t 'Corpo Negro' w l lw 1 lt rgb "#000000"

unset output
