set terminal pngcairo size 600,600

set title 'Векторная диаграмма "Треугольник (симметричная система)"'
set grid

scale_I = 20
range = 500
indent = 10

U_A_x = 0.0
U_A_y = 380.0
U_B_x = 329.1
U_B_y = -190.0
U_C_x = -329.1
U_C_y = -190.0

I_AB_x = 0.000*scale_I
I_AB_y = 5.442*scale_I
I_BC_x = 4.714*scale_I
I_BC_y = -2.722*scale_I
I_CA_x = -4.715*scale_I
I_CA_y = -2.722*scale_I

I_A_x = I_AB_x - I_CA_x
I_A_y = I_AB_y - I_CA_y
I_B_x = I_BC_x - I_AB_x
I_B_y = I_BC_y - I_AB_y
I_C_x = I_CA_x - I_BC_x
I_C_y = I_CA_y - I_BC_y

U_CA_x = U_C_x
U_CA_y = -(U_A_y+U_C_y)
U_BC_x = U_B_x
U_BC_y = U_B_y
U_AB_x = U_A_x
U_AB_y = U_A_y

# Axes
set arrow from U_A_x,-(U_A_y+indent) to U_A_x,U_A_y+indent
set arrow from U_A_y+indent,U_A_x to -(U_A_y+indent),U_A_x

set label '+1' at U_A_x,U_A_y+indent offset 1,1
set label '+j' at -(U_A_y+indent),U_A_x offset -2,1

# U phase and line
set arrow from U_A_x,U_A_y to U_CA_x,U_CA_y
set arrow from U_CA_x,U_CA_y to U_BC_x,U_BC_y
set arrow from U_BC_x,U_BC_y to U_AB_x,U_AB_y

set label 'U_{CA}' at U_CA_x/2,(U_CA_y-(-U_A_y))/2 offset -3,1
set label 'U_{BC}' at 0,(U_BC_y-(-U_CA_y))/2 offset 1,-1
set label 'U_{AB}' at U_BC_x/2,(U_AB_y-(-U_BC_y))/2 offset 1,1

# I line
set arrow from U_A_x,U_A_y to I_CA_x,I_CA_y
set arrow from I_CA_x,I_CA_y to I_C_x,I_C_y
set label 'I_{CA}' at I_CA_x,I_CA_y offset 1,1
set label 'I_{-BC}' at I_C_x,I_C_y offset 2,1

set arrow from U_CA_x,U_CA_y to I_BC_x,I_BC_y
set arrow from I_BC_x,I_BC_y to I_B_x,I_B_y
set label 'I_{BC}' at I_BC_x,I_BC_y offset -2,1
set label 'I_{-AB}' at I_B_x,I_B_y offset 1,1

set arrow from U_BC_x,U_BC_y to I_AB_x,I_AB_y
set arrow from I_AB_x,I_AB_y to I_A_x,I_A_y
set label 'I_{AB}' at I_AB_x,I_AB_y offset 0,1
set label 'I_{-CA}' at I_A_x,I_A_y offset -3,1

# I phase
set arrow from U_BC_x,U_BC_y to I_A_x,I_A_y lc rgb 'blue' lw 2
set arrow from U_CA_x,U_CA_y to I_B_x,I_B_y lc rgb 'green' lw 2
set arrow from U_A_x,U_A_y to I_C_x,I_C_y lc rgb 'red' lw 2

set label 'I_A' at I_A_x,I_A_y offset 1,1
set label 'I_B' at I_B_x, I_B_y offset -3,1
set label 'I_C' at I_C_x, I_C_y offset -2,1

set xrange [-range:range]
set yrange [-range:range]

set output "plots/pictures/triangle_sym.png"
plot NaN notitle
