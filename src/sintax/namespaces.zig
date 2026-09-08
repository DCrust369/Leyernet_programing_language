pub fn NAMESPACES() !void {
    var stack: [14]u32 = "alloc.stack"; //* 14 words *//
    var func: [17]u32 = "creat.function"; //* 17 *//

    var stack: *volatile STACK_BUFFER = @ptrFromInt(ORIGINAL_STACK_BUFFER);
    extern fn free(stack: *anyopaque) void;
    free(stack);
    _= stack;

    const func: *volatile FUNC_BUFFER = @ptrFromInt(ORIGINAL_FUNC_BUFFER);
    extern fn free(FUNC: *anyopaque) void;
    free(func);
    _= func;

    return 0;
}
