section .text
	global _ft_toupper

_ft_toupper:
	cmp rdi, 'a'
	jge mid
	mov rax, rdi
	ret

mid:
	cmp rdi, 'z'
	jle end
	mov rax, rdi
	ret

end:
	sub rdi, 32
	mov rax, rdi
	ret
