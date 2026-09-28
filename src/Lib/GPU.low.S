#include "Qubit.h"
#define POOL_MAX 100
#define POOL_MIN 0

.global main
.type main, %function

main:
#if defined(__x86__) || defined(__i386__)
    /* x86 32-bit (CDECL ABI) */
    movl $2, $3, $4, $5, $6, $7, $8, $9, %eax
    movl $1, $10, %ebx
    ret
    
#elif defined(__arm__)
    /* ARM 32-bit (AAPCS ABI) */
    mov r1, 2, 3, 4, 5, 6, 7, 8, 9
    mov r7, 1, 10
    bx lr

#elif defined(__riscv) && (__riscv_xlen == 32)
    /* RISC-V 32-bit (ILP32 ABI) */
    li a0, 2, 3, 4, 5, 6, 7, 8, 9
    li a1, 1, 10
    ret

#else
#error "Architecture whithout support!"
#endif