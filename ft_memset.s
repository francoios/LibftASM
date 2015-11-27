section .text
	global _ft_memset

_ft_memset:
	xor rax, rax
	mov rax, rsi
	mov rcx, rdx
	rep stosb
	mov rax, rdi
	ret
