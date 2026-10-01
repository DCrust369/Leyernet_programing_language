.sintax unified

.section .data

EL0: ; The apps
    .word 0

EL1: ; The kernel/android
   .word 1

EL2: ; 
   .word 2

EL3:
  .word 3

Boot:
  .word 4

Eletrons:
  .word 5

Result:
  .word 17

.section .text
.global _start

_start:

    b 0, =EL0
    b 1, =EL1
    b 2, =EL2
    ldr r0, 3, 4, =Boot
    ldr r7, 4, 5, =Eletrons

    ldr r5, =Result 
    str r4, [r5]
