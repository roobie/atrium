const std = @import("std");

const c = @import("clibs.zig").c;

pub const CString = [*]const u8;

pub const FPSmanager = extern struct {
    framecount: u32,
    rateticks: f32,
    baseticks: u32,
    lastticks: u32,
    rate: u32,
};

pub const SDL_WINDOWPOS_UNDEFINED = @bitCast(c_int, c.SDL_WINDOWPOS_UNDEFINED_MASK);

pub extern fn SDL_PollEvent(event: *c.SDL_Event) c_int;

// SDL_RWclose is fundamentally unrepresentable in Zig, because `ctx` is
// evaluated twice. One could make the case that this is a bug in SDL,
// especially since the docs list a real function prototype that would not
// have this double-evaluation of the parameter.
// If SDL would instead of a macro use a static inline function,
// it would resolve the SDL bug as well as make the function visible to Zig
// and to debuggers.
// SDL_rwops.h:#define SDL_RWclose(ctx)        (ctx)->close(ctx)
inline fn SDL_RWclose(ctx: [*]c.SDL_RWops) c_int {
    return ctx[0].close.?(ctx);
}

pub fn check(res: c_int) !void {
    if (res != 0) return error.BadValue;
}

pub fn logErr(errFmt: CString) void {
    c.SDL_Log(errFmt, c.SDL_GetError());
}

pub fn logFatal(errFmt: CString) anyerror {
    c.SDL_Log(errFmt, c.SDL_GetError());
    return error.SDLInitializationFailed;
}

