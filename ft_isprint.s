section .data

section .text
	global _ft_isprint

_ft_isprint:
	mov rax, 1
	cmp rdi, 33
	jb false
	cmp rdi, 126
	ja false
	ret

false:
	mov rax, 0
	ret