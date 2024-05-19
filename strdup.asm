section .text
global ft_strdup

extern malloc

ft_strdup:
    xor rax, rax
    jmp get_len

get_len:
	cmp BYTE [rdi + rax], 0
    je get_buffer
    inc rax
    jmp get_len

get_buffer:
    inc rax
    push rdi
    mov rdi, rax
    call malloc
    cmp rax, 0
    je error
    pop rdi
    xor rcx, rcx
    jmp cpy

cpy:
    cmp BYTE [rdi + rcx], 0
    je return
    mov dl, BYTE [rdi + rcx]
    mov BYTE [rax + rcx], dl
    inc rcx
    jmp cpy

return:
    mov BYTE [rax + rcx], 0
    ret
error:
    ret

