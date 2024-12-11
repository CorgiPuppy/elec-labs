=begin
Constants [
	neutral_sym,
	neutral_asym,
	without_neutral_sym,
	without_neutral_asym
].
=end

U_A = [220.0, 220.0, 220.0, 104.0]
U_B = [220.0, 220.0, 220.0, 286.7]
U_C = [220.0, 220.0, 220.0, 306.8]
U_nN = [0, 118.2]
U_AB = [381.0, 381.0, 381.0]
U_BC = [381.0, 381.0, 381.0]
U_AC = [381.1, 381.1, 381.1]
I_A = [3.143, 11.000, 3.143, 5.198]
I_B = [3.142, 3.142, 3.142, 4.095]
I_C = [3.143, 1.294, 3.143, 2.557]
I_N = [0, 8.926]

def calc_P(u, i)
	return u * i
end

length = U_A.length
p_A = Array.new(length, 0)
p_B = Array.new(length, 0)
p_C = Array.new(length, 0)
p_Circuit = Array.new(length, 0)

puts "\nAsterisk:"
print "P_A\tP_B\tP_C\tP_Circuit\n"
p_A.each_with_index do |element, index|
	p_A[index] = calc_P(U_A[index], I_A[index])
	p_B[index] = calc_P(U_B[index], I_B[index])
	p_C[index] = calc_P(U_C[index], I_C[index])
	p_Circuit[index] = p_A[index] + p_B[index] + p_C[index]
	printf "%.1f\t%.1f\t%.1f\t%.1f\n", p_A[index], p_B[index], p_C[index], p_Circuit[index]
end
