set terminal pngcairo size 900,900

set title "Расчётная кривая изменения "
set xlabel "t, с"
set ylabel "n_{я}, об/мин"
set grid

set key out

set output "plots/pictures/n__t.png"
plot "plots/files/n_1__t_1.txt" title "n_1(t_1)" with linespoints, "plots/files/n_2__t_2.txt" title "n_2(t_2)" with linespoints, "plots/files/n_3__t_3.txt" title "n_3(t_3)" with linespoints, "plots/files/n_4__t_4.txt" title "n_4(t_4)" with linespoints, "plots/files/n_5__t_5.txt" title "n_5(t_5)" with linespoints, "plots/files/n_6__t_6.txt" title "n_6(t_6)" with linespoints
