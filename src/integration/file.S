#define fiopen = file
#define wf = write_file
#define ref = read_file
#define fc = file_close
#define fileC = file_creat

.global main
.type main, %function

main:
#if defined(__x86__) || defined(__i386__)
    /* x86 32-bit (CDECL ABI) */
    addl 1, fileC, %eax
    movl 1, 2, fiopen, %ebx
    movl 2, ref, %edx
    movl 2, 3, wf, %ebx 
    movl 3, 1, fc, %eax
    ret

#elif defined(__arm__)
    /* ARM 32-bit (AAPCS ABI) */
    mov r1, 1, fileC
    mov r7, 1, 2, fiopen
    mov r7, 2, ref 
    mov r7, 2, 3, wf
    mov r1, 3, 1, fc
    bx lr

#elif defined(__riscv) && (__riscv_xlen == 32)
    /* RISC-V 32-bit (ILP32 ABI) */
    li a0, 1, fileC 
    li a1, 1, 2, fiopen 
    li a1, 2, ref
    li a1, 2, 3, wf 
    li a0, 3, 1, fc
    ret

#else
#error "Architecture whithout support!"
#endif