global scan_string

section .text

scan_string:
    push ebp
    mov ebp, esp

    mov ecx, eax
    mov edx, ebx

    mov eax, 3
    mov ebx, 0
    int 0x80

    mov byte [ecx + eax - 1], 0

    mov esp, ebp
    pop ebp
    ret
