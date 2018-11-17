const std = @import("std");

const c = @cImport({
    @cInclude("libguile.h");
    @cInclude("scheme.h");
});

/// Usage:
/// Guile.shell();
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
