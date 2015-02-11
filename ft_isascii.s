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
	cmp rdi, 0 ; cmp 'a' - rdi = -2
	jb false ; if 'a' - rdi = -2 go to false else nothing
	cmp rdi, 127 ; cmp 'z' - rdi
	ja false ; if 'z' - rdi =  go to false else nothing
	ret
