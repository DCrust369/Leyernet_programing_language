bits 16
org 0x7c00            

section .data
    compilation    dw 10
    OpCode         dw 0
    ASSEMBLY       dw 2
    source         dw 100

section .text
global _start

_start:
    cli               
    xor ax, ax
    mov ds, ax
    mov es, ax
    mov ss, ax
    mov sp, 0x7c00      
    sti         
    mov ax, [source]    
    mov bx, 20     

    ; Operação simples de exemplo
    add ax, bx          
halt_loop:
    hlt             
    jmp halt_loop       