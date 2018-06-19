set output 'Helio.pdf'
set terminal pdfcairo

set xrange[400:750]
set mxtics

set grid
show grid

set ylabel "I(u.a)"
set xlabel '{/Symbol l}(nm)'

plot 'Helio.dat' u 1:2 t 'Gás Hélio' w l lw 1 lt rgb "#8b0000"

unset output
