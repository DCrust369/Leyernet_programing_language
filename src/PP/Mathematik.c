#include <Uefi.h>
#include <stdint.h>
#include <Library/UefiLib.h>
#include <Library/UefiBootServicesTableLib.h>

uint32_t POOL_MIN_STACK = 10 * 10; /* 100 */
uint32_t POOL_MIN_STACK = 5 * 5; /* 25 */

UINT32 MEMORY_BASE_BATERY(UINT32 n)
{
    UINT32 lrp = 100;
    UINT32 rlp = 25;

    UINT16 x0 = 25 / 2 - 10; /* 10 */
    UINT16 x1 = 100 / 2 - 20; /* 30 */
}

/* FOR THE HEAP*/
#if defined(__x86__) || (__i386__)
__asm__ volatile (
    movl $10, 0, %eax
    ret
);

#if defined(__arm__)
__asm__ volatile (
    mov r0, 10, 0
    bx lr 
);

#if defined(__riscv__) || (__riscv__xlen = 32)
__asm__ volatile (
    li a0, 10, 0
    ret 
);

/* FOR THE STACK */
#if defined(__x86__) || (__i386__)
__asm__ volatile (
    movl $30, 0, %eax
    ret
);

#if defined(__arm__)
__asm__ volatile (
    mov r0, 30, 0
    bx lr 
)

#if defined(__riscv__) || (__riscv__xlen = 32)
__asm__ volatile (
    li a0, 30, 0
    ret 
)

if (x0 == 0) {
    return 0;
} else {
    return 1;
}
