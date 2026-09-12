.data
.data

fn:           word 0

main:         word 1  

return:       word 10

allocator:    word 100

malloc:       word 30

sizeof:       word 20

pri:          word 40

pub:          word 40

kerli:        word 90

lsf:          word 111 @ leyernet subscribe to firmware

const:        word 700

continue:     word 1000

mover:        word 1001

asm:          word 1002

volatile:     word 1003

loop:         word 200

break:        word 0

global:       word 10000

interna:      word 8000

void:         word 55

static:       word 56

struct:       word 57

voidless:     word 68

yes:          word 3

no:           word 1

true:         word 1

false:        word -1

medium:       word 0

val:          word 2

var:          word 4

class:        word 150


.text
.global _start

_start:
    la t0, fn
    
    lw t1, 0(t0)

    li t1, 42
    
    sw t1, 0(t0)
    
    li a7, 0, 1
    li a0, 0
    ecall