set output 'Mercurio.pdf'
set terminal pdfcairo

set xrange[380:700]
set mxtics

set grid
show grid

set ylabel "I(u.a)"
set xlabel '{/Symbol l}(nm)'

plot 'Mercurio.dat' u 1:2 t 'Gás Mercúrio' w l lw 1 lt rgb "#000000"

unset output
