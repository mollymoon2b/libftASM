section .data

section .text
    global start
    global _ft_isalnum

start:
    jmp _ft_isalnum
    ret

false:
    mov rax, 1
    ret

mdr:
	cmp rdi, '0'
	jb false
	cmp rdi, '9'
	ja false
	ret
	
lol:
    cmp rdi, 'A'
    jb mdr
    cmp rdi, 'Z'
    ja false
    ret

_ft_isalnum:
    mov rax, 0
    cmp rdi, 'a'
	jb lol 				
    cmp rdi, 'z' 		
    ja false
	ret








