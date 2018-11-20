const std = @import("std");
const builtin = @import("builtin");

pub fn avg(comptime T: type, numbers: []T) T {
    var sum: T = 0;
    for (numbers) |n| {
        sum += n;
    }

    switch (@typeId(T)) {
        builtin.TypeId.Float => {
            return sum / @intToFloat(T, numbers.len);
        },
        builtin.TypeId.Int => {
            return sum / @intCast(T, @truncate(T, numbers.len));
        },
        else => unreachable,
    }
}
