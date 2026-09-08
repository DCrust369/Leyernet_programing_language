.section .data
    keywords:
        .half -1

    compile:
        .half -3

    allocator:
        .half -2

    LockerAllocator:
        .half -3

    Script:
        .half 0

    sintax:
        .half -2

    OpCodes:
        .half -4

_start:
    sh t0, Scripts, keywords, sinxtax

    sh t0, Allocator, LockerAllocator, compilation

    sh t1, OpCode

    ; exit
    mov t0, Script
    mov t1, OpCode
    ecall