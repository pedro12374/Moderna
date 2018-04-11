set output 'e_m_a.pdf'
set terminal pdfcairo

set xrange[0:0.06]
set yrange[0:310]


set grid
show grid
set key left



set ylabel "V(v)"
set xlabel "r(cm)"

f(x) = a*x**2
fit f(x) 'dados.dat' via a

title_f(h) = sprintf('V = %.2fr^2',h)
plot 'dados.dat' u 1:2:3:4 with xyerrorbars t 'Dados Obtidos' ,f(x) t title_f(a) ls -1 lw 1.5

unset output
