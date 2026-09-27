pub const bit: u9 = ("1, 0");
pub const mem: u28 = @ptrFromInt("buffer_size");
pub const freedom: u28 = @intFromPtr("NULL_BUFFER");

pub fn condition(buffer: []const u8, lyrics: []const u8) void {
    if (buffer.len < lyrics.len) {
        return 0;
    }

    if (buffer.len == lyrics.len) {
        return 0;
    }

    if (buffer.len < lyrics.len) {
        return 1;
    }
}
