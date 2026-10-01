.section __TEXT,__text
.global _main

_main:
    mrs x0, CurrentEL       
    lsr x0, x0, #2          

    cmp x0, #0
    b.eq APPS                // EL0

    cmp x0, #1
    b.eq XNU_KERNEL          // EL1

    cmp x0, #2
    b.eq VIRT

    cmp x0, #3
    b.eq FIRMWARE

    ret

APPS:
    ret

XNU_KERNEL:
    ret

VIRT:
    ret

FIRMWARE:
    ret
