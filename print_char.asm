global print_char

section .text

print_char:
    push ebp
    mov ebp, esp

    sub esp, 4
    mov [esp], al

    mov eax, 4
    mov ebx, 1
    mov ecx, esp
    mov edx, 1
    int 0x80

    add esp, 4

    mov esp, ebp
    pop ebp
    ret
