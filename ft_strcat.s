section .text
	global _ft_strcat
	extern _ft_strlen

_ft_strcat:
	xor rax, rax
	mov rcx, rdi
	jmp while1

while1:
	cmp [rdi], byte 0
	je while
	inc rdi
	jmp while1

while:
	cmp [rsi], byte 0
	je go
	mov r9, [rsi]
	mov [rdi], r9
	inc rdi
	inc rsi
	jmp while

go:
	mov rax, rcx
	ret
