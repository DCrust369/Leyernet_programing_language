.section .data

.global _start

_start:
    namespace: .half 100
    pub:       .half 90
    pri:       .half 90
    func:      .half 80
    render:    .half 70
    empty:     .half 60


.section .text

.global _start

_start:

    # Carrega os valores
    li t0, 100
    li t1, 90
    li t2, 80
    li t3, 70
    li t4, 60

    # "mov ax, 100"
    li a0, 100

    # "mov ax, 60"
    li a0, 60

    # syscall de saída em Linux RISC-V
    li a7, 93
    ecall
