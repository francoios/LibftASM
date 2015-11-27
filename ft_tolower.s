section .text
	global _ft_tolower

_ft_tolower:
	cmp rdi, 'A'
	jge mid
	mov rax, rdi
	ret

mid:
	cmp rdi, 'Z'
	jle end
	mov rax, rdi
	ret

end:
	add rdi, 32
	mov rax, rdi
	ret
