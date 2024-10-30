set terminal pngcairo size 700,700

set title "Расчётная кривая изменения cos{/Symbol f} от ёмкости конденсатора C"
set xlabel "C, мкФ"
set ylabel "cos{/Symbol f}"
set grid

set xrange [120:230]

set output "plots/pictures/cosPhi2_C.png"
plot "plots/files/cosPhi2_C.txt" title "cos{/Symbol f}(C)" with linespoints 
