section .data

	section .text
	global start
	global _ft_isascii

start:
	jmp _ft_isascii
	ret

false:
	mov rax, 1
	ret

_ft_isascii:
	mov rax, 0
	cmp rdi, 0
	jb false
	cmp rdi, 127
	ja false
	ret