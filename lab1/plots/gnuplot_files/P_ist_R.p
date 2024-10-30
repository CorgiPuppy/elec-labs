set terminal pngcairo size 700,700

set title "Кривая мощности источника P_{ист.} от сопротивления нагрузки R_{н}"
set xlabel "R_{н}, Ом"
set ylabel "P_{ист.}, Вт"
set grid

set xrange [0:1000]
set yrange [0:500]

set output "plots/pictures/P_ist_R.png"
plot "plots/files/P_ist_R.txt" title "P_{ист.}(R_{н})" with linespoints
