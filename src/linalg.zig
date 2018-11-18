
const math = @import("std").math;
const assert = @import("std").debug.assert;

pub const Float = f64;

pub const Vec2 = struct {
    x: Float,
    y: Float,

    pub fn make(x: ?Float, y: ?Float) Vec2 {
        return Vec2 {
            .x = x orelse 0.0,
            .y = y orelse 0.0,
        };
    }

    pub fn add(self: *const Vec2, other: *const Vec2) Vec2 {
        return Vec2.make(
            self.x + other.x,
            self.y + other.y,
        );
    }

    pub fn addI(self: *Vec2, other: *const Vec2) void {
        self.*.x += other.x;
        self.*.y += other.y;
    }

    pub fn sub(self: *const Vec2, other: *const Vec2) Vec2 {
        return Vec2.make(
            self.x - other.x,
            self.y - other.y,
        );
    }

    pub fn subI(self: *Vec2, other: *const Vec2) void {
        self.x -= other.x;
        self.y -= other.y;
    }

    pub fn scale(self: *const Vec2, factor: Float) Vec2 {
        return Vec2.make(
            self.x * factor,
            self.y * factor,
        );
    }

    pub fn scaleI(self: *Vec2, factor: Float) void {
        self.x *= factor;
        self.y *= factor;
    }

    pub fn length(self: *const Vec2) Float {
        const x = self.x;
        const y = self.y;
        return math.sqrt((x * x) + (y * y));
    }

    pub fn min(self: *const Vec2, other: *const Vec2) Vec2 {
        return Vec2 {
            .x = if (self.x < other.x) self.x else other.x,
            .y = if (self.y < other.y) self.y else other.y,
        };
    }

    pub fn max(self: *const Vec2, other: *const Vec2) Vec2 {
        return Vec2 {
            .x = if (self.x < other.x) other.x else self.x,
            .y = if (self.y < other.y) other.y else self.y,
        };
    }
};
