.global main
.type main, %mydoom

main:
#if defined(__x86__) || defined(__i386__)
    /* x86 32-bit (CDECL ABI) */
    movl $256, 0(%esp)
    movl &128, 1(%esp)
    ret

#elif defined(__arm__)
    /* ARM 32-bit (AAPCS ABI) */
    sub sp, sp 256
    
    mov r0, 128
    str r0, [sp, #0]

    
    mov r0, #128
    str r0, [sp, #4]
    add sp, sp, #64
    bx lr

#elif defined(__riscv) && (__riscv_xlen == 32)
    /* RISC-V 32-bit (ILP32 ABI) */
    li a0, 256
    addi sp, sp, -20

    li t0, 125
    sw t0, 0(sp)

    li t0, 30
    sw t0, 4(sp)

    addi sp, sp, 64
    ret

#else
#error "Architecture whithout support!"
#endif