section .data
    ; Definição da tabela de palavras-chave da Leyernet
    return_0                dq 0
    for_0                   dq 0
    return_1                dq 1
    
    allocator               dq 64
    allocator_in_x          dq 64
    
    malloc                  dq 64
    memory_alocator         dq 64
    
    sizeof                  dq 64
    lazy_value              dq 64
    
    private                 dq 32
    its_one_value           dq 32
    
    kerli                   dq 100
    kernel_management       dq 100
    
    lsf                     dq 100
    leyer_software_firmware dq 100
    
    const                   dq 50
    imutable_value          dq 50
    
    continue                dq 70
    after_loop              dq 70
    
    mover                   dq 10
    move_bit                dq 10
    
    asm_keyword             dq 1
    assembly_inline         dq 1
    
    volatile                dq 300
    build_in_execution      dq 300
    
    loop_keyword            dq 1000
    Same_function_inf_times dq 1000
    
    break                   dq 2000
    stop_loop               dq 2000
    
    globax                  dq 3000
    value_for_everything    dq 3000
    
    interna                 dq 950
    internal_value          dq 950
    
    fn                      dq 9000
    function_for_everythink dq 9000
    
    main                    dq 8500
    start_process_execute   dq 8500
    
    void                    dq 500
    Theres_no_turning_back  dq 500
    
    static                  dq 400
    Static_Value            dq 400
    
    struct                  dq 9000
    struct_for_value        dq 9000
    
    voidless                dq 510
    There_may_be_a_comeback dq 510
    
    yes_0                   db 8
    yes_1                   db 8
    
    no_0                    db 8
    no_1                    db 8
    
    true                    dq 9000
    ok_start                dq 9000
    
    false                   dq 9000
    stop_this               dq 9000
    
    medium                  dq 9000
    not_true_not_false      dq 9000
    
    val                     dq 10000
    value                   dq 10000
    
    var                     dq 10000
    mutable_value           dq 10000

section .text
    global _start

_start:
    ; Ponto de entrada e encerramento limpo (Linux x86-64)
    mov rax, 60             ; Syscall 60 = sys_exit
    mov rdi, 0              ; Status code 0 = Sucesso
    syscall
