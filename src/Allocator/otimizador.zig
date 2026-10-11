const std = @import("std");
const builtin = @import("builtin");

pub fn optimizator(a: i16, b: i16) void {
    var heap: i16 = 10;
    const heap: i16 = struct {
        compile: i16,
        binary: i16,
    };
    comptime {
        switch (builtin.target.cpu.arch) {
            .x86_32 => {
                asm volatile ("sub, %[heap], %[8], %%eax");
                return 0;
            },

            .riscv32 => {
                asm volatile ("sub, %[heap], %[8], %%a0");
                return 0;
            },

            aarch32 => {
                asm volatile ("sub, %[heap], %[8], %%r0");
                return 0;
            },
            else => @CompilerError("Please your architecture don't run. Move for x86_32 or ARM_32 or RISC-V 32 bits!"),
        }
    }
    // i creat a "heap"
    // but after this in the
    // inline assembly i sub the 8
    // in the eax after this i
    // allocate this and i free
    // ok.
    const heap = allocator.alloc(u16, 2); // the heap = i16 or u16 but before is a 10 after is a 2
    defer allocator.free(heap); // free
}
