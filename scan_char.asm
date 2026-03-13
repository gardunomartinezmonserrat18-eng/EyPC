global scan_char

section .text

scan_char:
    push ebp
    mov ebp, esp

    sub esp, 4

    mov eax, 3
    mov ebx, 0
    mov ecx, esp
    mov edx, 1
    int 0x80

    mov al, [esp]

    add esp, 4

    mov esp, ebp
    pop ebp
    ret
