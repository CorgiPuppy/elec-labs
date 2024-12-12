set terminal pngcairo size 900,900

set title "Расчётная кривая изменения "
set xlabel "М, Н*м"
set ylabel "n_{я}, об/мин"
set grid

set key out

set output "plots/pictures/n__M.png"
plot "plots/files/n_1__M.txt" title "n_{я}(M)" with linespoints, "plots/files/n_2__M.txt" title "n_{я}(M)" with linespoints, "plots/files/n_3__M.txt" title "n_{я}(M)" with linespoints, "plots/files/n_4__M.txt" title "n_{я}(M)" with linespoints, "plots/files/n_5__M.txt" title "n_{я}(M)" with linespoints, "plots/files/n_6__M.txt" title "n_{я}(M)" with linespoints, "plots/files/n_7__M.txt" title "n_{я}(M)" with linespoints
