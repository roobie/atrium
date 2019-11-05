const std = @import("std");
const fmt = std.fmt;
const warn = std.debug.warn;

const linalg = @import("linalg.zig");
const clibs = @import("clibs.zig");
const c = clibs.c;
const CString = clibs.CString;

pub const SDLRect = c.SDL_Rect;
pub const SDLColor = c.SDL_Color;
pub const FPSmanager = extern struct {
    framecount: u32,
    rateticks: f32,
    baseticks: u32,
    lastticks: u32,
    rate: u32,
};

pub const Module = enum {
    SDL,
    TTF,
    GFX,
    Image,
    Net,
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

pub fn logErr(comptime module: Module, errFmt: CString) void {
    c.SDL_Log(errFmt, c.SDL_GetError());
}

pub fn logFatalExt(err: anyerror, errFmt: CString, args:...) anyerror {
    c.SDL_Log(errFmt, args);
    return err;
}

pub fn logFatal(comptime module: Module, errFmt: CString) anyerror {
    switch (module) {
        Module.SDL => {
            c.SDL_Log(errFmt, c.SDL_GetError());
        },
        Module.TTF => {
            c.SDL_Log(errFmt, c.TTF_GetError());
        },
        else => {
            c.SDL_Log(errFmt, c.SDL_GetError());
        }
    }
    return error.SDLInitializationFailed;
}

pub fn glSetAttr(comptime attr: comptime_int, value: i32) !void {
    var _x: c_int = 0;
    return check(c.SDL_GL_SetAttribute(@bitCast(c.SDL_GLattr, _x + attr), @bitCast(c_int, value)));
}


pub const Font = enum {
    Mono16
};
var fontMono: *c.TTF_Font = undefined;
var fontCondensed: *c.TTF_Font = undefined;
var fontSans: *c.TTF_Font = undefined;
fn openFont(path: CString, size: c_int) !*c.TTF_Font {
    return c.TTF_OpenFont(path, size) orelse {
        var msg_buf: [1 << 16]u8 = undefined;
        const message = try fmt.bufPrint(
            msg_buf[0..], "Error: c.TTF_OpenFont, path=[{}]: %s", path);
        return logFatal(Module.TTF, @ptrCast([*]const u8, &msg_buf));
    };
}
pub fn initTextManager() !void {
    const defaultTextSize: c_int = 16;
    fontMono = try openFont(c"assets/DejaVuSansMono.ttf", defaultTextSize);
    fontCondensed = try openFont(c"assets/DejaVuSansCondensed.ttf", defaultTextSize);
    fontSans = try openFont(c"assets/DejaVuSans.ttf", defaultTextSize);
}
pub const Text = struct {
    font: *c.TTF_Font,
    message: CString,
    surface: [*]c.SDL_Surface,
    color: SDLColor,

    pub fn init(message: CString) Text {
        return Text {
            .font = fontMono,
            .message = message,
            .surface = undefined,
            .color = SDLColor {.r = 255, .g = 255, .b = 255, .a = 255, }
        };
    }
    pub fn deinit(self: *Text) void {
        c.SDL_FreeSurface(self.surface);
    }

    pub fn render(self: *Text, renderer: *c.SDL_Renderer) void {
        var surface: ?[*]c.SDL_Surface = c.TTF_RenderText_Solid(
            self.font,
            self.message,
            self.color
        );

        self.surface = surface.?;
    }

    pub fn display(self: *Text, renderer: *c.SDL_Renderer, position: *const linalg.Vec2) void {
        // TODO assert that self.surface exists
        var tex = c.SDL_CreateTextureFromSurface(renderer, self.surface).?;
        // TODO check
        _ = c.SDL_RenderCopy(
            renderer,
            tex, null, @ptrCast(?[*]c.SDL_Rect, &self.getRect(position)));
    }

    pub fn getRect(self: *Text, pos: *const linalg.Vec2) SDLRect {
        var tw: c_int = undefined;
        var th: c_int = undefined;
        _ = c.TTF_SizeText(
            self.font,
            self.message,
            @ptrCast(?[*]c_int, &tw),
            @ptrCast(?[*]c_int, &th),
        );

        return SDLRect {
            .x = @floatToInt(c_int, pos.getX()),
            .y = @floatToInt(c_int, pos.getY()),
            .w = tw,
            .h = th,
        };
    }
};

///
/// const tpos = linalg.Vec2.make(100, 100);
/// sdl.renderText(sdl.Font.Mono16, renderer, c"message string", &tpos) catch {
///     return sdl.logFatal(sdl.Module.TTF, c"ERR: %s");
/// };
pub fn renderText(comptime f: Font,
                  renderer: *c.SDL_Renderer,
                  message: CString,
                  position: *const linalg.Vec2) !void {
    var t = Text.init(message);
    defer t.deinit();
    t.render(renderer);
    t.display(renderer, &linalg.Vec2.make(10, 10));
}


pub fn initSdlGlAttrs() !void {
    glSetAttr(c.SDL_GL_CONTEXT_FLAGS, c.SDL_GL_CONTEXT_FORWARD_COMPATIBLE_FLAG) catch |err| return err;
    glSetAttr(c.SDL_GL_CONTEXT_PROFILE_MASK, c.SDL_GL_CONTEXT_PROFILE_CORE) catch |err| return err;
    glSetAttr(c.SDL_GL_DOUBLEBUFFER, 1) catch |err| return err;
    glSetAttr(c.SDL_GL_DEPTH_SIZE, 24) catch |err| return err;
    glSetAttr(c.SDL_GL_STENCIL_SIZE, 8) catch |err| return err;
    glSetAttr(c.SDL_GL_CONTEXT_MAJOR_VERSION, 3) catch |err| return err;
    glSetAttr(c.SDL_GL_CONTEXT_MINOR_VERSION, 2) catch |err| return err;
    check(c.SDL_GL_SetSwapInterval(1)) catch |err| {
        logErr(Module.SDL, c"Could not c.SDL_GL_SetSwapInterval(1): %s");
    };
}

