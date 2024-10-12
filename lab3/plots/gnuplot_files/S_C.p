set terminal pngcairo size 700,700

set title "Расчётная кривая изменения полной мощности S от ёмкости конденсатора C"
set xlabel "C, мкФ"
set ylabel "S, В*А"
set grid

set xrange [120:230]
#set yrange [5:50]

set output "../pictures/S_C.png"
plot "../files/S_C.txt" title "S(C)" with linespoints 
