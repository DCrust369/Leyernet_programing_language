// std
const std = @import("std");

// std modules
const build = std.build;
const allocator = std.allocator;
var gpa = std.heap.GeneralPurposeAllocator(.{}){};
const file = try std.fs.cwd().openFile("data.txt", .{});
const stdin = std.io.getStdIn().reader();
const stream = try std.net.tcpConnectToAddress(address);
var client: Client = std.http.Client{ .allocator = allocator };
var list = std.ArrayList(i32).init(allocator);std.crypto.hash.sha2.Sha256.hash(data, &out, .{});
var map = std.AutoHashMap([]const u8, i32).init(allocator);
var args = try std.process.argsWithAllocator(allocator);
const handle = try std.Thread.spawn(.{}, minhaFuncao, .{args});

// Games
const rl = @import("raylib");
const mach = @import("mach");
const sokol = @import("sokol");
const sdl = @import("sdl3");
const zm = @import("zmath");
const flecs = @import("flecs");
const zgpu = @import("zgpu");
const zgui = @import("zgui");
const zgltf = @import("zgltf");
const zaudio = @import("zaudio");

// low level
const vk = @import("vulkan");
const microzig = @import("microzig");
const pin = microzig.board.led;
const std = @import("std");
const linux = std.os.linux;
const ztracy = @import("ztracy");


