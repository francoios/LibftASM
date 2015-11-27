section .text
	global _ft_cat
	extern _malloc, _ft_putstr

_ft_cat:
	mov rbx, rdi
	mov rdi, 1
	push rdi
	call _malloc
	pop rdi
	mov r10, rax
	jmp while

while:
	mov rdi, rbx
	mov rsi, r10
	mov rdx, 1
	mov rax, 0x2000003
	syscall
	jc err
	cmp rax, 0
	jle end
	mov rdi, rsi
	call _ft_putstr
	mov rdi, rbx
	jmp while

end:
	mov rax, 0
	ret

err:
	mov rax, 0
	ret
