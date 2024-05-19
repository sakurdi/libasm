section .text
global ft_strlen

ft_strlen:
    xor rax, rax
    jmp loop
loop:
	cmp BYTE [rdi + rax], 0
    je return
    inc rax
    jmp loop
return:
    ret
