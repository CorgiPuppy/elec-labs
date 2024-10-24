#/bin/bash

function run ()
{
	./"$1"
	rm "$1"
}

file="$@"

if [ -f "$file".f90 ]
then
	if [ "$OSTYPE" == "linux-gnu"* ]
	then
		gfortran "$file".f90 -o "$file"
		run "$file"
	elif [ $(ps -ef | grep -c com.termux) -gt 0 ]
	then
		lfortran "$file".f90 -o "$file"
		rm "$file".tmp.o
		run "$file"
	else
		"There is an another OS."
	fi
else
	echo "$file.f90 doesn't exist."
fi
