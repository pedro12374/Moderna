set output 'h.pdf'
set terminal pdfcairo

#set xrange[-2000:2000]
set yrange[-2.5:0]


set grid
show grid

set ylabel "V (v)"
set xlabel "f(Hz)"
set title "V x frequencia"

f(x) = a+b*x
fit f(x) '2.dat' using 3:2 via a,b

g(x) = c+d*x
fit g(x) '4.dat' using 3:2 via c,d

h(x) = e+f*x
fit h(x) '8.dat' using 3:2 via e,f

title_f(a,b) = sprintf('V =%.3g*f',b)
title_g(c,d) = sprintf('V =%.3g*f',d)
title_h(e,f) = sprintf('V =%.3g*f',f)

plot '2.dat' u 3:2 t 'Abertura de 2',f(x) t title_f(a,b)lw 1.5,'4.dat' u 3:2 t 'Abertura de 4',g(x) t title_g(c,d)lw 1.5,'8.dat' u 3:2 t 'Abertura de 8',h(x) t title_h(e,f) lw 1.5

unset output
