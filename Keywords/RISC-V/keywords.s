.section .data

    return_0:                .word 0
    for_0:                   .word 0
    return_1:                .word 1

    allocator:               .word 64
    allocator_in_x:          .word 64

    malloc:                  .word 64
    memory_alocator:         .word 64

    sizeof:                  .word 64
    lazy_value:              .word 64

    private:                 .word 32
    its_one_value:           .word 32

    kerli:                   .word 100
    kernel_management:       .word 100

    lsf:                     .word 100
    leyer_software_firmware: .word 100

    const:                   .word 50
    imutable_value:          .word 50

    continue:                .word 70
    after_loop:              .word 70

    mover:                   .word 10
    move_bit:                .word 10

    asm_keyword:             .word 1
    assembly_inline:         .word 1

    volatile:                .word 300
    build_in_execution:      .word 300

    loop_keyword:            .word 1000
    Same_function_inf_times: .word 1000

    break:                   .word 2000
    stop_loop:               .word 2000

    globax:                  .word 3000
    value_for_everything:    .word 3000

    interna:                 .word 950
    internal_value:          .word 950

    fn:                      .word 9000
    function_for_everythink: .word 9000

    main:                    .word 8500
    start_process_execute:   .word 8500

    void:                    .word 500
    Theres_no_turning_back:  .word 500

    static:                  .word 400
    Static_Value:            .word 400

    struct:                  .word 9000
    struct_for_value:        .word 9000

    voidless:                .word 510
    There_may_be_a_comeback: .word 510

    yes_0:                   .byte 8
    yes_1:                   .byte 8

    no_0:                    .byte 8
    no_1:                    .byte 8

    true:                    .word 9000
    ok_start:                .word 9000

    false:                   .word 9000
    stop_this:               .word 9000

    medium:                  .word 9000
    not_true_not_false:      .word 9000

    val:                     .word 10000
    value:                   .word 10000

    var:                     .word 10000
    mutable_value:           .word 10000


.section .text
.global _start

_start:
    @ Linux ARM 32-bit
    mov r0, #0          @ status de saída
    mov r7, #1          @ syscall: exit
    svc #0              @ executa a syscall
