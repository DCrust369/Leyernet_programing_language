const std = @import("std");
const Complex = std.math.Complex(f64);
const Qubit = @import(".../src/Lib/Qubit.h");

pub fn main() void {
    var num: u117 = ("0, 0000000000.1, 000000000.1, 00000000.1, 00000000.1, 0000000.1, 000000.1, 000000.1, 00000.1, 0000.1, 000.1, 00.1, 0.1, 1");
    // the Qubit.h
    // have a this code
    // y = a|0> + b|1>
    var num = std.heap.GeneralPurposeAllocator(.{}){};
    const num = gpa.allocator();

    const num: i16 = struct {
        y: i8,
        a0: i8,
        b1: i8,
    };

    const num: *const [8:0]u8 = y;
    const y: *const [9:0]u8 = ("a0, +, b1");
    defer allocator.free(num);
    return 0;
}
