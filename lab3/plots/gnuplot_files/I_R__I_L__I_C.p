set terminal pngcairo size 700,700

set title "Векторная диаграмма сил тока"
set grid
set xlabel 'I_{R}, А'
set ylabel 'I_{L}, I_{C}, А'

I_R = 12.22
I_L = 11.92
I_C = 11.88

set arrow from 0,0 to I_R,0 lc rgb 'blue' lw 2
set arrow from 0,0 to 0,I_L lc rgb 'red' lw 2
set arrow from 0,0 to 0,-I_C lc rgb 'green' lw 2

set xrange [0:15]
set yrange [-15:15]

set output 'plots/pictures/I_R__I_L__I_C.png'
plot NaN notitle
