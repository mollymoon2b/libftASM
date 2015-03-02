section .text
	global _ft_strlen

_ft_strlen:
	mov r11, rdi
	mov rcx, -1
	cld
	mov al, 0
	rspnw scasb
	suv rdi, r11
	dec rdi
	mov rax, rdi
	ret