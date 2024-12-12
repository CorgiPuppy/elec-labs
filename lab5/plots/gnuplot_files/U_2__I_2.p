set terminal pngcairo size 900,900

set title "Расчётная кривая изменения на вторичной обмотке напряжения U_2 от силы тока I_2"
set xlabel "I_2, А"
set ylabel "U_2, В"
set grid

set xrange [0.1:0.6]
set yrange [42:45]

set output "plots/pictures/U_2__I_2.png"
plot "plots/files/U_2__I_2.txt" title "U_2(I_2)" with linespoints
