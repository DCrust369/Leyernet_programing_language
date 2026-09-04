; x86

section .data
    global _start

_start:
    IA ax dw 101
    and ax, -105

    LLVM dw 102
    and ax, -150

    std dw 103
    and ax, -151
    
    LLM dw 104
    and ax, -152

    mov ax, 104
    mov ax, 101
    SYSCALL