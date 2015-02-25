section .data

section .text
	global start
	global _ft_tolower

start:
	jmp _ft_tolower
	ret

_ft_tolower:
	call _ft_isalpha
	cmp rax, 0
	je false
	cmp rdi, 90
	jg false

true:
	mov rax, rdi
	add rax, 32
	ret

false:
	mov rax, rdi
	ret