set terminal pngcairo size 900,900

set title "Расчетные кривые изменения общей силы тока I и конденсатора I_{C} от ёмкости конденсатора C"
set xlabel "C, мкФ"
set ylabel "I, I_{C}, А"
set grid

set xrange [120:230]

set output "plots/pictures/I__I_C___C.png"
plot "plots/files/I_C_i.txt" title "I(C)" with linespoints, "plots/files/I_C_C.txt" title "I_{C}(C)" with linespoints
