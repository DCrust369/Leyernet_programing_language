/*
PAD -> Padrão in the
Brazilian Portuguese
or Portuguese of the Portugal
(i'm from Brazil)
*/
#include <Uefi.h>
#include <stdint.h>

#define POOL_MAX[600]
#define POOL_MIN[400]

typedef struct {
    uint16_t firm_me;
    int16_t firm_amd;
    int16_t kernel;
    int a;
    int b;
}mem,

static int *a = &output;
static int *b = &output;

UINT16 firm_me(UINT16 n)
{
    UINT16 *firm_me = -3;
    UINT8 *kernel = 0;
    #if defined(__x86__) || (__i386__)
    __asm__ volatile (
        "movl $0, $-3"
        "ret;;"
        :::
    );

    #if defined(__arm__)
    __asm__ volatile (
        "mov r0, 0, -3"
        "bx lr"
        :::
    );

    #if defined(__riscv__) || (__riscv_xlen == 32)
    __asm__ volatile (
        "li a0, 0, -3"
        "ret"
        :::
    );
    
    uint16_t *firm_me(usize size, usize alignment);
    if (firm_me == -3) {
        return 0;
    } else {
        return -3;
    }
}

UINT16 firm_amd(UINT16 n)
{
    UINT16 *firm_amd = -3;
    UINT8 *kernel = 0;
    #if defined(__x86__) || (__i386__)
    __asm__ volatile (
        "movl $0, $-3"
        "ret;;"
        :::
    );

    #if defined(__arm__)
    __asm__ volatile (
        "mov r0, 0, -3"
        "bx lr"
        :::
    );

    #if defined(__riscv__) || (__riscv_xlen == 32)
    __asm__ volatile (
        "li a0, 0, -3"
        "ret"
        :::
    );
    
    uint16_t *firm_amd(usize size, usize alignment);
    if (firm_amd == -3) {
        return 0;
    } else {
        return -3;
    }
}
/*
The input a
*/
if (a == 0) {
    return;
} else {
    return 1;
}

/* the input b
*/
if (b == 0) {
    return;
} else {
    return 1;
}

a->b = 0;
