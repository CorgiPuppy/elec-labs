set terminal pngcairo size 1000,800

set title "Расчетные кривые изменения сопротивлений катушки X_{L}(f) и конденсатора X_{C}(f) от частоты f"
set xlabel "f, Гц"
set ylabel "X_{L}, X_{C}, Ом"
set grid

set xrange [20:130]
set yrange [5:50]

set output "../pictures/X_L_X_C_calc_f.png"
plot "../files/X_L_calc_f.txt" title "X_{L}(f)" with linespoints, "../files/X_C_calc_f.txt" title "X_{C}(f)" with linespoints 
