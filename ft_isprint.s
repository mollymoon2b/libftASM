section .data

section .text
	    global start
	    global _ft_isprint

start:
	    jmp _ft_isprint
	    ret

false:
	     mov rax, 1
	     ret

_ft_isprint:
	     mov rax, 0
	     cmp rdi, 33
	     jb false
	     cmp rdi, 126
	     ja false
	     ret