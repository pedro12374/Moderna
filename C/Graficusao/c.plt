set output 'c.pdf'
set terminal pdfcairo

set xrange[-2000:2000]
set yrange[-40:40]


set grid
show grid
set key left



set ylabel "{/Symbol D}s' (10^{-8}m)"
set xlabel 'f(Hz)'

f(x) = a+b*x
fit f(x) 'Data.dat' via a,b

title_f(g,h) = sprintf('{/Symbol D}s = %.2f*10^{-8}f',h)
plot 'Data.dat' ps 2 t 'Dados Obtidos',f(x) t title_f(a,b) ls -1 lw 1.5

unset output
