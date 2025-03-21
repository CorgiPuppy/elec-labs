set terminal pngcairo size 1000,800

set title "Экспериментальные кривые изменения сопротивлений катушки X_{L}(f) и конденсатора X_{C}(f) от частоты f"
set xlabel "f, Гц"
set ylabel "X_{L}, X_{C}, Ом"
set grid

set xrange [20:130]
set yrange [5:50]

set output "plots/pictures/X_L_X_C_exp_f.png"
plot "plots/files/X_L_exp_f.txt" title "X_{L}(f)" with linespoints, "plots/files/X_C_exp_f.txt" title "X_{C}(f)" with linespoints 
