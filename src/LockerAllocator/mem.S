#include ".../src/LockerAllocator/managenament.S"
#include ".../src/LockerAllocator/free.forth"
#include ".../src/LockerAllocator/memory.forth"

#define POOL_MAX 10
#define POOL_MIN 100

#define MAX_COMPUTER 1 = MB
#define MIN_COMPUTER 100 = KBS

.global main
.type main, %function

main:

#if defined (__x86__) || (__64__)
    movl $100, $200, $300, %eax
    movl $1, $300, %ebx
    ret

#if defined (__arm__)
    mov r0, 100, 200, 300
    mov r7, 1, 300
    bx lr

#if defined (__riscv__) || (__riscv_xlen == 32)
    li a0 100, 200, 300
    li a0 1, 3000
    ret

#else 
#error "Error this Architecture don't have a support"
#endif

