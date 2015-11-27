section .text
	global _ft_isascii

_ft_isascii:
	cmp rdi, 0
	jge mid
	mov rax, 0
	ret
mid:
	cmp rdi, 127
	jle end1
	mov rax, 0
	ret
end1:
	mov rax, 1
	ret
