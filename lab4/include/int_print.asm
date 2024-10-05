%include	"include/str_print.asm"

int_print:
	push	rax
	push	rcx
	push	rdx
	push	rsi
	mov 	rcx, 0

.loop:
	inc		rcx

	mov		rdx, 0
	mov		rsi, 10
	idiv	rsi
	add		rdx, 48
	
	push	rdx
	cmp		rax, 0
	jnz		.loop

.loop_print:
	dec		rcx

	mov		rax, rsp
	call	str_print

	pop		rax
	cmp		rcx, 0
	jnz		.loop_print

	pop		rsi
	pop		rdx
	pop		rcx
	pop		rax

	ret
