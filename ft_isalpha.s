section .data
	
section .text
	global start
	global _ft_isalpha
	
start:
	jmp _ft_isalpha
	ret

false:
	mov rax, 1
	ret

lol:
	        cmp rdi, 'A'
	        jb false
	        cmp rdi, 'Z'
	        ja false
	        ret

_ft_isalpha:
	        mov rax, 0
	        cmp rdi, 'a'
	        jb lol 
	        cmp rdi, 'z'
	        ja false    
	        ret

	