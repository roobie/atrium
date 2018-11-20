const mem = @import("std").mem;

pub const c = @cImport({
    @cInclude("lua.h");
    @cInclude("lualib.h");
    @cInclude("lauxlib.h");
    @cInclude("luajit.h");

    @cInclude("gl.h");
    @cInclude("cblas.h");

    @cInclude("SDL2/SDL.h");
    @cInclude("SDL2/SDL2_framerate.h");
    @cInclude("SDL2/SDL_image.h");
    @cInclude("SDL2/SDL_ttf.h");

    @cInclude("KW_gui.h");
    @cInclude("KW_button.h");
    @cInclude("KW_renderdriver_sdl2.h");

    // @cDefine("CIMGUI_DEFINE_ENUMS_AND_STRUCTS", "1");
    // @cInclude("cimgui.h");
    // cimgui
    // @cInclude("SDL2/SDL_syswm.h");
});

pub const CString = [*]const u8;
pub const String = []const u8;

pub fn str(cstring: ?CString) []const u8 {
    if (cstring) |s| {
        return mem.toSliceConst(u8, s);
    } else {
        return "<null c_string>";
    }
}

pub fn cstr(str: String) CString {
    return @ptrCast(CString, &str);
}
