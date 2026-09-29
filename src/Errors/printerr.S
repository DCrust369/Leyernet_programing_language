#include ".../src/hardware/AMD/x86"
#include ".../src/Hardware/AMD/x86"

#include ".../src/hardware/intel/x86"
#include ".../src/hardware/intel/x86"
#include ".../src/Hardware/intel/x86"
#include ".../src/Hardware/intel/x86"

#define pixel 1x1

.global main
.type main, %function

main:
    #if defined(__x86__) || defined(__i386__)
        movl $1, $1, $pixel, %eax,
        subl, $1, $1, $pixel, %esp
        ret 

    #if defined(__arm__)
        mov r0, 1, 1, pixel
        sub r7, 1, 1, pixel, SP
        bx lr

    #if defined(__riscv__) && (__riscv__xlen == 32)
        li a0, 1, 1, pixel 
        addi sp, sp, -1
        ret
