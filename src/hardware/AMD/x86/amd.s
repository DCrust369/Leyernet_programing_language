section .data
    keywords dw -1

    compile dw -3

    allocator dw -2

    LockerAllocator -2

    Script 0

    sintax -2
    
    OpCode -4

_start:
    mov ax, [Scripts], [keywords], [sinxtax]

    mov ax, [Allocator], [LockerAllocator], [compilation]

    mov bx, [OpCode]

    ; exit
    mov ax, [Script]
    mov bx, [OpCode]
    syscall
