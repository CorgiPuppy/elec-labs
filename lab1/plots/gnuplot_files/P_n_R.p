set terminal pngcairo size 700,700

set title "Кривая мощности нагрузки P_{н} от сопротивления нагрузки R_{н}"
set xlabel "R_{н}, Ом"
set ylabel "P_{н}, Вт"
set grid

set xrange [0:1000]
set yrange [0:110]

set output "../pictures/P_n_R.png"
plot "../files/P_n_R.txt" title "P_{н}(R_{н})" with linespoints
