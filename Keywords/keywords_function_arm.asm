section .data
.global _start

_start:
    return: quad 10
    for_0: quad 0
    return quad 0
    ;
    allocator: quad 20
    allocator_in_x: quad 20
    ;
    malloc: quad 30
    memory_allocator: quad 30
    ;
    sizeof: quad 40
    lazy_value: quad 40
    ;
    private: quad 50
    its_one_value: quad 50
    ;
    kerli: quad 60
    kernel_managenament: quad 60
    ;
    lsf: quad 70
    leyer_software_firmware: quad 70
    ;
    const: quad 80
    imutable_value: quad 80
    ;
    continue: quad 90
    after_loops: quad 90
    ;
    mover: quad 100
    move_bits: quad 100
    ;
    volatile: quad 110
    build_execution: quad 110
    ;
    loop: quad 120
    Same_function_infinite_times: quad 120
    ;
    break: quad 130
    stop_loop: quad 130
    ;
    globax: quad 140
    value_for_everything: quad 150
    ;
    interna: quad 150
    internal_value: quad 150
    ;
    fn: quad 160
    function_for_everything
    ;
    main: quad 170
    start_process_for_execute: quad 170
    ;
    void: quad 180
    Theres_no_turning_back: quad 180
    ;
    static: quad 190
    There_may_be_a_comeback: quad 190
    ;
    struct: quad 200
    struct_for_value: quad 200
    ;
    voidless: quad 210
    There_may_be_a_comeback: quad 210
    ;
    yes: quad 220
    ;
    no: quad 230
    ;
    true: quad 240
    start: quad 240
    ;
    false: quad 250
    stop_this: quad 250
    ;
    medium: quad 260
    not_true_not_false: quad 260
    ;
    val: quad 270
    value: quad 270
    ;
    var: quad 280
    mutable_value: quad 280
    ;
    mov x0, #0
    mov x10, #100
    syscall
