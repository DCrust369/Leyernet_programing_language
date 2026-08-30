;****************************************************************************
;                                                                           *
;                Leyernet Compiler                                          *
;    this is a compiler i write in asssembly and assembly-inline            *
;                                                                           *
;    assembly: low level control                                            *
;                                                                           *
;    odin asm-inline: easy control                                          *
;                                                                           *
;    zig asm-inline: second control                                         *
;                                                                           *
;    C assembly-inline: for compatile                                       *
;                                                                           *
;    Rust assembly-inline: library for rust interact for assembly           *
;                                                                           *
;                   apache LICENSE crat by DCrust                           *
;                             06/07/2026                                    *
; ***************************************************************************
section .data
    global _start

_start
    read_keywords dq 100000
    file dq 100000 ; 100.000
    ;
    file_acess dq 10000
    low_level dq 10000
    ;
    file_other_acess dq 1000
    memory_leyernet_tech dq 1000
    ; exit
    mov rax, 100000
    mov rdi, 0
    syscall
