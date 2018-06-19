set output 'Todas.pdf'
set terminal pdfcairo

set xrange[400:700]
set mxtics

set grid
show grid

set ylabel "I(u.a)"
set xlabel '{/Symbol l}(nm)'

plot 'Sodio.dat' u 1:2 t 'Gás Sodio' w l lw 1 lc 5,'Mercurio.dat' u 1:2 t 'Gás Mercúrio' w l lw 1 lt rgb "#000000",'Helio.dat' u 1:2 t 'Gás Hélio' w l lw 1 lt rgb "#8b0000"

unset output
