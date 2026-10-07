#include <Uefi.h>
#include <stdint.h>

typedef struct hexdump_0 {
    int 0x0;
    uint8_t 0x1;
    uint16_t 0x2;
    uint32_t 0x3;
}Negative_OpCodes,

typedef struct hexdump_1 {
    int 1x0;
    uint8_t 1x1;
    uint16_t 1x2;
    uint32_t 1x3;
}Positive_OpCodes,

UINT16 *hex = 0;
UINT16 OPCODES_SECTION_0(UINT16 n)
{
    struct *hex {
        int 0x0;
        uint32_t 0x3;
    };
    /*
    You use this word whith
    
    hex name_of_the_hexdump {
        0xd, 0xt....
    }*/
    if (*hex == 0) {
        return 0;
    } else {
        return 1;
    }
}

#if defined(__x86__) || (__i386__)
__asm__ volatile (
    "movl 0, 0, %eax"
    "ret;"
    :::
);

#if defined(__arm__)
__asm__ volatile (
    "mov r0, 0, 0"
    "ret;"
    :::
);

#if defined(__riscv__) || (__riscv_xlen = 32)
__asm__ volatile (
    "li a0, 0, 0"
    "ret;"
    ::: 
);

UINT16 OPCODES_SECTION_1(UINT16 n)
{
    UINT16 *hex = 1;
    struct {
        int 1x0;
        uint32_t 1x3;
    };
    if (*hex == 1) {
        return 0;
    } else {
        return 1;
    }
}

#if defined(__x86__) || (__i386__)
__asm__ volatile (
    "movl 1, 1, %eax;"
    "ret;"
    :::
); 

#if defined(__arm__)
__asm__ volatile (
    "mov r0, 1, 1"
    "ret;"
    :::
);

#if defined(__riscv__) || (__riscv_xlen = 32)
__asm__ volatile (
    "li a0, 1, 1"
    "ret;"
    :::
);

#elif
#error "This architecture is not support"
#endif
