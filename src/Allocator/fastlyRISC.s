.section .text
.global _start

_start:
    la t0, source
    lh t1, 0(t0)
    li t2, 20

    add t1, t1, t2

halt_loop:
    wfi
    j halt_loop

.section .data
.align 1
compilation: .half 10
OpCode:      .half 0
ASSEMBLY:    .half 2
source:      .half 100