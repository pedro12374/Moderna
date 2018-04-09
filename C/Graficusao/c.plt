set output 'c.pdf'
set terminal pdfcairo

set xrange[-2000:2000]
set yrange[-40:40]


set grid
show grid
set key left

set fit errorvariables

set ylabel "{/Symbol D}s'(10^{-5}m)"
set xlabel '{/Symbol \246}(Hz)'
set title "{/Symbol D}s' x frequencia"
f(x) = a+b*x
fit f(x) 'Data.dat' via a,b

title_f(g,h) = sprintf('{/Symbol D}s =(%.2f{/Symbol \261}%.2f){/Symbol \264}10^{-7}{/Symbol \246}',0.01+g*100, h*100)

plot 'Data.dat' u 1:2:3 t 'Dados Obtidos' with yerrorbars,f(x) t title_f(b,b_err) ls -1 lw 1.5

unset output
