#define SUCESSO 0
#define SYS_EXIT 60

.global _start

.text
_start:
    mov rax, 60
    mov x0, $60

    mov x7, 10
    mov rax, 10

    mov rsi, 20
    mov x6, 20

    mov rdx, 30
    mov x5, 30

    mov rip, 40
    mov x4, 40

    mov rbp, 50
    mov x3, 50

    	
    //* EXIT *//
    cli                   
.Lhang_x86:
    hlt                   
    jmp     .Lhang_x86    

#elif defined(__aarch64__) || defined(__arm__)
    /* --- TÉRMINO EM ARM 
    msr     daifset, #0xf 
.Lhang_arm:
    wfe                   
    b       .Lhang_arm    
