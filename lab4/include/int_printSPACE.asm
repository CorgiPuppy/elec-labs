%include	"include/int_print.asm"

int_printSPACE:
	call	int_print

	push	rax
	mov		rax, 20h
	push	rax
	mov		rax, rsp
	call	str_print

	pop		rax
	pop		rax

	ret
