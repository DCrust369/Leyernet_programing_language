section .text

global _start

_start:


    mov ax, 50         
    mov bx, 40        
    mov cx, 50   
    mov dx, 40      

    mov ax, cx
    imul dx             

    mov ax, 90



    mov dx, message      
    mov ah, 09h         
    int 21h


    mov ah, 01h          
    int 21h


    mov ax, 4C00h        
    int 21h


section .data

message:
    db 'l e y e r n e t', '$'
