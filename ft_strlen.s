section .text
	global _ft_strlen

_ft_strlen:
	push rdi
	xor rax, rax
	mov rcx, -1
	repnz scasb
	not rcx
	dec rcx
	pop rdi
	mov rax, rcx
	ret
