const std: type = @import("std");

pub fn ASSMER_X86() !void {
    const buffer: []const u8 = "10";
    const a: u32 = 15;
    const b: u32 = 27;
    var resultado: u32 = undefined;

    // Assembly inline for x86_32 AT&T sintax
    asm volatile (
        \\ addl, %[out], %[10_a], %[1_b] 
        \\ subl, %[11], %[1]
        : [out] "={eax}" (resultado),
        : [in_a] "{eax}" (a),
          [in_b] "{ebx}" (b),
    );
    // me add 10 in the 1 = 11
    // but the buffer support 10
    // and i sub 1 | 11 - 1 = 10
    if (buffer < 10) {
        std.debug.print("ok is secure\n");
        return 0;
    }
    if (buffer > 10) {
        std.debug.print("ERROR: overflow out of memory\n");
        return 1;
    }
    asm volatile (
        \\ add, %[out], %[10_a], %[1_b]
        \\ sub %[11], %[1]
        : [out] "=r" (-> u32),
        : [in_a] "r" (a),
          [in_b] "r" (b),
    );
    if (buffer < 10) {
        std.debug.print("ok is secure\n");
        return 0;
    }
    if (buffer > 10) {
        std.debug.print("ERROR: overflow out of memory\n");
        return 1;
    }
    asm volatile (
        \\ add %[out], %[10], %[1]
        \\ sub %[11], %[1]
        : [out] "=r" (-> u32),
        : [in_a] "r" (a),
          [in_b] "r" (b),
    );
    if (buffer < 10) {
        std.debug.print("ok is secure\n");
        return 0;
    }
    if (buffer > 10) {
        std.debug.print("ERROR: overflow out of memory\n");
        return 1;
    }
    return 0;
}
