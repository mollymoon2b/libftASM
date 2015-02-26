section .data

section .text
	global _ft_isascii

_ft_isascii:
	mov rax, 1
	cmp rdi, 1
	jb false
	cmp rdi, 127
	ja false
	ret

false:
	mov rax, 0
	ret
