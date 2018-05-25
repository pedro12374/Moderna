set output 'gotas.pdf'
set terminal pdfcairo

set xrange[0:12]
set yrange[0:3.1]
set xtics 1


set key above


set grid
show grid
#show mxtics

set ylabel "Carga x 10^{-19}(C)"
set xlabel "Gota"

set obj rect from 3,0 to 9,0.7 fillstyle empty
set obj rect from 2.5,0.80 to 9.5,1.90 fillstyle empty
set obj rect from 0.5,2.2 to 10.2,3.05 fillstyle empty



plot 'gotas.dat' t 'Dados Obtidos' pt 5 ps 0.5 lc -1

unset output
