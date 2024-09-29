set terminal pngcairo size 700,700

set title "Кривая КПД {/Symbol h} от сопротивления нагрузки R_{н}"
set xlabel "R_{н}, Ом"
set ylabel "{/Symbol h}, %"
set grid

set xrange [0:1000]
set yrange [0:100]

set output "../pictures/n_R.png"
plot "../files/n_R.txt" title "{/Symbol h}(R_{н})" with linespoints
