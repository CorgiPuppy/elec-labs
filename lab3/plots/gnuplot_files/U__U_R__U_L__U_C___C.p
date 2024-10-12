set terminal pngcairo size 1200,1200

set title "Расчётные кривые изменения общего напряжения U, резистора U_{R}, катушки U_{L} и конденсатора U_{C} от ёмкости конденсатора C"
set xlabel "C, мкФ"
set ylabel "U, U_{R}, U_{L}, U_{C}, В"
set grid

set xrange [120:220]

set output "../pictures/U__U_R__U_L__U_C___C.png"
plot "../files/U_C.txt" title "U(C)" with linespoints, "../files/U_R_C.txt" title "U_{R}(C)" with linespoints, "../files/U_L_C.txt" title "U_{L}(C)" with linespoints, "../files/U_C_C.txt" title "U_{C}(C)" with linespoints  
