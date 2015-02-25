section .data

section .text
    global start
    global _ft_toupper

start:
    jmp _ft_tolower
    ret

_ft_toupper:
    call _ft_isalpha
    cmp rax, 0
    je false
    cmp rdi, 97
    jl false

true:
    mov rax, rdi
    sub rax, 32
    ret

false:
    mov rax, rdi
    ret