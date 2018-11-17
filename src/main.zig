const std = @import("std");
const mem = std.mem;
const assert = @import("std").debug.assert;

const c = @cImport({
    @cInclude("lua.h");
    @cInclude("lualib.h");
    @cInclude("lauxlib.h");
    @cInclude("luajit.h");
});

const LuaState = *c.struct_lua_State;
const String = []const u8;
const CString = [*]const u8;
const LuaFunction = extern fn(?LuaState) c_int;

fn str(cstr: CString) String {
    return mem.toSliceConst(u8, cstr);
}

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

    // #define lua_register(L,n,f) (lua_pushcfunction(L, (f)), lua_setglobal(L, (n)))
    // #define lua_pushcfunction(L,f)	lua_pushcclosure(L, (f), 0)
    // #define lua_setglobal(L,s)	lua_setfield(L, LUA_GLOBALSINDEX, (s))
    pub fn registerGlobalFunc(self: *Lua, name: CString, func: LuaFunction) void {
        c.lua_pushcclosure(self.state, func, 0);
        c.lua_setfield(self.state, c.LUA_GLOBALSINDEX, name);
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
    // LUA_API const char     *(lua_typename) (lua_State *L, int tp);

    // #define lua_tostring(L,i)	lua_tolstring(L, (i), NULL)
    pub fn getString(self: *Lua, index: u32) ?CString {
        return c.lua_tolstring(self.state, @bitCast(c_int, index), null);
    }

    // LUA_API void  (lua_pushnil) (lua_State *L);
    // LUA_API void  (lua_pushnumber) (lua_State *L, lua_Number n);
    pub fn pushNumber(self: *Lua, num: usize) void {
        c.lua_pushnumber(self.state, @bitCast(c_int, num));
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
}


test "luajit" {

    var lua = Lua.init(null);
    defer lua.deinit();
    lua.openLibs();
    lua.setPanicFunc(luaPrint);

    lua.pushNumber(10);
    assert(lua.isNumber(1));
}
