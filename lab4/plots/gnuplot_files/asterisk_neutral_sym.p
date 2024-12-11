set terminal pngcairo size 800,800

set title 'Векторная диаграмма "Звезда с нейтральным проводом (симметричная система)"'
set grid

scale_U = 40
range = 10
indent = 3

U_A = 220.0/scale_U
U_B_x = 190.5/scale_U
U_B_y = -110.0/scale_U
U_C_x = -190.5/scale_U
U_C_y = -110.0/scale_U

I_A = 3.143
I_B_x = 2.721
I_B_y = -1.572
I_C_x = -2.721
I_C_y = -1.572

U_CA_x = U_C_x
U_CA_y = -(U_A+U_C_y)
U_BC_x = U_B_x
U_BC_y = U_B_y
U_AB_x = 0
U_AB_y = U_A

# Axes
set arrow from 0,-(U_A+indent) to 0,U_A+indent
set arrow from U_A+indent,0 to -(U_A+indent),0

set label '+1' at 0,U_A+indent offset 1,1
set label '+j' at -(U_A+indent),0 offset -2,1

# U phase
set arrow from 0,0 to 0,U_A lc rgb 'blue' lw 2
set arrow from 0,0 to U_B_x,U_B_y lc rgb 'green' lw 2
set arrow from 0,0 to U_C_x,U_C_y lc rgb 'red' lw 2

set label 'U_A' at 0,U_A offset 1,1
set label 'U_B' at U_B_x, U_B_y offset 1,1
set label 'U_C' at U_C_x, U_C_y offset -2,1

# U line
set arrow from 0,U_A to U_CA_x,U_CA_y
set arrow from U_CA_x,U_CA_y to U_BC_x,U_BC_y
set arrow from U_BC_x,U_BC_y to U_AB_x,U_AB_y

set label 'U_{CA}' at U_CA_x/2,(U_CA_y-(-U_A))/2 offset -3,1
set label 'U_{BC}' at 0,(U_BC_y-(-U_CA_y))/2 offset 1,-1
set label 'U_{AB}' at U_BC_x/2,(U_AB_y-(-U_BC_y))/2 offset 1,1

# I phase
set arrow from 0,0 to 0,I_A lc rgb 'blue' lw 2
set arrow from 0,0 to I_B_x,I_B_y lc rgb 'green' lw 2
set arrow from 0,0 to I_C_x,I_C_y lc rgb 'red' lw 2

set label 'I_A' at 0,I_A offset 1,1
set label 'I_B' at I_B_x, I_B_y offset 1,1
set label 'I_C' at I_C_x, I_C_y offset -2,1

set xrange [-range:range]
set yrange [-range:range]

set output "plots/pictures/asterisk_neutral_sym.png"
plot NaN notitle
