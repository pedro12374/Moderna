set output 'gotas.pdf'
set terminal pdfcairo

#set xrange[0:9]
#set yrange[-0.5:9.5]
set xtics 1

set grid
show grid
#show mxtics

set ylabel "Carga x 10^{-19}(C)"
set xlabel "Gota"


plot 'gotas.dat' t 'Dados Obtidos' pt 5 ps 0.5 lc -1

unset output
