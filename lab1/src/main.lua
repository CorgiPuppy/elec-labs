function write_to_file(file, val_1, val_2)
	local file = io.open(file, "w")

	for i = 1, 6
	do
		file:write(val_1[i], " ", val_2[i], "\n")
	end

	file:close()
end

R_l = 100
U = 200
R = 170
R_n = {0, R_l, R + 100, R + 300, R + 500, R + 700}
I = {2, 1, 0.5405, 0.3509, 0.2597, 0.2062} 
P_ist, P_n, n = {}, {}, {}

print("R_n, I, P_ist, P_n, n")
for i = 1, 6
do
	P_ist[i] = U * I[i]
	P_n[i] = I[i] * I[i] * R_n[i]
	n[i] = (P_n[i] / P_ist[i]) * 100
	print(R_n[i], I[i], P_ist[i], P_n[i], n[i])
end

folder = "../plots/files/"
write_to_file(folder.."I_R.txt", R_n, I)
write_to_file(folder.."P_ist_R.txt", R_n, P_ist)
write_to_file(folder.."P_n_R.txt", R_n, P_n)
write_to_file(folder.."n_R.txt", R_n, n)
