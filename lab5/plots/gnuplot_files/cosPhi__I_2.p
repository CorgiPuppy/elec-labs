set terminal pngcairo size 900,900

set title "Расчётная кривая изменения на вторичной обмотке cos{/Symbol f} от силы тока I_2"
set xlabel "I_2, А"
set ylabel "cos{/Symbol f}"
set grid

set xrange [0.1:0.6]
set yrange [0.8:1]

set output "plots/pictures/cosPhi__I_2.png"
plot "plots/files/cosPhi__I_2.txt" title "cos{/Symbol f}(I_2)" with linespoints
