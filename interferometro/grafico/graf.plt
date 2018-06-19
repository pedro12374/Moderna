set output 'ar.pdf'
set terminal pdfcairo


set format y "%.6f"
set xrange[-5:45]
#set yrange[1.0000017:1.0000149216]



set key above


set grid
show grid

set ylabel "{/Symbol h}"
set xlabel "{/Symbol D}P"

f(x) = a+b*x

fit f(x) 'ar.dat' via a,b
title_f(g,h) = sprintf('y=%.2f+%.2fX10^{-7}x',g, h*10000000)
plot 'ar.dat' t 'Dados Obtidos' pt 5 ps 0.5 lc -1,f(x) t title_f(a,b)

unset output
