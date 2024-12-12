set terminal pngcairo size 900,900

set title "Расчётная кривая изменения на вторичной обмотке мощности P_2 от силы тока I_2"
set xlabel "I_2, А"
set ylabel "P_2, Вт"
set grid

set xrange [0.1:0.6]
set yrange [6:23]

set output "plots/pictures/P_2__I_2.png"
plot "plots/files/P_2__I_2.txt" title "P_2(I_2)" with linespoints
