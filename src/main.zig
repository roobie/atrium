const std = @import("std");

const c = @cImport({
    @cInclude("libguile.h");
});



pub extern fn t(cdata: ?*c_void) ?*c_void {
    return cdata;
}
fn getGuileCallback(comptime T: type, comptime Y: type,
                    f: fn(T) Y) extern fn (?*c_void) ?*c_void {
    const container = struct {
        pub extern fn callback(cdata: ?*c_void) ?*c_void {
            const inp: T = @ptrCast(T,  cdata);
            return f(inp);
        }
    };

    return container.callback;
}

const Guile = struct {
    extern fn shellMain(data: ?*c_void, argc: c_int, argv: ?[*]?[*]u8) noreturn {
        c.scm_shell(0, null);
        unreachable;
    }

    pub fn shell() noreturn {
        c.scm_boot_guile(0, null, shellMain, null);
        unreachable;
    }

    pub fn init() void {
        c.scm_init_guile();
    }

    pub fn with(f: extern fn (?*c_void) ?*c_void, data: ?*c_void) ?*c_void {
        return c.scm_with_guile(f, data);
    }

    pub fn without(f: extern fn (?*c_void) ?*c_void, data: ?*c_void) ?*c_void {
        return c.scm_without_guile(f, data);
    }

    pub fn eqP(x: c.SCM, y: c.SCM) bool {
        return c.scm_eq_p(x, y);
    }
};

pub extern fn callGuile(data: ?*c_void) ?*c_void {
    return data;
}

pub extern fn inGuile(data: ?*c_void) ?*c_void {
    var exp = @ptrCast(*u8, data.?).*;
    var v = exp + 1;
    return @ptrCast(?*c_void, &v);
}

pub fn main() anyerror!void {
    std.debug.warn("Uh oh\n");
    var ivar: u8 = 254;
    //const a = Guile.c_with(callGuile, &ivar);
    const b = Guile.with(inGuile, &ivar);
    std.debug.warn("{}: Uh oh\n", b.?.*);
    //Guile.shell();
}
