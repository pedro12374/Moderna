set output 'c.pdf'
set terminal pdfcairo

set yrange[-2000:2000]
set xrange[-40:40]

set xlabel '{/Symbol d}s (10^-8)'
set ylabel 'f(Hz)'

f(x) = a+b*x
fit f(x) 'Data.dat' via a,b

title_f(a,b) = sprintf('f(x) = %.2f + %.2fx',a,b)
plot 'Data.dat' ps 2 t 'Dados Obtidos',f(x) t title_f(a,b) ls -1 lw 1.5

unset output
