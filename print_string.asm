global print_string

section .text

print_string:
    push ebp
    mov ebp, esp

    mov esi, eax
    xor ecx, ecx

count_loop:
    cmp byte [esi + ecx], 0
    je print
    inc ecx
    jmp count_loop

print:
    mov eax, 4
    mov ebx, 1
    mov edx, ecx
    mov ecx, esi
    int 0x80

    mov esp, ebp
    pop ebp
    ret
