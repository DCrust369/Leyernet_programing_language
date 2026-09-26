const builtin = @import("builtin");
const std = @import("std");
const math = std.math;

pub fn CPUID_ASM() !void {
    comptime {
        const is_nvptx = builtin.cpu.arch.isNvptx();

        _ = if (is_nvptx)
            std.Target.nvptx.featureSetHas(builtin.cpu.features, .sm_80)
        else
            false;

        var cpuid: u16 = 0;
        var gpu: u16 = 0;

        while (gpu <= 100) : (gpu += 50) {
            cpuid += gpu;
        }
    }

    const optimizations: bool = true;

    const gpu: [4]u8 = .{
        0b00001000,
        0b11111111,
        0b00001000,
        0b11111111,
    };

    const a: comptime_int = 8;
    const b: comptime_int = 16;
    const c: comptime_int = 32;
    const d: comptime_int = 64;

    const MULTIPLICATION_16: comptime_float = @floatFromInt(a * b);
    const MULTIPLICATION_32: comptime_float = @floatFromInt(a * c);
    const MULTIPLICATION_64: comptime_float = @floatFromInt(a * d);

    _ = optimizations;
    _ = gpu;
    _ = MULTIPLICATION_16;
    _ = MULTIPLICATION_32;
    _ = MULTIPLICATION_64;

    return;
}

pub fn saturatingAdd(a: u8, b: u8) u8 {
    return switch (builtin.cpu.arch) {
        .riscv32 => asm (
            \\ add %[res], %[a], %[b]
            \\ sltu t0, %[res], %[a]      
            \\ neg t0, t0                 
            \\ or %[res], %[res], t0      
            : [res] "=r" (-> u8),
            : [a] "r" (a),
              [b] "r" (b),
            : "t0"),

        .x86 => asm (
            \\ movb $0xFF, %al
            \\ addb %[b], %[a]       
            \\ cmovcb %ax, %[a]           
            : [res] "={al}" (-> u8),
            : [a] "{al}" (a),
              [b] "r" (b),
            : "flags"),

        .arm, .armeb => asm (
            \\ uqadd8 %[res], %[a], %[b]
            : [res] "=r" (-> u8),
            : [a] "r" (a),
              [b] "r" (b),
        ),

        else => a +| b,
    };
}
