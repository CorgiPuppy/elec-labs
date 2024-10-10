#!/bin/bash

file="$@"

if [ -z "$file".lsp ]
then
	echo "$file.lsp doesn't exist."
else
	clisp "$file".lsp
fi
