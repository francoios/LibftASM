section .text
	global _ft_puts
	extern	_ft_strlen

_ft_puts:
	mov r9, rdi
	call _ft_strlen
	mov rdx, rax
	mov rax, 0x2000004
	mov rsi, r9
	mov rdi, 1
	syscall
	jc error
	push 10
	mov rsi, rsp
	mov rdx, 1
	mov rax, 0x2000004
	syscall
	pop rax
	ret

error:
	mov rax, -1
	ret
