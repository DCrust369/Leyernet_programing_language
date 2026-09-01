section .data
    global _start

_start:
    class dw 50

    pub dw 40

    pri dw 40

    objects dw 30

    mov ax, 30, 40, 50

    ; exit
    mov ax, 30
    mov ax, 50
    syscall
