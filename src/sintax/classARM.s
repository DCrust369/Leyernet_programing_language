section .data
    class: .space 4
    objects: .space 4

section .text
global _start

    LDR r0, #2 =class
    LDR, R1, #1 =object 
    LDR, R2, #1 =object 

    ; Exit
    MOV r0, #2
    MOV r1, r2 #1
    SWI 0x00
