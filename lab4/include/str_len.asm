str_len:
	push    rbx
	mov		rbx, rax

.next_char:
	cmp		byte [rax], 0		; compare out byte with zero

	jz		.ending
	inc		rax

	jmp		.next_char

 .ending:
	sub		rax, rbx
	pop		rbx

	ret
