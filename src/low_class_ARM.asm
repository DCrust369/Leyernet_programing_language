section .data
    global _start

_start:
    class:
        .hword 50:

    pub:
        .hword 40:

    pri:
        .hword 40:

    objects:
        .hword 30:

    movs r0, #30, #40, #50

    ; exit
    movs r0, #50
    movs r0, #30
    syscall
