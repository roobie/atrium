

pub const c = @cImport({
    @cInclude("lua.h");
    @cInclude("lualib.h");
    @cInclude("lauxlib.h");
    @cInclude("luajit.h");

    @cInclude("SDL2/SDL.h");
    @cInclude("SDL2/SDL2_framerate.h");
    @cInclude("SDL2/SDL_image.h");
    @cInclude("SDL2/SDL_ttf.h");
});
