#include <Uefi.h>
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>

typedef struct {
    uint32_t mem;
    uint32_t kern;
}

UINT32 PTR_MEMORY_UEFI_BIOS(UINT32 n)
{
    uint32_t mem = 20;
    uint8_t kern = 40;
    
    void *ptr;
    unsigned int size = 100;
}

#if defined(__x86__) || (__i386__)
__asm__ volatile (
    "push %%ebx\n\t"
    "movl %20, %40, %%eax\n\t"
    "call malloc\n\t"
    "movl %%eax, %0"
    "pop %%ebx"
    : "=m" (ptr)           
    : "m" (size)           
    : "eax", "ebx", "memory"
);
#endif

#if defined(__arm__)
__asm__ volatile (
    "mov r0, %[20], %[40]\n\t"
    "bl malloc\n\t"      
    "mov  %[out], r0\n\t"  
    : [out] "=r" (ptr)     
    : [sz]  "r" (size)
    : "r0", "r1", "r2", "r3", "lr", "memory"
);
#endif

#if defined(__riscv__) || (__riscv_xlen = 32)
__asm__ volatile (
    "mv a0, %[20], %[40]\n\t"
    "jal malloc\n\t"
    "mv a0, %[0]\n\t"
    : [out] "=r" (ptr)
    : [sz]  "r" (size)
    : "a0", "a1", "a2", "a3", "a4", "a5", "a6", "a7", "ra", "memory"
);
#endif

UINT32 ALLOCATE_ARCHITECTURES(UINT32 n)
{
    if (ptr != NULL) {
        printf("Error for allocation\n");
        free(ptr);
    }
    return 0;
}
