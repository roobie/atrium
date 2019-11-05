
const math = @import("std").math;
const assert = @import("std").debug.assert;

const clibs = @import("clibs.zig");
const c = clibs.c;

/// Type alias to illustrate which precision we work with.
pub const Float = f64;

/// Requires CBLAS,
/// docs here: https://www.gnu.org/software/gsl/doc/html/blas.html
pub const Vec2 = struct {
    data: [2]Float,

    pub fn make(x: ?Float, y: ?Float) Vec2 {
        return Vec2 {
            .data = [2]Float{
                x orelse 0.0,
                y orelse 0.0
            },
        };
    }

    pub fn getX(self: *const Vec2) Float {
        return self.data[0];
    }

    pub fn setX(self: *Vec2, x: Float) *Vec2 {
        self.data[0] = x;
        return self;
    }

    pub fn getY(self: *const Vec2) Float {
        return self.data[1];
    }

    pub fn setY(self: *Vec2, y: Float) *Vec2 {
        self.data[1] = y;
        return self;
    }

    pub fn clone(self: *const Vec2) Vec2 {
        return Vec2.make(self.data[0], self.data[1]);
    }

    pub fn add(self: *const Vec2, other: *const Vec2) Vec2 {
        var result = self.clone();
        Vec2.addI(&result, other);
        return result;
    }

    fn dataPtr(self: *Vec2) [*]Float {
        return @ptrCast([*]Float, &self.data);
    }

    fn constDataPtr(self: *const Vec2) [*]const Float {
        return @ptrCast([*]const Float, &self.data);
    }

    pub fn addI(self: *Vec2, other: *const Vec2) void {
        const N = 2;
        c.cblas_daxpy(
            N,
            1, other.constDataPtr(),
            1, self.dataPtr(),
            1);
    }

    pub fn sub(self: *const Vec2, other: *const Vec2) Vec2 {
        var a_clone = self.clone();
        a_clone.subI(other);
        return a_clone;
    }

    pub fn subI(self: *Vec2, other: *const Vec2) void {
        const N = 2;
        c.cblas_daxpy(
            N,
            -1, other.constDataPtr(),
            1, self.dataPtr(),
            1);
    }

    pub fn scale(self: *const Vec2, factor: Float) Vec2 {
        var a_clone = self.clone();
        a_clone.scaleI(factor);
        return a_clone;
    }

    pub fn scaleI(self: *Vec2, factor: Float) void {
        const N = 2;
        c.cblas_dscal(
            N,
            factor, @ptrCast([*]Float, &self.data),
            1);
    }

    pub fn length(self: *const Vec2) Float {
        const x = self.data[0];
        const y = self.data[1];
        return math.sqrt((x * x) + (y * y));
    }

    pub fn invY(self: *Vec2) Vec2 {
        var a_clone = self.clone();
        a_clone.data[1] *= -1;
        return a_clone;
    }

    // pub fn min(self: *const Vec2, other: *const Vec2) Vec2 {
    //     return Vec2 {
    //         .x = if (self.x < other.x) self.x else other.x,
    //         .y = if (self.y < other.y) self.y else other.y,
    //     };
    // }

    // pub fn max(self: *const Vec2, other: *const Vec2) Vec2 {
    //     return Vec2 {
    //         .x = if (self.x < other.x) other.x else self.x,
    //         .y = if (self.y < other.y) other.y else self.y,
    //     };
    // }

    pub fn set(self: *Vec2, other: *const Vec2) void {
        self.data[0] = other.data[0];
        self.data[1] = other.data[1];
    }
};
