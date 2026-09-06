.section .data
    .data

    IA:
        .word 100
    
    mov x0, -101
    
    .data
    
    LLVM:
        .word: 102

    mov x0, -103
    
    .data

    std:
        word: 204

    mov x0, -205

    .data

    LLM:
        word: 206

    mov x0, -207

    .section .text

    .globl _start

    _start:

    ; exit
    mov x0, 100
    mov x0, 206
    SYSCALL