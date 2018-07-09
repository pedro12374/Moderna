set terminal pdfcairo
set output 'All.pdf'

set xrange[40:65]

set ylabel "I(u.a)"
set xlabel "{/Symbol q}(º)"
filename(n) = sprintf("%dV/%dV.dat", n,n)
plot for [i=1:10] filename(i) t sprintf("%dV",i) with lines dt i

unset output
