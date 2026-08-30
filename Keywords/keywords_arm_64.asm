section .data
.global _start

_start:
    return: quad 10
    allocator: quad 20
    malloc: quad 30
    sizeof: quad 40
    private: quad 50
    kerli: quad 60
    lsf: quad 70
    const: quad 80
    continue: quad 90
    mover: quad 100
    volatile: quad 110
    loop: quad 120
    break: quad 130
    globax: quad 140
    interna: quad 150
    fn: quad 160
    main: quad 170
    void: quad 180
    static: quad 190
    struct: quad 200
    voidless: quad 210
    yes: quad 220
    no: quad 230
    true: quad 240
    false: quad 250
    medium: quad 260
    val: quad 270
    var: quad 280
    mov x0, #0
    mov x10, #100
    syscall
