set output 'c.pdf'
set terminal pdfcairo

set xrange[-2000:2000]
set yrange[-40:40]


set grid
show grid
set key left

set fit errorvariables

set ylabel "{/Symbol D}s' 10^{-8}[m]"
set xlabel 'f[Hz]'

f(x) = a+b*x
fit f(x) 'Data.dat' via a,b

title_f(g,h) = sprintf('{/Symbol D}s = %.2f{/Symbol \264}10^{-6}f {/Symbol \261}%.2f{/Symbol \264}10^{-4}= ',g, h*10000)

plot 'Data.dat' u 1:2:3 ps 2 t 'Dados Obtidos' with yerrorbars,f(x) t title_f(b,b_err) ls -1 lw 1.5

unset output
