
const assert = @import("std").debug.assert;

pub const Float = f32;

pub const Vec2 = struct {
    x: Float,
    y: Float,

    pub fn make(x: ?Float, y: ?Float) Vec2 {
        return Vec2 {
            .x = x orelse 0.0,
            .y = y orelse 0.0,
        };
    }

    pub fn add(self: *Vec2, other: *Vec2) Vec2 {
        return Vec2.make(
            self.x + other.x,
            self.y + other.y
        );
    }

    pub fn sub(self: *Vec2, other: *Vec2) Vec2 {
        return Vec2.make(
            self.x - other.x,
            self.y - other.y,
        );
    }
};
