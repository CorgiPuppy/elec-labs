set terminal pngcairo size 700,700

set title "Векторная диаграмма напряжений"
set grid
set xlabel 'U_{R}, В'
set ylabel 'U_{L}, U_{C}, В'

U_R = 220
U_L = 225.6
U_C = 225.9

set arrow from 0,0 to U_R,0 lc rgb 'blue' lw 2
set arrow from 0,0 to 0,U_L lc rgb 'red' lw 2
set arrow from 0,0 to 0,-U_C lc rgb 'green' lw 2

set xrange [0:300]
set yrange [-250:250]

set output 'plots/pictures/U_R__U_L__U_C.png'
plot NaN notitle
