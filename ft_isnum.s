section .data
	
section .text
	global start
	global _ft_isnum
	
start:
	jmp _ft_isnum
	ret

false:
	mov rax, 1
	ret

_ft_isnum:
	mov rax, 0
	cmp rdi, '0' ; cmp 'a' - rdi = -2
	jb false ; if 'a' - rdi = -2 go to false else nothing
	cmp rdi, '9' ; cmp 'z' - rdi
	ja false ; if 'z' - rdi =  go to false else nothing
	ret
