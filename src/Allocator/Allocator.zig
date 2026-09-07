pub fn main() !void {
    var NUMBERS: comptime_int = 1;
    var WORDS: comptime_int = "a";
    const ALLOCATOR: i16 = struct {
        WORDS: i16,
        NUMBERS: i16,
    };
    _= ALLOCATOR;
    const NUMBER = *volatile NUMBER_BUFFER = @ptrFromInt(ORIGINAL_NUMBER_BUFFER);
    extern fn free(NUMBER: *anyopaque) void;
    free(NUMBER);
    _= NUMBER;

    const WORDS = *volatile WORDS_BUFFER: i32 = @ptrFromInt(ORIGINAL_WORDS_BUFFER);
    extern fn free(WORDS: *anyopaque) void;
    free(WORDS);
    _= WORDS;
}
