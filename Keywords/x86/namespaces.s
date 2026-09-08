section .data

; namespace
namespace:
    dw 100

; public
global pub
pub:
    dw 90

; private
pri:
    dw 90

; function
func:
    dw 80

; render
render:
    dw 70

; {}
anonymous:
    dw 60


section .text

global _start

_start:

    ; namespace / pub / pri / func / render / {}
    mov bx, namespace
    mov cx, pub
    mov dx, func
    mov si, render
    mov di, anonymous

    ; equivalente conceitual ao:
    ; mov ax, 100, 90, 80, 70, 60

    mov ax, [bx]        ; ax = 100
    mov cx, [cx]        ; cx = 90
    mov dx, [dx]        ; dx = 80
    mov si, [si]        ; si = 70
    mov di, [di]        ; di = 60

    ; exit
    mov ax, 4C00h
    int 21h
