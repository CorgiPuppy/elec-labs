set terminal pngcairo size 800,800

set title 'Векторная диаграмма "Звезда без нейтрального провода (несимметричная система)"'
set grid

scale_U = 15
range = 24
indent = 1

U_A = 104.0/scale_U
U_A_x = -15.6/scale_U
U_A_y = 102.8/scale_U
U_B = 286.7/scale_U
U_B_x = 174.9/scale_U
U_B_y = -227.2/scale_U
U_C = 306.8/scale_U
U_C_x = -206.147/scale_U
U_C_y = -227.2/scale_U

I_A_x = -0.779
I_A_y = 5.125
I_B_x = 2.492
I_B_y = -3.237
I_C_x = -1.713
I_C_y = -1.888

U_N_x = 15.576/scale_U
U_N_y = 116.8895/scale_U

U_CA_x = U_C_x
U_CA_y = U_C_y
U_BC_x = U_B_x
U_BC_y = U_B_y
U_AB_x = U_A_x
U_AB_y = U_A_y

# Axes
set arrow from 0,-(U_C+indent) to 0,U_C+indent
set arrow from U_C+indent,0 to -(U_B+indent),0

set label '+1' at 0,U_C+indent offset 1,1
set label '+j' at -(U_B+indent),0 offset -2,1

# U phase
set arrow from 0,0 to U_A_x,U_A_y lc rgb 'blue' lw 2
set arrow from 0,0 to U_B_x,U_B_y lc rgb 'green' lw 2
set arrow from 0,0 to U_C_x,U_C_y lc rgb 'red' lw 2

set label 'U_A' at U_A_x,U_A_y offset 1,1
set label 'U_B' at U_B_x, U_B_y offset 1,1
set label 'U_C' at U_C_x, U_C_y offset -2,1

# U line
set arrow from U_A_x,U_A_y to U_CA_x,U_CA_y
set arrow from U_CA_x,U_CA_y to U_BC_x,U_BC_y
set arrow from U_BC_x,U_BC_y to U_AB_x,U_AB_y

set label 'U_{CA}' at U_CA_x/2,(U_CA_y-U_A_x)/2 offset -8,1
set label 'U_{BC}' at 0,(U_BC_y-(-U_CA_y))/2 offset 1,-1
set label 'U_{AB}' at U_BC_x/2,(U_AB_y-(-U_BC_y))/2 offset 1,1

# U neutral
set arrow from 0,0 to U_N_x,U_N_y lc rgb 'orange' lw 2

set label 'U_{nN}' at U_N_x,U_N_y offset 1,1

# I phase
set arrow from U_N_x,U_N_y to U_N_x+I_A_x,U_N_y+I_A_y lc rgb 'blue' lw 2
set arrow from U_N_x,U_N_y to U_N_x+I_B_x,U_N_y+I_B_y lc rgb 'green' lw 2
set arrow from U_N_x,U_N_y to U_N_x+I_C_x,U_N_y+I_C_y lc rgb 'red' lw 2

set label 'I_A' at U_N_x+I_A_x,U_N_y+I_A_y offset 1,1
set label 'I_B' at U_N_x+I_B_x,U_N_y+I_B_y offset 1,1
set label 'I_C' at U_N_x+I_C_x,U_N_y+I_C_y offset -2,1

set xrange [-range:range]
set yrange [-range:range]

set output "plots/pictures/asterisk_without_neutral_asym.png"
plot NaN notitle
