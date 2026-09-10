.section .data
.align 1
compilation: .hword 10
OpCode:      .hword 0
ASSEMBLY:    .hword 2
source:      .hword 100

.section .text
.global _start

_start:
    ldr r0, =source
    ldrh r1, [r0]
    mov r2, #20

    add r1, r1, r2

halt_loop:
    wfi
    b halt_loop