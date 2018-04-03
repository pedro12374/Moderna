set output 'c.pdf'
set terminal pdfcairo

set xrange[-2000:2000]
set yrange[-40:40]


set grid
show grid
set key left



set ylabel "{/Symbol D}s' 10^{-8}[m]"
set xlabel 'f[Hz]'

f(x) = a+b*x
fit f(x) 'Data.dat' via a,b

title_f(g,h) = sprintf('{/Symbol D}s = %.2f*10^{-7}f',h)
plot 'Data.dat' u 1:2:3 ps 2 t 'Dados Obtidos' with yerrorbars,f(x) t title_f(a,b) ls -1 lw 1.5

unset output
