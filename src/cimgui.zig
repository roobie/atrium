
const c = @import("clibs.zig").c;

// objects
pub extern fn ImVec2_ImVec2() *c.ImVec2;

// static procedures
pub extern fn igGetIO() *c.ImGuiIO;
pub extern fn igShowDemoWindow(p_open: *bool) void;

// sdl protos
pub extern fn SDL_GetWindowSize(window: *c.SDL_Window, w: *c_int, h: *c_int) void;
pub extern fn SDL_GL_GetDrawableSize(window: *c.SDL_Window, w: *c_int, h: *c_int) void;

fn makeImVec2(x: f32, y: f32) *c.ImVec2 {
    var v = ImVec2_ImVec2();
    v.x = x;
    v.y = y;
    return v;
}

// global data
const frequency = c.SDL_GetPerformanceFrequency();
var g_window: *c.SDL_Window = undefined;

pub const GL2Impl = struct {
    pub fn init() void {
        // TODO: impl
    }
};

pub const SDL2Impl = struct {
    pub fn init(window: *c.SDL_Window) void {
        g_window = window;

        const io = igGetIO();
        // Keyboard mapping. ImGui will use those indices to peek into the io.KeysDown[] array.
        io.KeyMap[@intCast(usize, @enumToInt(c.ImGuiKey_Tab))] = c.SDL_SCANCODE_TAB;
        //io.KeyMap[@intCast(usize, c.ImGuiKey_LeftArrow)] = c.SDL_SCANCODE_LEFT;
        //io.KeyMap[@intCast(usize, c.ImGuiKey_RightArrow)] = c.SDL_SCANCODE_RIGHT;
        //io.KeyMap[c.ImGuiKey_UpArrow] = c.SDL_SCANCODE_UP;
        //io.KeyMap[c.ImGuiKey_DownArrow] = c.SDL_SCANCODE_DOWN;
        //io.KeyMap[c.ImGuiKey_PageUp] = c.SDL_SCANCODE_PAGEUP;
        //io.KeyMap[c.ImGuiKey_PageDown] = c.SDL_SCANCODE_PAGEDOWN;
        //io.KeyMap[c.ImGuiKey_Home] = c.SDL_SCANCODE_HOME;
        //io.KeyMap[c.ImGuiKey_End] = c.SDL_SCANCODE_END;
        //io.KeyMap[c.ImGuiKey_Insert] = c.SDL_SCANCODE_INSERT;
        //io.KeyMap[c.ImGuiKey_Delete] = c.SDL_SCANCODE_DELETE;
        //io.KeyMap[c.ImGuiKey_Backspace] = c.SDL_SCANCODE_BACKSPACE;
        //io.KeyMap[c.ImGuiKey_Space] = c.SDL_SCANCODE_SPACE;
        //io.KeyMap[c.ImGuiKey_Enter] = c.SDL_SCANCODE_RETURN;
        //io.KeyMap[c.ImGuiKey_Escape] = c.SDL_SCANCODE_ESCAPE;
        //io.KeyMap[c.ImGuiKey_A] = c.SDL_SCANCODE_A;
        //io.KeyMap[c.ImGuiKey_C] = c.SDL_SCANCODE_C;
        //io.KeyMap[c.ImGuiKey_V] = c.SDL_SCANCODE_V;
        //io.KeyMap[c.ImGuiKey_X] = c.SDL_SCANCODE_X;
        //io.KeyMap[c.ImGuiKey_Y] = c.SDL_SCANCODE_Y;
        //io.KeyMap[c.ImGuiKey_Z] = c.SDL_SCANCODE_Z;
    }
    pub fn deinit() void {
        // TODO: implement
    }

    pub fn newFrame(dt: f32) void {
        var io = igGetIO();
        // Setup display size (every frame to accommodate for window resizing)
        var w: c_int = undefined;
        var h: c_int = undefined;
        var display_w: c_int = undefined;
        var display_h: c_int = undefined;
        _ = SDL_GetWindowSize(g_window, &w, &h);
        SDL_GL_GetDrawableSize(g_window, &display_w, &display_h);
        io.DisplaySize = makeImVec2(@intToFloat(f32, w), @intToFloat(f32, h));
        io.DisplayFramebufferScale = makeImVec2(
            @intToFloat(f32, @divTrunc(display_w, w)),
            @intToFloat(f32, @divTrunc(display_h, h)));

        // Setup time step (we don't use SDL_GetTicks() because it is using millisecond resolution)
        // const current_time = c.SDL_GetPerformanceCounter();
        io.DeltaTime = dt;
    }
};

