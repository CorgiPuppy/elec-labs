=begin
Constants [
	sym,
	asym_phase_breakage,
	asym_line_breakage
].
=end

U_ab = [381.0, 381.0, 381.1]
U_bc = [381.0, 381.0, 381.1]
U_ca = [54.45, 381.0, 326.6]
I_ab = [5.442, 0, 2.722]
I_bc = [5.443, 5.443, 5.443]
I_ca = [5.444, 3.176, 2.722]
I_A = [9.428, 3.176, 0]
I_B = [9.426, 5.443, 8.165]
I_C = [9.429, 7.550, 8.165]
R_sym = 70
R_A = 20
R_B = 70
R_C = 120

def calc_P(i, r)
	return i ** 2 * r
end

length = U_ab.length
p_A = Array.new(length, 0)
p_B = Array.new(length, 0)
p_C = Array.new(length, 0)
p_Circuit = Array.new(length, 0)

puts "\nTriangle:"
print "P_A\tP_B\tP_C\tP_Circuit\n"
p_A.each_with_index do |element, index|
	if index == 0
		p_A[index] = calc_P(I_ab[index], R_sym)
		p_B[index] = calc_P(I_bc[index], R_sym)
		p_C[index] = calc_P(I_ca[index], R_sym)
	else
		p_A[index] = calc_P(I_ab[index], R_A)
		p_B[index] = calc_P(I_bc[index], R_B)
		p_C[index] = calc_P(I_ca[index], R_C)
	end
	p_Circuit[index] = p_A[index] + p_B[index] + p_C[index]
	printf "%.1f\t%.1f\t%.1f\t%.1f\n", p_A[index], p_B[index], p_C[index], p_Circuit[index]
end
