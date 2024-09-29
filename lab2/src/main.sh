#/bin/bash

declare -f write_to_file
write_to_file () 
{
	declare file=$1
	declare -a x=("${!2}")
	declare -a y=("${!3}")
	declare -i len=$4	
	
	touch $file
	
	if [[ -f "$file" ]]
	then
		for (( i=0; i<$len; i++ ))
		do
			echo "${x[$i]}" "${y[$i]}"
		done > $file
	else
		echo "$file doesn't exist."
	fi
}

declare PI=$(echo "scale=5; 4 * a(1)" | bc -l) 
declare -i LEN=10
declare -i N=7
declare -i E=10*$N 
declare -i R=$N
declare -i C=170
declare L=59.55
declare -a f
declare -a X_L_calc
declare -a U_L=(59.7 63.6 65.7 66.9 67.7 68.2 68.6 68.8 69.1 69.2)
declare -a I_L=(5.21 4.17 3.44 2.92 2.53 2.23 2.00 1.80 1.64 1.51)
declare -a X_L_exp
declare -a X_C_calc
declare -a U_C=(68.3 67.0 65.5 63.7 61.4 59.9 57.8 55.8 53.8 51.8)
declare -a I_C=(2.22 2.90 3.54 4.14 4.61 5.18 5.63 6.04 6.40 6.73)
declare -a X_C_exp
declare FOLDER=../plots/files
declare FILE_1_1=$FOLDER/X_L_calc_f.txt
declare FILE_1_2=$FOLDER/X_C_calc_f.txt
declare FILE_2_1=$FOLDER/X_L_exp_f.txt
declare FILE_2_2=$FOLDER/X_C_exp_f.txt

declare -i j=30
for (( i=0; i<$LEN; i++ ))
do 
	f[$i]=$j
	j+=10
	X_L_calc[$i]=$(echo "scale=3; 2 * $PI * ${f[$i]} * $L * 10^(-3)" | bc)
	X_L_exp[$i]=$(echo "scale=3; ${U_L[$i]} / ${I_L[$i]}" | bc)
	X_C_calc[$i]=$(echo "scale=6; 1 / (2 * $PI * ${f[$i]} * $C * 10^(-6))" | bc)
	X_C_exp[$i]=$(echo "scale=3; ${U_C[$i]} / ${I_C[$i]}" | bc)
	echo "${f[$i]} ${X_L_calc[$i]} ${X_L_exp[$i]} ${X_C_calc[$i]} ${X_C_exp[$i]}"
done

write_to_file $FILE_1_1 f[@] X_L_calc[@] $LEN
write_to_file $FILE_1_2 f[@] X_C_calc[@] $LEN
write_to_file $FILE_2_1 f[@] X_L_exp[@] $LEN
write_to_file $FILE_2_2 f[@] X_C_exp[@] $LEN
