%include	"include/int_printSPACE.asm"
%include	"include/exit.asm"

section .data
	msg		db		"Table:", 0Ah, 0h
	x		dd		3.14
	filename	db	"file.txt", 0h
section .text
global _start

_start:
	
	mov		rax, msg
	call	str_print

	mov		rcx, 0

next_number:
	inc		rcx

	mov		rax, rcx
	call	int_printSPACE

	cmp		rcx, 10
	jne		next_number

	mov		rcx, 0777o
	mov		rbx, filename
	mov		rax, 8
	int		80h

	mov		rdx, 4
	mov		rcx, msg
	mov		rbx, rax
	mov		rax, 4
	int		80h

	call	exit
