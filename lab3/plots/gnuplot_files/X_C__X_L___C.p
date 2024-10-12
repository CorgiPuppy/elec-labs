set terminal pngcairo size 1000,1000

set title "Расчетные кривые изменений сопротивлений катушки X_{L}(C) и конденсатора X_{C}(C) от ёмкости конденсатора C"
set xlabel "C, мкФ"
set ylabel "X_{L}, X_{C}, Ом"
set grid

set xrange [120:220]

set output "../pictures/X_L__X_C___C.png"
plot "../files/X_L_C.txt" title "X_{L}(C)" with linespoints, "../files/X_C_C.txt" title "X_{C}(C)" with linespoints
