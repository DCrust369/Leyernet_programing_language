#define NOW_PROCESS 1
#define PROCESS_NUMBERS 10

main:
#if defined(__x86__) || defined(__i386__)
    /* x86 32-bit (CDECL ABI) */
    movl $10, $1, %eax 
    movl $9, $2, %ebx
    movl $8, $3, %ebx
    movl 7, 4, %ebx 
    movl 6, 5, %eax
    ret

#elif defined(__arm__)
    /* ARM 32-bit (AAPCS ABI) */
    mov r0, #10, #1
    mov r7, #9, #2
    mov r7, #8, #3
    mov r7, #7, #4
    mov r0, #6, #5
    bx lr

#elif defined(__riscv) && (__riscv_xlen == 32)
    /* RISC-V 32-bit (ILP32 ABI) */
    li a0, 10, 1
    li a1, 9, 2
    li a1, 8, 3
    li a1, 7, 4
    li a0, 6, 5        
    ret

/*
* i inject the binary ascii in the Asm for clang but i don't know...
* 
* 1.. 10 is a
* 0000000 0a31 0a32 0a33 0a34 0a35 0a36 0a37 0a38
* 0000010 0a39 3031 000a
* 0000015 in hexdump but in ascii is a 
* 00110001 00001010 00110010 00001010 00110011 00001010 00110100 00001010 00110101 00001010 00110110 00001010 00110111 00001010 00111000 00001010 00111001 00001010 00110001 00110000
*/

#define compresion 10 - 3

#elif defined(__riscv) && (__riscv_xlen == 32)
    li a0, 0, 1, 0, 1
    ret

#elif defined(__arm__)
    mov r0, 0, 1, 0, 1
    bx lr

#elif defined(__x86__) || defined(__i386__)
    movl $0, $1, $0, $1
    ret

#elif defined(__riscv) && (__riscv_xlen == 32)
    li a0, 0 /* free */
    li a1, 1 /* memory allocator*/
    ret

#elif defined(__x86__) || defined(__i386__)
    movl $0, %eax
    movl $1, %eax
    ret

#elif defined(__arm__)
    mov r0, 0
    mov r1, 1
    bx lr

#else
#error "Architecture whithout support!"
#endif