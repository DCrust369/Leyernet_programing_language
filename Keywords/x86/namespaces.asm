section .data
    global _start

_start: 
    namespace dw 100

    pub dw 90

    pri dw 90

    func dw 80

    render dw 70

    {} dw 60

    mov ax 100, 90, 80, 70, 60

    ; exit
    mov ax, 100
    mov ax, 60
    syscall