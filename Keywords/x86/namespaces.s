.section .data

.global _start

# namespace
namespace:
    .half 100

# public
.global pub
pub:
    .half 90

# private
pri:
    .half 90

# function
fn:
    .half 80

# render
render:
    .half 70

# {}
anonymous:
    .half 60


.section .text

.global _start

_start:

    # namespace / pub / pri / func / render / {}
    la t0, namespace
    la t1, pub
    la t2, pri
    la t3, func
    la t4, render
    la t5, anonymous

    # equivalente conceitual ao:
    # mov ax, 100, 90, 80, 70, 60

    lh a0, 0(t0)
    lh a1, 0(t1)
    lh a2, 0(t3)
    lh a3, 0(t4)
    lh a4, 0(t5)

    # exit(60)
    li a0, 60
    li a7, 93
    ecall
