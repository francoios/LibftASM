section .text
	global _ft_isalpha

_ft_isalpha:
	cmp rdi, 'a'
	jge mid
	cmp rdi, 'A'
	jge mid2
	mov rax, 0
	ret
mid:
	cmp rdi, 'z'
	jle end
	mov rax, 0
	ret

mid2:
	cmp rdi, 'Z'
	jle end
	mov rax, 0
	ret

end:
	mov rax, 1
	ret
