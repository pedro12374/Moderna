set output 'c.pdf'
set terminal pdfcairo

set yrange[-2000:2000]
set xrange[-40:40]


set grid
show grid





set xlabel '{/Symbol D}s (10^{-8}m)'
set ylabel 'f(Hz)'

f(x) = a+b*x
fit f(x) 'Data.dat' via a,b

title_f(g,h) = sprintf('f(x) = %.2f + %.2fx',g,h)
plot 'Data.dat' ps 2 t 'Dados Obtidos',f(x) t title_f(a,b) ls -1 lw 1.5

unset output
