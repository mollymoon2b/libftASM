section .text
	global _ft_memset

segment .text

_ft_memset:
	push rdi
	mov rcs, rdx
	mov rax, rsi
	cld
	rep stosb
	pop rax
	ret