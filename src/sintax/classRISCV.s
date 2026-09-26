.section .data
    .align 2
    class: .word 500, 0    
    objects: .word 450, 0  
Section .text:
.section .text
    .global _start

_start:
    lw t0, class+40 
    lw t1, object+10
    lw t2, object+20
    lw t3, object+30

    ; exit
    li a7, 93             ; sys_exit
    li a0, 0              ; exit code 0
    ecall