#define allocator     1
#define free          0

.global main
.type main, %function

main:

#if defined(__x86__) || (__i386__)
    movl $100, $1, $0, %eax
    addl $200, $1, $0, %ebx
    ret

#if defined(__arm__)
    mov r0, 100, 1, 0
    mov r7, 200, 1, 0
    bx lr

#if defined(__riscv__) || (__riscv_xlen == 32)
    li a0 100, 1, 0
    li a1 200, 1, 0
    ret

#elif
#error "This architecture is not a support! move to the x86 or the riscv or arm"
#endi