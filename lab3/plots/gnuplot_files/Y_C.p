set terminal pngcairo size 700,700

set title "Расчётная кривая изменения полной проводимости Y от ёмкости конденсатора C"
set xlabel "C, мкФ"
set ylabel "Y, См"
set grid

set xrange [120:230]

set output "plots/pictures/Y_C.png"
plot "plots/files/Y_C.txt" title "Y(C)" with linespoints 
