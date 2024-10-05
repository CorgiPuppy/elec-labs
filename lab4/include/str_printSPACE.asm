%include	"include/str_print.asm"

str_printSPACE:
	call	str_print

	push	rax
	mov		rax, 20h	; ASCII character for space
	
	push	rax
	mov		rax, rsp
	call 	str_print

	pop		rax			; pop space char from the stack
	pop		rax			

	ret
