section .data
    global_start

start
    ;******************************;
    ;        19/07/2026           *;
    ;   The define compiler       *;
    ;     LICENSE apache          *;
    ;   devloped by DCrust        *;
    ;******************************;
    mov rbx, 500
    mov rbx, 500
    ;
    mov rax, 10, 20
    mov rax, 20, 30
    mov rax, 30, 40
    mov rax, 40, 50
    mov rax, 50, 60
    mov rax, 70, 80, 90, 100
    mov rdx, 100
    start dq 100
    compile_real dq 100
    ; **************************************************|
    ; This compiler speak whith a archive              *|
    ; this archive have a binary this binary           *|
    ; run code                                         **\
    ; before a compilator time of a BIOS or UEFI       * *|
    ; my programing language it's start before BIOS/UEFI *|
    ; ****************************************************|
    before.bin dq 900 ; before BIOS it's a mega rootkit it's not malware but have a traduction
    ; exit
    mov rdi, 1000
    mov rax, 0
    syscall
