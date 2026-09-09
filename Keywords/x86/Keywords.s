section .data

    return_0                dw 0
    for_0                   dw 0
    return_1                dw 1

    allocator               dw 64
    allocator_in_x          dw 64

    malloc                  dw 64
    memory_alocator         dw 64

    sizeof                  dw 64
    lazy_value              dw 64

    private                 dw 32
    its_one_value           dw 32

    kerli                   dw 100
    kernel_management       dw 100

    lsf                     dw 100
    leyer_software_firmware dw 100

    const                   dw 50
    imutable_value          dw 50

    continue                dw 70
    after_loop              dw 70

    mover                   dw 10
    move_bit                dw 10

    asm_keyword             dw 1
    assembly_inline         dw 1

    volatile                dw 300
    build_in_execution      dw 300

    loop_keyword            dw 1000
    Same_function_inf_times dw 1000

    break                   dw 2000
    stop_loop               dw 2000

    globax                  dw 3000
    value_for_everything    dw 3000

    interna                 dw 950
    internal_value          dw 950

    fn                      dw 9000
    function_for_everythink dw 9000

    main                    dw 8500
    start_process_execute   dw 8500

    void                    dw 500
    Theres_no_turning_back  dw 500

    static                  dw 400
    Static_Value            dw 400

    struct                  dw 9000
    struct_for_value        dw 9000

    voidless                dw 510
    There_may_be_a_comeback dw 510

    yes_0                   db 8
    yes_1                   db 8

    no_0                    db 8
    no_1                    db 8

    true                    dw 9000
    ok_start                dw 9000

    false                   dw 9000
    stop_this               dw 9000

    medium                  dw 9000
    not_true_not_false      dw 9000

    val                     dw 10000
    value                   dw 10000

    var                     dw 10000
    mutable_value           dw 10000

section .text               ; Seção de código
    global _start

_start:
    mov ax, 1000         
    mov bx, 1     
    syscall
