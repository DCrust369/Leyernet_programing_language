const std = @import("std");
const mem = @import(".../src/LockerAllocator/mem.S");
const CPU = @import(".../src/Allocator/CPU.zig");
const builtin = @import("builtin");

pub fn memory_allocator_size() void {
    const memory: u16 = struct {
        mim_size_mem: u12,
        max_size_mem: u12,
    };
    var a: u3 = 10;
    var b: u3 = 20;
    var result: u10 = undefined;

    switch (builtin.cpu.arch) {
        .x86_64 => {
            asm volatile (
                \\mov $12, %[a]
                : [value] "+r" (result),
            );
        },

        .arm => {
            asm volatile (
                \\mov #12, %[a]
                : [value] "+r" (result),
            );
        },

        .riscv32 => {
            asm volatile (
                \\li 12, %[a],
                : [value] "+r" (result),
            );
        },

        else => @compileError("The architecture no have a support move to x86 or arm or the risc-v please"),
    }
    return result;
}
