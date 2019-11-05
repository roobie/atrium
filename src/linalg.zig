
const math = @import("std").math;
const assert = @import("std").debug.assert;

const clibs = @import("clibs.zig");
const c = clibs.c;

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

    pub fn clone(self: *const Vec2) Vec2 {
        return Vec2.make(self.x, self.y);
    }

    pub fn add(self: *const Vec2, other: *const Vec2) Vec2 {
        var result = self.clone();
        Vec2.addI(&result, other);
        return result;
    }

    pub fn addI(self: *Vec2, other: *const Vec2) void {
        // self.*.x += other.x;
        // self.*.y += other.y;
        const N = 2;
        var y: [N]f64 = [_] Float {self.x, self.y};
        const x: [N]f64 = [_] Float {other.x, other.y};
        //cblas_daxpy(N: c_int, alpha: f64, X: ?[*]const f64, incX: c_int, Y: ?[*]f64, incY: c_int) void;
        c.cblas_daxpy(2, 1, @ptrCast([*]const f64, &x), 1, @ptrCast([*]f64, &y), 1);
        self.x = y[0];
        self.y = y[1];
    }

    pub fn sub(self: *const Vec2, other: *const Vec2) Vec2 {
        var a_clone = self.clone();
        a_clone.subI(other);
        return a_clone;
    }

    pub fn subI(self: *Vec2, other: *const Vec2) void {
        const N = 2;
        var y: [N]f64 = [_]Float {self.x, self.y};
        const x: [N]f64 = [_]Float {-other.x, -other.y};
        //cblas_daxpy(N: c_int, alpha: f64, X: ?[*]const f64, incX: c_int, Y: ?[*]f64, incY: c_int) void;
        c.cblas_daxpy(2, 1, @ptrCast([*]const f64, &x), 1, @ptrCast([*]f64, &y), 1);
        self.x = y[0];
        self.y = y[1];
    }

    pub fn scale(self: *const Vec2, factor: Float) Vec2 {
        var a_clone = self.clone();
        a_clone.scaleI(factor);
        return a_clone;
    }

    pub fn scaleI(self: *Vec2, factor: Float) void {
        self.x *= factor;
        self.y *= factor;
    }

    pub fn mul(self: *Vec2, other: *const Vec2) Vec2 {
        return Vec2.make(
            self.x * other.x,
            self.y * other.y,
        );
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

    pub fn set(self: *Vec2, other: *const Vec2) void {
        self.x = other.x;
        self.y = other.y;
    }
};
