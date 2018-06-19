set output 'Bb.pdf'
set terminal pdfcairo

set xrange[0:5500]
set yrange[-30:10]


#set grid
#show grid
#set key outside


set ylabel "Intensidade (u.a)"
set xlabel '{/Symbol l}(nm)'
set title "Intensidade x {/Symbol l}"


plot '10V.dat' t '10 V','9V.dat' t '9 V','8V.dat' t '8 V','7V.dat' t '7 V','6V.dat' t '6 V','5V.dat' t '5 V','4V.dat' t '4 V','3V.dat' t '3 V','2V.dat' t '2 V','1V.dat' t '1 V'

unset output


##############################################################################################################################################3


set output 'Bb2.pdf'
set terminal pdfcairo



set xrange[0:4000]
set yrange[-30:0]

set ylabel "Intensidade (u.a)"
set xlabel '{/Symbol l}(nm)'
set title "Intensidade x {/Symbol l}"



plot '10V.dat' t '10 V','9V.dat' t '9 V','8V.dat' t '8 V','7V.dat' t '7 V'

unset output
