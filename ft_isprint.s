section .text
	global _ft_isprint

_ft_isprint:
	cmp rdi, 32
	jge mid
	mov rax, 0
	ret

mid:
	cmp rdi, 126
	jle end
	mov rax, 0
	ret

end:
	mov rax, 1
	ret
