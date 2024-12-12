const R = [0, 2, 4, 6, 8, 10];

const t_1 = [0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7];
const t_2 = [0.0, 0.2, 0.4, 0.6, 0.8, 1.0, 1.2, 1.4];
const t_3 = [0.0, 0.3, 0.6, 0.9, 1.2, 1.5, 1.8, 2.1];
const t_4 = [0.0, 0.35, 0.7, 1.05, 1.4, 1.75, 2.1, 2.45];
const t_5 = [0.0, 0.4, 0.8, 1.2, 1.6, 2.0, 2.4, 2.8];
const t_6 = [0.0, 0.5, 1.0, 1.5, 2.0, 2.5, 3.0, 3.5];

const n_1 = [0, 1166, 1992, 2227, 2361, 2417, 2441, 2451];
const n_2 = [0, 982, 1526, 1787, 1912, 1974, 2000, 2015];
const n_3 = [0, 968, 1380, 1568, 1653, 1691, 1710, 1718];
const n_4 = [0, 821, 1183, 1352, 1432, 1469, 1486, 1493];
const n_5 = [0, 699, 1035, 1192, 1265, 1299, 1314, 1322];
const n_6 = [0, 710, 994, 1107, 1156, 1177, 1185, 1189];

const I = [8.954, 7.535, 6.322, 5.508, 4.829, 4.437];

const folder = "plots/files/";

function delete_file(file_name) {
	const fs = require('fs');
	try {
		fs.unlinkSync(file_name);
	} catch (err) {
		console.error(err.message);
	}
}

function write_to_file(file_name, val_1, val_2) {
	delete_file(file_name);

    const fs = require('fs');

    const lines = val_1.map((val, index) => `${val} ${val_2[index]}`).join('\n');

    fs.writeFile(file_name, lines + '\n', (err) => {
        if (err) throw err;
    });
}

write_to_file(folder + 'n_1__t_1.txt', t_1, n_1);
write_to_file(folder + 'n_2__t_2.txt', t_2, n_2);
write_to_file(folder + 'n_3__t_3.txt', t_3, n_3);
write_to_file(folder + 'n_4__t_4.txt', t_4, n_4);
write_to_file(folder + 'n_5__t_5.txt', t_5, n_5);
write_to_file(folder + 'n_6__t_6.txt', t_6, n_6);

const transposed_n = [];

for (let i = 0; i < n_1.length; i++) {
    transposed_n[i] = [
        n_1[i],
        n_2[i],
        n_3[i],
        n_4[i],
        n_5[i],
        n_6[i]
    ];
}

write_to_file(folder + 'n_1__R.txt', R, transposed_n[0]);
write_to_file(folder + 'n_2__R.txt', R, transposed_n[1]);
write_to_file(folder + 'n_3__R.txt', R, transposed_n[2]);
write_to_file(folder + 'n_4__R.txt', R, transposed_n[3]);
write_to_file(folder + 'n_5__R.txt', R, transposed_n[4]);
write_to_file(folder + 'n_6__R.txt', R, transposed_n[5]);
write_to_file(folder + 'n_7__R.txt', R, transposed_n[6]);

M = [];
for (let i = 0; i < I.length; i++) {
	M[i] = Math.pow(I[i], 2);
}

write_to_file(folder + 'n_1__M.txt', M, transposed_n[0]);
write_to_file(folder + 'n_2__M.txt', M, transposed_n[1]);
write_to_file(folder + 'n_3__M.txt', M, transposed_n[2]);
write_to_file(folder + 'n_4__M.txt', M, transposed_n[3]);
write_to_file(folder + 'n_5__M.txt', M, transposed_n[4]);
write_to_file(folder + 'n_6__M.txt', M, transposed_n[5]);
write_to_file(folder + 'n_7__M.txt', M, transposed_n[6]);


