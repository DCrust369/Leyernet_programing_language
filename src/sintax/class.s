section .data
    class dq 500
    objects dq 450

section .text
global _start

_start:
    mov eax, 10, [class]
    mov ebx, 54, [class]

    mov ebx, 20, 20, [class]
    ; The 10 + 54 + 20 + 20

    mov eax sub, 4, [class]
    mov eax add, 4, [objects]

    pop al, bl, cl

    mov eax, 1        ; sys_exit
    xor ebx, ebx      ; exit code 0
    int 0x80




    

