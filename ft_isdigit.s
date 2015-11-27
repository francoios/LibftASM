section .text
	global _ft_isdigit

_ft_isdigit:
	cmp rdi, '0'
	jge mid
	mov rax, 0
	ret

mid:
	cmp rdi, '9'
	jle end
	mov rax, 0
	ret

end:
	mov rax, 1
	ret
