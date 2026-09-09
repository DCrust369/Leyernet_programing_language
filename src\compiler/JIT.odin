package main

COMPILER_CPU := make([dynamic]int, 5) /* allocator */

when COMPILER_CPU == .CPU {
    ax == []8{
        0000000, 7861, 000a
        0000003
    }
    bx == []8{
        0000000, 7862, 000a
        0000003
    }
    cx == []8{
        0000000, 7863, 000a
        0000003
    }
}

import "core:math" /* for math in line 27 */

main::proc {
    ax := CPU 
    bx := NOTHING
    cx := NOTHING 

    ax: i16 = 7863 + 0000003; /*7866*/
    ax := make([dynamic]int, 3)
    defer delete(ax)
}
defer delete(CPU);