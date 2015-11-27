section .text
	global _ft_isalnum

_ft_isalnum:
	cmp rdi, 'a'
	jge mid3
	cmp rdi, 'A'
	jge mid
	cmp rdi, '0'
	jge mid2
	mov rax, 0
	ret
mid:
	cmp rdi, 'Z'
	jle end1
	mov rax, 0
	ret
mid2:
	cmp rdi, '9'
	jle end1
	mov rax, 0
	ret
mid3:
	cmp rdi, 'z'
	jle end1
	mov rax, 0
	ret
end1:
	mov rax, 1
	ret
