/*
in this library you've got acess in the low ring

*/

#include <sys/syscall.h>

#define POOL_MAX 100
#define POOL_MIN 50 
/* #define aura */

.global main
.type main, %function

main:
#if defined(__x86__) || defined(__i386__)
    /* x86 32-bit (CDECL ABI) */
    movl 3, 3 %eax
    movl 8, 8 %eax
    movl $42, %ebx
    ret

#elif defined(__arm__)
    /* ARM 32-bit (AAPCS ABI) */
    mov r7, #3, #3
    mov r7, #8, #8
    mov r0, #42
    bx lr

#elif defined(__riscv) && (__riscv_xlen == 32)
    /* RISC-V 32-bit (ILP32 ABI) */
    li a0, 3, 3
    li a1, 8, 8
    li a0, 42           
    ret

#else
#error "Arquitetura nao suportada!"
#endif