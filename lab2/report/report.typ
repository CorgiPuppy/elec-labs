#set page(
	paper: "a4",
	margin: (x: 1.8cm, y: 1.5cm),
)

#set text(
	font: "New Computer Modern",
	size: 11pt,
)

#set par(
	first-line-indent: 2em,
)

#set figure.caption(separator: [:])
#show figure.caption.where(kind: image): it => [
	#it.supplement #it.counter.display(it.numbering)#it.separator #it.body
]

#set page(numbering: none)
#linebreak()
#linebreak()
#linebreak()
#linebreak()
#linebreak()
#linebreak()
#linebreak()
#linebreak()
#linebreak()
#linebreak()
#linebreak()
#linebreak()
#linebreak()
#align(center)[
	= ЭЛЕКТРОТЕХНИКА И ЭЛЕКТРОНИКА
	== Рабочая тетрадь
]
#linebreak()
#linebreak()
#linebreak()
#linebreak()
#linebreak()
#linebreak()
#linebreak()
#linebreak()
#linebreak()
#linebreak()
#linebreak()
#align(right)[
	#table(
		columns: (10pt,) + (210pt,),
		stroke: none,
		align: right,
		
		table.cell(text(size: 12pt, "Преподаватель:")), [#underline(evade: false,  "_________________________")],
		table.cell(text(size: 12pt, "Факультет:")), [#underline(evade: false, "_________________________")],
		table.cell(text(size: 12pt, "Студент:")), [#underline(evade: false, "_________________________")],
		table.cell(text(size: 12pt, "Группа:")), [#underline(evade: false, "_________________________")],
		table.cell(text(size: 12pt, "Вариант:")), [#underline(evade: false, "_________________________")],
		table.cell(text(size: 12pt, "Зачёт:")), [#underline(evade: false, "_________________________")],
		["#underline(evade: false, "__")"], [#underline(evade: false, "______________________2024г.")],
	)
]
#linebreak()
#linebreak()
#linebreak()
#linebreak()
#linebreak()
#linebreak()
#linebreak()
#linebreak()
#linebreak()
#linebreak()
#linebreak()
#linebreak()
#align(center)[ Москва 2024 ]

#pagebreak()

#set page(numbering: "1")

#align(center)[
	Лабораторная работа №2 \
	#set text(size: 12pt)
	РЕАКТИВНЫЕ ЭЛЕМЕНТЫ ЦЕПИ СИНУСОИДАЛЬНОГО ТОКА \
	*Задачи* \
]

+ Рассчитать и построить зависимости реактивного сопротивления катушки и конденсатора от частоты источника питания.
+ Снять экспериментально и построить зависимости реактивного сопротивления катушки от частоты источника питания.
+ Сравнить рассчитанные и полученные результаты.
+ Записать вывод по результатам.

#align(center)[*Ход работы*]

#set enum(full: true)

+ Рассчитать цепь (@circuit).

	#figure(
		grid(
			columns: 2,
			image("../circuit/circuit_L.png"),
			image("../circuit/circuit_C.png"),
		),
		caption: [Рассчётная цепь.],
		supplement: [Рис.],
	) <circuit>

+ Заполнить таблицу.

	#table(
		columns: (0.7cm,) + (1.3cm,) + (auto,) + 10 * (1.1cm,),
		rows: (auto,) + (0.7cm,) + (0.7cm,),
		align: center + horizon,

		table.header(
			table.cell(rowspan: 2, colspan: 3, text(weight: "bold", "Элементы и параметры цепи")),
			table.cell(colspan: 10, text(fill: red, weight: "bold", "Частота f, Гц")),
			table.cell(text(fill: red, weight: "bold", "30")),
			table.cell(text(fill: red, weight: "bold", "40")),
			table.cell(text(fill: red, weight: "bold", "50")),
			table.cell(text(fill: red, weight: "bold", "60")),
			table.cell(text(fill: red, weight: "bold", "70")),
			table.cell(text(fill: red, weight: "bold", "80")),
			table.cell(text(fill: red, weight: "bold", "90")),
			table.cell(text(fill: red, weight: "bold", "100")),
			table.cell(text(fill: red, weight: "bold", "110")),
			table.cell(text(fill: red, weight: "bold", "120")),
		),	
		table.cell(rowspan: 4, rotate(-90deg, text(weight: "bold", "Катушка"))), 
		[Рассч.],
			text(fill: blue, $X_L = 2 pi f L*10^(-3) =$),
				"11,22",
				"14,97",
				"18,71",
				"22,45",
				"26,19",
				"29,93",
				"33,67",
				"37,42",
				"41,16",
				"44,90",
		table.cell(rowspan: 3, "Эксп."),
			$U_L, В$,
				"59,7",
				"63,6",
				"65,7",
				"66,9",
				"67,7",
				"68,2", 
				"68,6", 
				"68,8", 
				"69,1", 
				"69,2", 
			$I_L, А$,
				"5,21",	
				"4,17",	
				"3,44",	
				"2,92",	
				"2,53",	
				"2,23",	
				"2,00",	
				"1,80",		
				"1,64",	
				"1,51",	
			text(fill: green, $X_L = U_L / I_L$),
				"11,46",
				"15,25",
				"19,10",
				"22,91",
				"26,76",
				"30,58",
				"34,30",
				"38,22",
				"42,13",
				"45,83",
		table.cell(rowspan: 4, rotate(-90deg, text(weight: "bold", "Конденсатор"))), 
		[Рассч.],
			text(fill: blue, $X_C = (1 / (2 pi f L*10^(-6))) =$),
				"31,21",
				"23,41",
				"18,72",
				"15,60",
				"13,37",
				"11,70",
				"10,40",
				"9,36",
				"8,51",
				"7,80",
		table.cell(rowspan: 3, "Эксп."),
			$U_C, В$,
				"68,3",
				"67,0",
				"65,5",
				"63,7",
				"63,7",
				"59,9", 
				"68,6", 
				"68,8", 
				"69,1", 
				"69,2", 
			$I_C, А$,
				"5,21",	
				"4,17",	
				"3,44",	
				"2,92",	
				"2,53",	
				"2,23",	
				"2,00",	
				"1,80",		
				"1,64",	
				"1,51",	
			text(fill: green, $X_L = U_L / I_L$),
				"30,77",
				"23,10",
				"18,50",
				"15,39",
				"13,32",
				"11,56",
				"10,27",
				"9,24",
				"8,41",
				"7,70",
	)

+ Построить зависимости рассчитанных и экспериментальных значений $X_L$ и $X_C$ от $f$ (@plots).

	#figure(
		grid(
			columns: 2,
			image("../plots/pictures/X_L_X_C_calc_f.png"),
			image("../plots/pictures/X_L_X_C_exp_f.png"),
		),
		caption: [Графики.],
		supplement: [Рис.],
	) <plots>

#align(center)[ *Выводы* ]

В ходе лабораторной работы была проведена сравнительная оценка расчётных и экспериментальных значений реактивного сопротивления индуктивных и емкостных цепей. Сравнение показывает достаточно высокую точность эксперимента с минимальной погрешностью измерений. \

Резонанс напряжений происходит в случае, когда реактивные сопротивления индуктивной и емкостной частей цепи выравниваются, т.е. достигнуты условия $X_L = X_C$. По экспериментальным данным можно отметить, что резонансная частота была приближённо равна 50 Гц.
