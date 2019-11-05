const std = @import("std");
const mem = std.mem;
const rand = std.rand;

const linalg = @import("linalg.zig");
const Vec2 = linalg.Vec2;

pub const inv_y = Vec2.make(1, -1);

pub const GameError = error {
    GameInitializationFailed,
    EntityCreationError,
};

pub const WindowProperties = struct {
    default_width: i32,
    default_height: i32,

    current_width: c_int,
    current_height: c_int,

    relative_center: Vec2,
};

pub const Camera = struct {
    position: linalg.Vec2,
    center: linalg.Vec2,
    scale: linalg.Float,
    rotation: linalg.Float,
};

pub fn initRng() !rand.DefaultPrng {
    var buf: [8]u8 = undefined;
    try std.crypto.randomBytes(buf[0..]);
    const seed = mem.readIntLittle(u64, &buf);
    return rand.DefaultPrng.init(seed);
}
