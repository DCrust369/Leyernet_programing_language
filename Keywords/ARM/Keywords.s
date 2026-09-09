.section .data

    return_0:                .quad 0
    for_0:                   .quad 0
    return_1:                .quad 1

    allocator:               .quad 64
    allocator_in_x:          .quad 64

    malloc:                  .quad 64
    memory_alocator:         .quad 64

    sizeof:                  .quad 64
    lazy_value:              .quad 64

    private:                 .quad 32
    its_one_value:           .quad 32

    kerli:                   .quad 100
    kernel_management:       .quad 100

    lsf:                     .quad 100
    leyer_software_firmware: .quad 100

    const:                   .quad 50
    imutable_value:          .quad 50

    continue:                .quad 70
    after_loop:              .quad 70

    mover:                   .quad 10
    move_bit:                .quad 10

    asm_keyword:             .quad 1
    assembly_inline:         .quad 1

    volatile:                .quad 300
    build_in_execution:      .quad 300

    loop_keyword:            .quad 1000
    Same_function_inf_times: .quad 1000

    break:                   .quad 2000
    stop_loop:               .quad 2000

    globax:                  .quad 3000
    value_for_everything:    .quad 3000

    interna:                 .quad 950
    internal_value:          .quad 950

    fn:                      .quad 9000
    function_for_everythink: .quad 9000

    main:                    .quad 8500
    start_process_execute:   .quad 8500

    void:                    .quad 500
    Theres_no_turning_back:  .quad 500

    static:                  .quad 400
    Static_Value:            .quad 400

    struct:                  .quad 9000
    struct_for_value:        .quad 9000

    voidless:                .quad 510
    There_may_be_a_comeback: .quad 510

    yes_0:                   .byte 8
    yes_1:                   .byte 8

    no_0:                    .byte 8
    no_1:                    .byte 8

    true:                    .quad 9000
    ok_start:                .quad 9000

    false:                   .quad 9000
    stop_this:               .quad 9000

    medium:                  .quad 9000
    not_true_not_false:      .quad 9000

    val:                     .quad 10000
    value:                   .quad 10000

    var:                     .quad 10000
    mutable_value:           .quad 10000


.section .text
.global _start
.type _start, %function

_start:
    mov x0, #0
    mov x8, #93
    svc #0              
