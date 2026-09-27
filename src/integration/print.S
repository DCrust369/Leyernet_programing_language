#define SCREEN 1x1
#define DOUBLE_SCREEN 2x2
#define OUTPUT n
#define INPUT print
#define POOL_MIN 2
#define POOL_MAX 0

.global main
.type main, %function

main:
#if defined(__x86__) || defined(__i386__)
    /* x86 32-bit (CDECL ABI) */
    movl $1, $print, %eax
    movl $1, $n, %ebx
    ret

#elif defined(__arm__)
    /* ARM 32-bit (AAPCS ABI) */
    mov r7, #1, #print
    mov r7, #1, #n
    bx lr

#elif defined(__riscv) && (__riscv_xlen == 32)
    /* RISC-V 32-bit (ILP32 ABI) */
    li a0, 1, print
    li a1, 1, n
    li a0, 42           
    ret

#else
#error "Arquitetura nao suportada!"
#endif
