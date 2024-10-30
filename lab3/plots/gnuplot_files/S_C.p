set terminal pngcairo size 700,700

set title "Расчётная кривая изменения полной мощности S от ёмкости конденсатора C"
set xlabel "C, мкФ"
set ylabel "S, В*А"
set grid

set xrange [120:220]

set output "plots/pictures/S_C.png"
plot "plots/files/S_C.txt" title "S(C)" with linespoints 
