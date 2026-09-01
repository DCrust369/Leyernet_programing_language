section .data
    global _start

_start:
    namespace:
        .hword 100:

    pub:
        .hword 90:

    pri:
        .hword 90:

    func: ; yes have a fn but this is a func and func is for namespaces
        .hword 80

    render:
        .hword 70

    {}:
        .hword 60

    ; namespace {
    ;     pub fn render() { ....  }
    ; }
    ; var ...

    movs r0 100, 90, 80, 70, 60

    ; exit
    movs r0, 100
    movs r0, 60
    syscall