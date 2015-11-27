section .text
	global _ft_putstr
	extern	_ft_strlen

_ft_putstr:
	mov r9, rdi
	call _ft_strlen
	mov rdx, rax
	mov rax, 0x2000004
	mov rsi, r9
	mov rdi, 1
	syscall
	jc error
	ret

error:
	mov rax, -1
	ret
