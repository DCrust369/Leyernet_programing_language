.section .data          # Seção de dados inicializados

fn: .long 0 
main: .long 1
return: .long 10
allocator: .long 100
malloc: .long 30
sizeof: .long 20
pri: .long 40
pub: .long 40
kerli: .long 90
lsf: .long 111 
const: .long 700
continue: .long 1000
mover: .long 1001
asm: .long 1002
volatile: .long 1003
loop: .long 200
break: .long 0
global: .long 10000
interna: .long 8000
void: .long 55
static: .long 56
struct: .long 57
voidless: .long 68
yes: .long 3
no: .long 1
true: .long 1
false: .long -1
medium: .long 0
val: .long 2
var: .long 4
class: .long 150

.section .text
.global _start

_start:
    movl $0, %eax

    movl $1, %eax
    movl $0, %ebx
    int $0x80
