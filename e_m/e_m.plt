set output 'e_m.pdf'
set terminal pdfcairo

set xrange[0:6]
set yrange[0:310]


set grid
show grid
set key left



set ylabel "{/Symbol D}s' 10^{-8}[m]"
set xlabel 'f[Hz]'

f(x) = a*x**2
fit f(x) 'data.dat' via a

title_f(h) = sprintf('{/Symbol D}s = %.2fx',h)
plot 'data.dat' ps 2 t 'Dados Obtidos',f(x) t title_f(a) ls -1 lw 1.5

unset output
