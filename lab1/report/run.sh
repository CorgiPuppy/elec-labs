#!/bin/bash

file="$@"

if [ -f "$file".tex ]
then
	pdflatex "$file".tex
	latexmk -c "$file".tex
	if [ -f "$file".pdf ]
	then
		zathura "$file".pdf
	else
		echo "$file.pdf doesn't exist."
	fi
else
	echo "$file.tex doesn't exist."
fi
