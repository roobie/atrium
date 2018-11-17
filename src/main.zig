const std = @import("std");
const mem = std.mem;

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
    pub fn eval(self: *Lua, code: CString) !void {
        Lua.check(c.luaL_loadstring(self.state, code)) catch {
            _ = luaPrint(self.state);
        };
        try Lua.check(c.lua_pcall(self.state, 0, c.LUA_MULTRET, 0));
    }

    pub fn getTop(self: *Lua) u32 {
        return @bitCast(u32, c.lua_gettop(self.state));
    }

    // #define lua_tostring(L,i)	lua_tolstring(L, (i), NULL)
    pub fn getString(self: *Lua, index: u32) ?CString {
        return c.lua_tolstring(self.state, @bitCast(c_int, index), null);
    }
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
    lua.openLibs();

    lua.registerGlobalFunc(c"print", luaPrint);

    lua.eval(c"print('Hello from luajit', 1, 2, 'test')") catch {
        std.debug.warn("Error when executing Lua code");
    };
}
