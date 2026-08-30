section .text
    global _start

_start:

    ; Criação de uma abordagem para a linguagem de programação Leyernet para o kernel VortexShield
    mov rax, 50 ; Número de atribuição para o CPU
    mov rbx, 40 ; Número para o GPU
    mov rcx, 50 ; Valor de multiplicação para 50
    mov rdx, 40 ; Valor de multiplicação para 40
    imul rcx, rdx ; Multiplicação de 50 e 40
    mov rax, 90 ; Resultado em 90

    ; Impressão da mensagem
    mov rsi, message ; Endereço da mensagem
    mov rdx, 17 ; Tamanho da mensagem
    mov rax, 1 ; Chamada do sistema para imprimir
    mov rdi, 1 ; Descrição do arquivo (imprimir)
    syscall

    ; Espera pelo pressionamento da tecla Enter
    mov rax, 0
    mov rdi, 0
    mov rsi, 0
    mov rdx, 0
    mov r10, 0
    mov r8, 0
    mov r9, 0
    syscall

message:
    db 'l e y e r n e t', 0
ss
