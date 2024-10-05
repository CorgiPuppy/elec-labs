%include	"include/str_len.asm"

str_print:
	push	rdx
	push	rcx
	push	rbx
	push	rax
	call	str_len
	
	mov		rdx, rax
	pop		rax

	mov		rcx, rax
	mov		rbx, 1		; write to the stdout file
	mov		rax, 4		; call sys_write
	int		80h

	pop		rbx
	pop		rcx
	pop		rdx

	ret
