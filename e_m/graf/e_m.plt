set output 'e_m.pdf'
set terminal pdfcairo

set xrange[0:0.06]
set yrange[0:310]


set grid
show grid
set key left

set ylabel "DDP(V)"
set xlabel "r(m)"

f(x) = a*x**2
fit f(x) 'tot.dat' via a

title_f(g,h) = sprintf('V = (%.2f{/Symbol \261}%.2f)r^2',g,h)
plot 'tot.dat' u 1:2:3:4 w xyerrorbars t 'Dados Obtidos' ps 0.7 ,f(x) t title_f(a,a_err) ls -1 lw 1.5

unset output
