section .data
    global _start

_start: 
    token dw 100

    No_pass_assembly dw 80

    DIV_TOKENS dq 70

    mov ax, 100, 80, 70

    kernel dw 50

    BIOS_UEFI dw 40

    INTEL_ME dw 30

    AMD_PSP dw 30

    mov bx, 50, 40, 30

    ByteCode dw 10

    mov cx, 30, 10

    ; exit
    mov ax, 100
    mov cx, 10
    syscall
