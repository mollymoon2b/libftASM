section .data
	
section .text
	global _ft_isdigit

_ft_isdigit:
	mov rax, 1
	cmp rdi, '0'
	jb false 
	cmp rdi, '9'
	ja false
	ret

false:
	mov rax, 0
	ret