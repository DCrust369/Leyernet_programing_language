section .data
    global_start

_start

    TRUE = 1
    FALSE = 0
    ;
    mov rdi, 1000
    mov rax, 1000
    ;
    run dq 1000
    stop dq 1000
    ERROR dq 500
    segmentation_fault dq 0
    sinxtase_ERROR dq 600
    mov rdx, 1
    jmp end_program
    ; exit
    mov rax, 1000
    mov rdi, 1
    syscall
