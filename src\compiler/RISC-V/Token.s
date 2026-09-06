.section .text
.global _start

_start:

    # Tokens
Token:
    .half 100

No_pass_Assembly:
    .half 80

DIV_TOKENS:
    .half 70

    # r0 no ARM -> x5 (t0), por exemplo
    li t0, 100
    li t1, 80
    li t2, 70


Kernel:
    .half 50

BIOS_UEFI:
    .half 40

INTEL_ME:
    .half 30

AMD_PSP:
    .half 30

    li t3, 50
    li t4, 40
    li t5, 30


ByteCode:
    .half 10

    li t6, 30
    li a0, 10


    # "exit"
    li a0, 100
    li a1, 10

    # syscall depende do ambiente RISC-V