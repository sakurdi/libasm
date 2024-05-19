section .text

global ft_strcmp

ft_strcmp:
    xor rax, rax
    xor rdx, rdx
    xor rcx, rcx
    jmp compare
compare:
    movsx eax, BYTE [rdi + rcx]
    cmp al, 0
    je ret
    movsx edx, BYTE [rsi + rcx]
    cmp dl, 0
    je ret
    cmp dl, BYTE [rdi + rcx]
    jne ret
    inc rcx
    jmp compare
ret:
    movsx edx, BYTE [rsi + rcx]
    sub eax, edx
    ret
