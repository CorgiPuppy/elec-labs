set terminal pngcairo size 900,900

set title "Расчётная кривая изменения "
set xlabel "R_{я}, Ом"
set ylabel "n_{я}, об/мин"
set grid

set key out

set output "plots/pictures/n__R.png"
plot "plots/files/n_1__R.txt" title "n_{я}(R_{я})" with linespoints, "plots/files/n_2__R.txt" title "n_{я}(R_{я})" with linespoints, "plots/files/n_3__R.txt" title "n_{я}(R_{я})" with linespoints, "plots/files/n_4__R.txt" title "n_{я}(R_{я})" with linespoints, "plots/files/n_5__R.txt" title "n_{я}(R_{я})" with linespoints, "plots/files/n_6__R.txt" title "n_{я}(R_{я})" with linespoints, "plots/files/n_7__R.txt" title "n_{я}(R_{я})" with linespoints
