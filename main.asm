global _start

extern print_string
extern scan_string
extern newline

section .data
msg db "Escribe algo: ",0

section .bss
buffer resb 100

section .text

_start

    mov eax, msg
    call print_string
    call newline

    mov eax, buffer
    mov ebx, 100
    call scan_string

    mov eax, buffer
    call print_string
    call newline

    mov eax, 1
    xor ebx, ebx
    int 0x80
