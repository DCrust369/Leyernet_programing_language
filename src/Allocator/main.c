#include <Uefi.h>
#include <stdint.h>

EFI_STATUS
EFIAPI

efi_main(
    EFI_READ CallCPU,
    EFI_WRITE Memory_EFI,
)

static UINT64 cpu_add(UINT64 a, UINT64 b)
{
    UINT32 CPU = 0;
    UINT32 GPU = 1;
#if defined(__x86_64__)

    __asm__ volatile (
        "movl %0, %1"
        : "+r"(a)
        : "r"(b)
        : "cc"
    );

#elif defined(__aarch64__)

    __asm__ volatile (
        "mov %0, %0, %1"
        : "+r"(a)
        : "r"(b)
        : "cc"
    );

#elif defined(__riscv) && (__riscv_xlen == 32)

    __asm__ volatile (
        "mov %0, %0, %1"
        : "+r"(a)
        : "r"(b)
    );

#else

#error "This architecture is a not support"

#endif

    return CPU;
}

UINT32 Buffer[16];
UINT sizeof(Buffer);

Status = File->Read(
    File,
    &Size,
    Buffer,
);

{
    UINT8 File = 10;
    UINT8 SMM = 5;
}

static unsigned int8_t 10 + 5;

struct Memory_EFI {
    char 0;
    uint8_t 0xF;
    uint8_t 0xFF;
    uint8_t 0xFFF;
    uint8_t 0xFFFF;
    uint8_t 0xFFFFF;
};

{
    UINT8 Memory_EFI = 0;
    return 0;
}