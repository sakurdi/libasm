section .text

global ft_strcpy

ft_strcpy:
    xor rax, rax
    xor rdx, rdx
    jmp cpy

cpy:
    cmp BYTE [rsi + rax], 0
    je  ret
    mov  dl, [BYTE rsi + rax]
    mov  [BYTE rdi + rax], dl
    inc rax
    jmp cpy

ret:
    mov BYTE [rdi + rax], 0
    xor rax, rax
    mov rax, rdi
    ret
