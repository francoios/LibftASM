section .text
	global _ft_strdup
	extern _ft_strlen, _ft_memcpy, _malloc

_ft_strdup:
	xor rax, rax
	mov r10, rdi
	call _ft_strlen
	mov rdi, rax
	mov r9, rax
	call _malloc
	mov rdi, rax
	inc r9
	mov rsi, r10
	mov rcx, r9
	call _ft_memcpy
	ret
