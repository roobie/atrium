const std = @import("std");
const mem = std.mem;

const c = @import("clibs.zig").c;

fn str(cstr: CString) String {
    return mem.toSliceConst(u8, cstr);
}

// LUA_API lua_State *(lua_newstate) (lua_Alloc f, void *ud);
pub const LuaState = *c.struct_lua_State;
pub const String = []const u8;
pub const CString = [*]const u8;
pub const LuaFunction = extern fn(?LuaState) c_int;
pub const LuaNumber = f64;
pub const LuaInteger = i64;


// #define lua_open()	luaL_newstate()
pub fn init(aState: ?LuaState) Lua {
    return Lua {
        .state = aState orelse c.luaL_newstate() orelse unreachable,
    };
}

pub const Lua = struct {
    state: LuaState,

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
    var lua = init(state);
    const top = lua.getTop();
    var i = top - top + 1;
    while (i <= top) : (i += 1) {
        if (lua.getString(i)) |cstr| {
            std.debug.warn("{}\n", str(cstr));
        }
    }
    return 0;
}
