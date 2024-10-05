exit:
	mov		rbx, 0		; return 0 for exit
	mov		rax, 1		; call sys_exit
	int		80h

	ret
