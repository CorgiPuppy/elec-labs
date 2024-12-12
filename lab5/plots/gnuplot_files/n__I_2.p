set terminal pngcairo size 900,900

set title "Расчётная кривая изменения на вторичной обмотке КПД {/Symbol h} от силы тока I_2"
set xlabel "I_2, А"
set ylabel "{/Symbol h}, %"
set grid

set xrange [0.1:0.6]
set yrange [84:96]

set output "plots/pictures/n__I_2.png"
plot "plots/files/n__I_2.txt" title "{/Symbol h}(I_2)" with linespoints
