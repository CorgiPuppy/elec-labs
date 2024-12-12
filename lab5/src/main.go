package main

import (
	"fmt"
	"math"
	"os"
	"bufio"
)

// Plot folder
const folder = "plots/files/"

// Idle mode
const U_1Н = 220.0
const U_2Н = 45.67
const I_1Х = 0.027
const P_Х = 0.902
const w_1 = 1622.0
const w_2 = 338.0
const deltaP_М = 0.902

// Short circuit mode
const U_1К = 220.0
const I_1К = 1.356
const I_2К = 6.478
const P_К = 242.5
const deltaP_О = 242.5

// Operating mode
const size = 5
var R = [size]float64{80.0, 110.0, 130.0, 210.0, 300.0}
const U_1 = 220.0
var I_1 = [size]float64{0.114, 0.084, 0.071, 0.047, 0.044}
var P_1 = [size]float64{24.55, 18.26, 15.60, 10.05, 7.813}
var U_2 = [size]float64{42.66, 43.48, 43.82, 44.51, 44.75}
var I_2 = [size]float64{0.533, 0.395, 0.337, 0.212, 0.149}

func calc_n(u_1, u_2 float64) float64 {
	return u_1 / u_2
}

func calc_cosPhi(p, u, i float64) float64 {
	return p / (u * i)
}

func calc_Z(u, i float64) float64 {
	return u / i
}

func calc_R(z, cosPhi float64) float64 {
	return z * cosPhi
}

func calc_X(z, cosPhi float64) float64 {
	return z * math.Sqrt(1 - math.Pow(cosPhi, 2))
}

func calc_P(i, r float64) float64 {
	return math.Pow(i, 2) * r
}

func calc_cpa(p_1, p_2 float64) float64 {
	return (p_2 / p_1) * 100.0
}

func check(err error) {
	if err != nil {
		panic(err)
	}
}

func write_to_file(file_name string, val_1, val_2 [size]float64) {
	file, err := os.Create(folder + file_name)
	check(err)
	defer file.Close()

	w := bufio.NewWriter(file)
	for i:=0; i<size; i++ {
		_, err := fmt.Fprintf(w, "%.3f %.3f\n", val_1[i], val_2[i])
		check(err)
	}
	w.Flush()
}

func main() {
	n := calc_n(U_1Н, U_2Н)
	cosPhi_Х := calc_cosPhi(P_Х, U_1Н, I_1Х)
	
	fmt.Printf("Idle mode:\nU_1Н\tU_2Н\tI_1Х\tP_Х\tn\tw_1\tw_2\tdeltaP_М\tcosPhi_Х\n")
	fmt.Printf("%.0f\t%.2f\t%.3f\t%.3f\t%.2f\t%.0f\t%.0f\t%.3f\t\t%.3f\n\n", U_1Н, U_2Н, I_1Х, P_Х, n, w_1, w_2, deltaP_М, cosPhi_Х)	

	Z_К := calc_Z(U_1К, I_1К)
	cosPhi_К := calc_cosPhi(P_К, U_1К, I_1К)
	R_К := calc_R(Z_К, cosPhi_К)
	X_К := calc_X(Z_К, cosPhi_К)

	fmt.Printf("Short_circuit_mode:\nU_1К\tI_1К\tI_2К\tP_К\tZ_К\tR_К\tX_К\tdeltaP_О\tcosPhi_К\n")
	fmt.Printf("%.0f\t%.3f\t%.3f\t%.1f\t%.2f\t%.2f\t%.2f\t%.1f\t\t%.3f\n\n", U_1К, I_1К, I_2К, P_К, Z_К, R_К, X_К, deltaP_О, cosPhi_К)

	var P_2 = [size]float64{0}
	var cosPhi = [size]float64{0}
	var cpa = [size]float64{0}
	for i:=0; i<size; i++ {	
		P_2[i] = calc_P(I_2[i], R[i])
		cosPhi[i] = calc_cosPhi(P_1[i], U_1, I_1[i])
		cpa[i] = calc_cpa(P_1[i], P_2[i])
	}

	fmt.Printf("Operating_mode:\nR\tU_1\tI_1\tP_1\tU_2\tI_2\tP_2\tcosPhi\tn\n")
	for i:=0; i<size; i++ {
		fmt.Printf("%.0f\t%.0f\t%.3f\t%.2f\t%.2f\t%.3f\t%.2f\t%.3f\t%.0f\n", R[i], U_1, I_1[i], P_1[i], U_2[i], I_2[i], P_2[i], cosPhi[i], cpa[i])
	}

	write_to_file("U_2__I_2.txt", U_2, I_2);
	write_to_file("P_2__I_2.txt", P_2, I_2);
	write_to_file("cosPhi__I_2.txt", cosPhi, I_2);
	write_to_file("n__I_2.txt", cpa, I_2);
}
