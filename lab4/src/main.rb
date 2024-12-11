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

def calc_P(i, u)
	return i ** 2 * u
end

puts calc_P(2, 3)
