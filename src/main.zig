const std = @import("std");
const mem = std.mem;
const math = @import("std").math;
const rand = @import("std").rand;

const assert = @import("std").debug.assert;
const warn = @import("std").debug.warn;

const Math = struct {
    pub fn max(comptime T: type, a: T, b: T) T {
        return if (a < b) b else a;
    }
};

const c = @cImport({
    @cInclude("lua.h");
    @cInclude("lualib.h");
    @cInclude("lauxlib.h");
    @cInclude("luajit.h");

    // @cInclude("dSFMT.h");

    @cInclude("SDL2/SDL.h");
    @cInclude("SDL2/SDL2_framerate.h");
    @cInclude("SDL2/SDL_image.h");
    @cInclude("SDL2/SDL_ttf.h");
});

pub const FPSmanager = extern struct {
    framecount: u32,
    rateticks: f32,
    baseticks: u32,
    lastticks: u32,
    rate: u32,
};

const SDL_WINDOWPOS_UNDEFINED = @bitCast(c_int, c.SDL_WINDOWPOS_UNDEFINED_MASK);
extern fn SDL_PollEvent(event: *c.SDL_Event) c_int;
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

const LuaState = *c.struct_lua_State;
const String = []const u8;
const CString = [*]const u8;
const LuaFunction = extern fn(?LuaState) c_int;
const LuaNumber = f64;
const LuaInteger = i64;

fn str(cstr: CString) String {
    return mem.toSliceConst(u8, cstr);
}

const SDL = struct {
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

    // pub fn drawScene()
};

const Lua = struct {
    state: LuaState,

    // LUA_API lua_State *(lua_newstate) (lua_Alloc f, void *ud);
    // #define lua_open()	luaL_newstate()
    pub fn init(aState: ?LuaState) Lua {
        return Lua {
            .state = aState orelse c.luaL_newstate() orelse unreachable,
        };
    }

    pub fn deinit(self: *Lua) void {
        c.lua_close(self.state);
    }

    pub fn setPanicFunc(self: *Lua, func: LuaFunction) void {
        _ = c.lua_atpanic(self.state, func);
    }

    pub fn openLibs(self: *Lua) void {
        c.luaL_openlibs(self.state);
    }

    // customs
    pub fn clearStack(self: *Lua) void {
        self.setTop(self.getTop());
    }

    pub fn getRandom(lua: *Lua) LuaNumber {
        const top = lua.getTop();
        defer lua.setTop(top);

        lua.getGlobal(c"math");
        // assert(lua.getType(top + 1) == c.LUA_TTABLE);
        lua.getField(top + 1, c"random");
        // assert(lua.getType(top + 2) == c.LUA_TFUNCTION);
        lua.call(0, 1); // pops the function being called, along with any args
        // assert(lua.getType(top + 2) == c.LUA_TNUMBER);
        return lua.getNumber(top + 2);
    }

    pub fn call(self: *Lua, nparams: u32, nresults: u32) void {
        c.lua_call(self.state, @bitCast(c_int, nparams), @bitCast(c_int, nresults));
    }

    pub fn getField(self: *Lua, index: u32, name: CString) void {
        c.lua_getfield(self.state, @bitCast(c_int, index), name);
    }

    pub fn getGlobal(self: *Lua, name: CString) void {
        c.lua_getfield(self.state, c.LUA_GLOBALSINDEX, name);
    }

    pub fn setGlobal(self: *Lua, name: CString) void {
        c.lua_setfield(self.state, c.LUA_GLOBALSINDEX, name);
    }

    // #define lua_register(L,n,f) (lua_pushcfunction(L, (f)), lua_setglobal(L, (n)))
    // #define lua_pushcfunction(L,f)	lua_pushcclosure(L, (f), 0)
    // #define lua_setglobal(L,s)	lua_setfield(L, LUA_GLOBALSINDEX, (s))
    pub fn registerGlobalFunc(self: *Lua, name: CString, func: LuaFunction) void {
        c.lua_pushcclosure(self.state, func, 0);
        self.setGlobal(name);
    }

    fn check(res: c_int) !void {
        if (res > 0) return error.BadValue;
    }

    // #define luaL_dostring(L, s)\
    // (luaL_loadstring(L, s) || lua_pcall(L, 0, LUA_MULTRET, 0))
    pub fn evalString(self: *Lua, code: CString) !void {
        Lua.check(c.luaL_loadstring(self.state, code)) catch |err| {
            _ = luaPrint(self.state);
            return err;
        };
        try Lua.check(c.lua_pcall(self.state, 0, c.LUA_MULTRET, 0));
    }

    pub fn evalFile(self: *Lua, fileName: CString) !void {
        Lua.check(c.luaL_loadfile(self.state, fileName)) catch |err| {
            _ = luaPrint(self.state);
            return err;
        };
        try Lua.check(c.lua_pcall(self.state, 0, c.LUA_MULTRET, 0));
    }

    // LUA_API int   (lua_gettop) (lua_State *L);
    pub fn getTop(self: *Lua) u32 {
        return @bitCast(u32, c.lua_gettop(self.state));
    }
    // LUA_API void  (lua_settop) (lua_State *L, int idx);
    pub fn setTop(self: *Lua, n: u32) void {
        return c.lua_settop(self.state, @bitCast(c_int, n));
    }
    // LUA_API void  (lua_pushvalue) (lua_State *L, int idx);
    // LUA_API void  (lua_remove) (lua_State *L, int idx);
    // LUA_API void  (lua_insert) (lua_State *L, int idx);
    // LUA_API void  (lua_replace) (lua_State *L, int idx);
    // LUA_API int   (lua_checkstack) (lua_State *L, int sz);

    // LUA_API void  (lua_xmove) (lua_State *from, lua_State *to, int n);

    // LUA_API int             (lua_isnumber) (lua_State *L, int idx);
    pub fn isNumber(self: *Lua, index: u32) bool {
        return 0 != c.lua_isnumber(@bitCast(c_int, index));
    }
    // LUA_API int             (lua_isstring) (lua_State *L, int idx);
    // LUA_API int             (lua_iscfunction) (lua_State *L, int idx);
    // LUA_API int             (lua_isuserdata) (lua_State *L, int idx);
    // LUA_API int             (lua_type) (lua_State *L, int idx);
    pub fn getType(self: *Lua, index: u32) i32 {
        return @bitCast(i32, c.lua_type(self.state, @bitCast(c_int, index)));
    }
    // LUA_API const char     *(lua_typename) (lua_State *L, int tp);

    // LUA_API lua_Number      (lua_tonumber) (lua_State *L, int idx);
    pub fn getNumber(self: *Lua, index: u32) LuaNumber {
        return c.lua_tonumber(self.state, @bitCast(c_int, index));
    }
    // LUA_API lua_Integer     (lua_tointeger) (lua_State *L, int idx);
    pub fn getInteger(self: *Lua, index: u32) LuaInteger {
        return c.lua_tointeger(self.state, @bitCast(c_int, index));
    }
    // LUA_API int             (lua_toboolean) (lua_State *L, int idx);
    pub fn getBool(self: *Lua, index: u32) bool {
        return 0 != c.lua_toboolean(self.state, @bitCast(c_int, index));
    }
    // LUA_API const char     *(lua_tolstring) (lua_State *L, int idx, size_t *len);
    pub fn getString(self: *Lua, index: u32) ?CString {
        return c.lua_tolstring(self.state, @bitCast(c_int, index), null);
    }
    // LUA_API size_t          (lua_objlen) (lua_State *L, int idx);
    // LUA_API lua_CFunction   (lua_tocfunction) (lua_State *L, int idx);
    // LUA_API void	          *(lua_touserdata) (lua_State *L, int idx);
    // LUA_API lua_State      *(lua_tothread) (lua_State *L, int idx);
    // LUA_API const void     *(lua_topointer) (lua_State *L, int idx);

    // LUA_API void  (lua_pushnil) (lua_State *L);
    pub fn pushNil(self: *Lua) void {
        c.lua_pushnil(self.State);
    }
    // LUA_API void  (lua_pushnumber) (lua_State *L, lua_Number n);
    pub fn pushNumber(self: *Lua, num: LuaNumber) void {
        c.lua_pushnumber(self.state, @bitCast(c_longdouble, num));
    }
    // LUA_API void  (lua_pushinteger) (lua_State *L, lua_Integer n);
    // LUA_API void  (lua_pushlstring) (lua_State *L, const char *s, size_t l);
    // LUA_API void  (lua_pushstring) (lua_State *L, const char *s);
    // LUA_API const char *(lua_pushvfstring) (lua_State *L, const char *fmt, va_list argp);
    // LUA_API const char *(lua_pushfstring) (lua_State *L, const char *fmt, ...);
    // LUA_API void  (lua_pushcclosure) (lua_State *L, lua_CFunction fn, int n);
    // LUA_API void  (lua_pushboolean) (lua_State *L, int b);
    // LUA_API void  (lua_pushlightuserdata) (lua_State *L, void *p);
    // LUA_API int   (lua_pushthread) (lua_State *L);
};

pub extern fn luaPrint(state: ?LuaState) c_int {
    var lua = Lua.init(state);
    const top = lua.getTop();
    var i = top - top + 1;
    while (i <= top) : (i += 1) {
        if (lua.getString(i)) |cstr| {
            std.debug.warn("{}\n", str(cstr));
        }
    }
    return 0;
}

pub fn main() anyerror!void {
    var lua = Lua.init(null);
    defer lua.deinit();

    lua.openLibs();
    lua.setPanicFunc(luaPrint);
    lua.registerGlobalFunc(c"print", luaPrint);

    lua.evalString(c"print('Hello from luajit', 1, 2, 'test')") catch {
        std.debug.warn("Error when executing Lua code");
    };

    warn("RANDOM check: {}\n", lua.getRandom());

    var buf: [8]u8 = undefined;
    try std.os.getRandomBytes(buf[0..]);
    const seed = mem.readIntLE(u64, buf[0..8]);
    var rng = rand.DefaultPrng.init(seed);

    SDL.check(c.SDL_Init(c.SDL_INIT_VIDEO)) catch {
        return SDL.logFatal(c"Unable to initialize SDL: %s");
    };
    defer c.SDL_Quit();

    const window = c.SDL_CreateWindow(
        c"GIZ",
        SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED,
        976, 720, c.SDL_WINDOW_OPENGL)
        orelse {
            return SDL.logFatal(c"Unable to create window: %s");
    };
    defer c.SDL_DestroyWindow(window);

    const renderer = c.SDL_CreateRenderer(window, -1, 0) orelse {
        return SDL.logFatal(c"Unable to create renderer: %s");
    };
    defer c.SDL_DestroyRenderer(renderer);

    const targetFps = 60;

    var delay: u32 = 0;
    var delta: u32 = 0;

    var fpsMan: c.FPSmanager = undefined;
    var fpsManPtr: ?[*]c.FPSmanager = @ptrCast([*]c.FPSmanager, &fpsMan);
    c.SDL_initFramerate(fpsManPtr);
    SDL.check(c.SDL_setFramerate(fpsManPtr, 60)) catch {
        return SDL.logFatal(c"Error initializing (set) framerate controller: %s");
    };

    var game_data = init: {
        const count = 50;
        var initial_value: [count]c.SDL_Rect = undefined;
        for (initial_value) |*rect, i| {
            rect.* = c.SDL_Rect {
                .x = 50,
                .y = 50,
                .w = 50,
                .h = 50,
            };
        }
        break :init initial_value[0..];
    };

    var quit = false;
    while (!quit) {
        var event: c.SDL_Event = undefined;
        while (SDL_PollEvent(&event) != 0) {
            switch (event.@"type") {
                c.SDL_QUIT => {
                    quit = true;
                },
                c.SDL_KEYDOWN => {
                    switch (event.key.keysym.@"sym") {
                        c.SDLK_q => {
                            quit = true;
                        },
                        c.SDLK_w => {
                            warn("DELAY: {} || DELTA: {}\n", delay, delta);
                        },
                        else => {},
                    }
                },
                else => {},
            }
        }

        // clear color
        _ = c.SDL_SetRenderDrawColor(renderer, 0, 80, 160, 155);
        _ = c.SDL_RenderClear(renderer);

        var ww: c_int = undefined;
        var wh: c_int = undefined;
        c.SDL_GetWindowSize(window, @ptrCast(?[*]c_int, &ww), @ptrCast(?[*]c_int, &wh));

        const factor = delta / 1000;
        for (game_data) |rec| {
            var rect = rec;
            const dx = rng.random.uintLessThan(u32, 10);
            (&rect).*.x = rect.x + 1;
                //@bitCast(c_int, factor * dx);

            _ = c.SDL_SetRenderDrawColor(
                renderer,
                155 + rng.random.uintLessThan(u8, 100),
                155 + rng.random.uintLessThan(u8, 100),
                155 + rng.random.uintLessThan(u8, 100),
                255);

            // Render rect
            _ = c.SDL_RenderFillRect(renderer, @ptrCast(?[*]c.SDL_Rect, &rect));
        }

        c.SDL_RenderPresent(renderer);

        delay = c.SDL_GetTicks();
        delta = c.SDL_framerateDelay(fpsManPtr);
        delay = c.SDL_GetTicks() - delay;
    }
}


test "luajit" {

    //var lua = Lua.init(null);
    //defer lua.deinit();
    //lua.openLibs();
    //lua.setPanicFunc(luaPrint);

    //lua.pushNumber(10);
    //assert(lua.isNumber(1));
}
