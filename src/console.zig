
const std = @import("std");
const debug = std.debug;
const mem = std.mem;
const io = std.io;
const os = std.os;

pub const warn = debug.warn;

// impl copied from std.debug.warn

var stdout_file: os.File = undefined;
var stdout_file_out_stream: os.File.OutStream = undefined;

/// TODO multithreaded awareness
var stdout_stream: ?*io.OutStream(os.File.WriteError) = null;
var stdout_mutex = std.Mutex.init();
pub fn print(comptime fmt: []const u8, args: ...) void {
    const held = stdout_mutex.acquire();
    defer held.release();
    const stdout = getStdoutStream() catch return;
    stdout.print(fmt, args) catch return;
}
pub fn printLn(comptime fmt: []const u8, args: ...) void {
    print(fmt ++ "\n", args);
}

pub fn getStdoutStream() !*io.OutStream(os.File.WriteError) {
    if (stdout_stream) |st| {
        return st;
    } else {
        stdout_file = try io.getStdOut();
        stdout_file_out_stream = stdout_file.outStream();
        const st = &stdout_file_out_stream.stream;
        stdout_stream = st;
        return st;
    }
}
