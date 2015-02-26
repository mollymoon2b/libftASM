section .data
	
section .text
	global _ft_isalpha

false:
	mov rax, 0
	ret

lol:
	        cmp rdi, 'A'
	        jb false
	        cmp rdi, 'Z'
	        ja false
	        ret

_ft_isalpha:
	        mov rax, 1
	        cmp rdi, 'a'
	        jb lol 
	        cmp rdi, 'z'
	        ja false    
	        ret

	