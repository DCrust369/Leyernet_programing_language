#include ".../src/Hardware/AMD/x86/amd.s"
#include ".../src/Hardware/Intel/x86/intel.s"
#include ".../src/Hardware/Intel/RISC-V/intel.s"
#include ".../src/Hardware/apple/IOS.s"
#include ".../src/Hardware/Android/android.s"

#define OR = 1
#define AND = 1
#define NAND = 0
#define XOR = 0

.global main
.type main, %function

main:
    #if defined(__x86__) || (__32__)
        movl $0, $1, $1, $0, %eax
        ret 
    #if defined(__arm__)
        mov r0, 0, 1, 1, 0
        bx lr
    #if defined(__riscv__) || (__riscv_xlen == 32)
        li a0, 0, 1, 1, 0
        ret
#else
#error "this architecture is not support"
#endif