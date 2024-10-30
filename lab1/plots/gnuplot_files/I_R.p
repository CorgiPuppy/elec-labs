set terminal pngcairo size 700,700

set title "Кривая силы тока I от сопротивления нагрузки R_{н}"
set xlabel "R_{н}, Ом"
set ylabel "I, A"
set grid

set xrange [0:1000]
set yrange [0:3]

set output "plots/pictures/I_R.png"
plot "plots/files/I_R.txt" title "I(R_{н})" with linespoints
