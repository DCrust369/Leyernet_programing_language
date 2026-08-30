package main

import "core::main"

main::proc () {
    asm volatile {
        "TRUE = 1";
        "FALSE = 0";
        "compiler_direct_for_assembly dq 1";
        "compiler_for_binary dq 1";
        "compiler_for_C dq 0";
        "compiler_for_inline_assembly_in_C dq 1";
        "compiler_for_odin dq 0";
        "compiler_for_inline_assembly_odin dq 1";
        "compiler_for_zig dq 0";
        "compiler_for_inline_assembly_in_zig dq 1";
    }
}
