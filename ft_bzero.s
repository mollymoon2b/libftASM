section .data

section .text
	global _ft_bzero

_ft_bzero:
	push rdi
	push rsi

while:
	cmp rdi, 0
	je ret
	mov byte rsi, 0
	inc rdi
 	dec rsi
 	ret

 return:
 	pop rdi
 	pop rsi
 	ret
