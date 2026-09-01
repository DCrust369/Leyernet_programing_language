.syntax unified
.thumb
.text

.global _start

_start:
    Token:
        .hword 100:

    No_pass_Assembly:
        .hword 80:

    DIV_TOKENS:
        .hword 70:

    movs r0, #100, #80,  #70

    Kernel:
        .hword 50:

    BIOS_UEFI:
        .hword 40:

    INTEL_ME:
        .hword 30:

    AMD_PSP:
        .hword 30:

    movs r1, #50, #40, #30

    ByteCode:
        .hword 10:
    movs r3, #30, #10
    ; exit
    movs r0, 100
    movs r1, 10
    syscall
