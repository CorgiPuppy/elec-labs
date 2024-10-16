#/bin/bash

file="$@"

if [ -f "$file".asm ]
then
	nasm -f elf64 "$file".asm -o "$file".o
	ld "$file".o -o "$file"
	./"$file"
else
	echo "$file doesn't exist."
fi
