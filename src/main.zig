const std = @import("std");
const mem = std.mem;
const fmt = std.fmt;
const math = std.math;
const rand = std.rand;
const ArrayList = std.ArrayList;

const assert = @import("std").debug.assert;
const warn = @import("std").debug.warn;

const _lua = @import("lua.zig");
const sdl = @import("sdl.zig");
// const cimgui = @import("cimgui.zig");

const linalg = @import("linalg.zig");
const Vec2 = linalg.Vec2;
const math_ext = @import("math_ext.zig");

const clibs = @import("clibs.zig");
const c = clibs.c;

const common = @import("common.zig");
const Camera = common.Camera;
const WindowProperties = common.WindowProperties;
const inv_y = common.inv_y;
const entities = @import("entities.zig");
const Entity = entities.Entity;
const EntityList = entities.EntityList;
const World = @import("world.zig").World;
const random_stuff = @import("random_stuff.zig");

const logic = @import("logic.zig");
var window_properties: WindowProperties = undefined;

pub fn main() anyerror!void {
    var lua = _lua.fullInit();
    defer lua.deinit();

    // lua.evalString(c"print('Hello from luajit', 1, 2, 'test')") catch {
    //     std.debug.warn("Error when executing Lua code");
    // };

    // warn("RANDOM check: {}\n", lua.getRandom());
    {
        c.lua_createtable(lua.state, 0, 1 << 4);
        lua.setField(c.LUA_GLOBALSINDEX, c"atrium");
    }

    lua.evalFile(c"main.lua") catch {
        return sdl.logFatalExt(
            error.GameInitializationFailed,
            c"File `main.lua` not found or contains syntax errors.");
    };

    {
        const top = lua.getTop();
        defer lua.setTop(top);
        lua.getGlobal(c"atrium");
        lua.getField(top + 1, c"init");
        lua.call(0, 0);
    }

    var rng = common.initRng() catch {
        return sdl.logFatalExt(
            error.GameInitializationFailed,
            c"Random number generator failed to initialize.");
    };

    window_properties = WindowProperties {
        .default_width = 1200,
        .default_height = 720,

        .current_width = undefined,
        .current_height = undefined,

        .relative_center = Vec2.make(0, 0),
    };


    var camera = Camera {
        .position = Vec2.make(0, 0),
        .scale = 1.0,
        .center = Vec2.make(0, 0),
        .rotation = 0.0,
    };
    var cameraPtr = &camera;

    var membuf: [1024]u8 = undefined;
    var allocator = &std.heap.ThreadSafeFixedBufferAllocator.init(&membuf).allocator;
    var world = World {
        .entities = EntityList.init(allocator),
    };
    defer world.entities.deinit();
    random_stuff.populateEntities(10, &rng, &world.entities);
    var worldPtr = &world;

    sdl.check(c.SDL_Init(c.SDL_INIT_VIDEO|c.SDL_INIT_GAMECONTROLLER)) catch {
        return sdl.logFatal(sdl.Module.SDL, c"Unable to initialize SDL: %s");
    };
    defer c.SDL_Quit();

    sdl.check(c.TTF_Init()) catch |err| {
        warn("TTF err: {}\n", clibs.str(c.TTF_GetError()));
        return err;
    };
    defer c.TTF_Quit();

    const wflags = c.SDL_WINDOW_BORDERLESS
        //|c.SDL_WINDOW_RESIZABLE
        |c.SDL_WINDOW_OPENGL;
    const window = c.SDL_CreateWindow(
        c"GIZ",
        sdl.SDL_WINDOWPOS_UNDEFINED, sdl.SDL_WINDOWPOS_UNDEFINED,
        window_properties.default_width, window_properties.default_height,
        wflags)
        orelse {
            return sdl.logFatal(sdl.Module.SDL, c"Unable to create window: %s");
    };
    defer c.SDL_DestroyWindow(window);

    var context = c.SDL_GL_CreateContext(window);
    defer c.SDL_GL_DeleteContext(context);

    //var ig_context = c.igCreateContext(null);
    //cimgui.SDL2Impl.init(window);
    //cimgui.GL2Impl.init();

    const renderer = c.SDL_CreateRenderer(window, -1, 0) orelse {
        return sdl.logFatal(sdl.Module.SDL, c"Unable to create renderer: %s");
    };
    defer c.SDL_DestroyRenderer(renderer);

    const driver = c.KW_CreateSDL2RenderDriver(renderer, window);
    const set = c.KW_LoadSurface(driver, c"assets/tileset.png");
    const gui = c.KW_Init(driver, set);
    const font = c.KW_LoadFont(driver, c"assets/DejaVuSansMono.ttf", 12);
    c.KW_SetFont(gui, font);
    defer {
        c.KW_Quit(gui);
        c.KW_ReleaseFont(driver, font);
        c.KW_ReleaseSurface(driver, set);
        c.KW_ReleaseRenderDriver(driver);
    }
    var frame: *c.KW_Widget = undefined;
    const frame_geom = c.KW_Rect {
        .x = 10, .y = 10, .w = 100, .h = 100
    };
    //frame = clibs.KW_CreateFrame(gui, null, &frame_geom);

    var delay: u32 = 0;
    var delta: u32 = 0;

    var fpsMan: c.FPSmanager = undefined;
    var fpsManPtr: ?[*]c.FPSmanager = @ptrCast([*]c.FPSmanager, &fpsMan);
    c.SDL_initFramerate(fpsManPtr);
    const targetFps: u32 = 25;
    sdl.check(c.SDL_setFramerate(fpsManPtr, targetFps)) catch {
        return sdl.logFatal(sdl.Module.SDL, c"Error initializing (set) framerate controller: %s");
    };

    sdl.initTextManager() catch |err| {
        return sdl.logFatal(sdl.Module.TTF, c"Error initTextManager: %s");
    };

    sdl.initSdlGlAttrs() catch |err| {
        return sdl.logFatal(sdl.Module.SDL, c"Error initSdlGlAttrs: %s");
    };

    resized(window, &window_properties);
    //cameraPtr.*.position.subI(&window_properties.relative_center.mul(&inv_y));
    cameraPtr.*.center.set(&window_properties.relative_center);

    var message = c"hello from text in SDL2";
    var t = sdl.Text.init(message);
    defer t.deinit();

    const sample_size = 1 << 5;
    var fps_samples: [sample_size]f64 = undefined;
    mem.set(f64, fps_samples[0..], 1.0);

    var quit = false;
    var pause = false;
    while (!quit) {
        //quit = true;
        var event: c.SDL_Event = undefined;
        while (sdl.SDL_PollEvent(&event) != 0) {
            switch (event.@"type") {
                c.SDL_QUIT => {
                    quit = true;
                },
                c.SDL_WINDOWEVENT_EXPOSED, c.SDL_WINDOWEVENT_RESIZED => {
                    resized(window, &window_properties);
                },
                c.SDL_MOUSEMOTION => {
                    // Mouse: struct_SDL_MouseMotionEvent{ .type = 1024, .timestamp = 19349, .windowID = 2, .which = 0, .state = 0, .x = 446, .y = 263, .xrel = -7, .yrel = -32 }

                    //warn("Mouse: {}\n", event.motion);
                },
                c.SDL_MOUSEBUTTONDOWN => {
                    // Mouse: struct_SDL_MouseButtonEvent{ .type = 1025, .timestamp = 19509, .windowID = 2, .which = 0, .button = 1, .state = 1, .clicks = 1, .padding1 = 1, .x = 437, .y = 219 }
                    //warn("Mouse: {}\n", event.button);
                },
                c.SDL_MOUSEWHEEL => {
                    // warn("{}\n", event.wheel);
                    const min_scale: f64 = 0.1;
                    const curr_scale = cameraPtr.*.scale;
                    const new_scale = math.max(
                        min_scale,
                        curr_scale + 0.1 * @intToFloat(f64, event.wheel.y));
                    cameraPtr.*.scale = new_scale;
                },
                c.SDL_KEYDOWN => {
                    switch (event.key.keysym.@"sym") {
                        c.SDLK_q => {
                            quit = true;
                        },
                        c.SDLK_w => {
                            const fr = c.SDL_getFramerate(fpsManPtr);
                            warn("[Actual delay: {} ; frame delta: {} ; FrameRate: {}]\n",
                                 delay, delta, fr);
                            warn("[EntityCount: {}]\n", worldPtr.*.entities.len);
                        },
                        c.SDLK_d => {
                            var e = random_stuff.makeRandomEntity(&rng, worldPtr.*.entities.len + 1);
                            worldPtr.*.entities.append(e) catch {
                                return error.EntityCreationError;
                            };
                        },
                        c.SDLK_f => {
                            if (worldPtr.*.entities.len > 0) {
                                _ = worldPtr.*.entities.pop();
                            }
                        },
                        c.SDLK_a => {
                            cameraPtr.*.scale += 0.1;
                        },
                        c.SDLK_z => {
                            cameraPtr.*.scale -= 0.1;
                        },
                        c.SDLK_s => {
                            const fr = @bitCast(u32, c.SDL_getFramerate(fpsManPtr));
                            const v: u32 = 1;
                            const nv: u32 = fr + v;
                            _ = c.SDL_setFramerate(fpsManPtr, nv);
                            warn("New targetFps: {}\n", nv);
                        },
                        c.SDLK_x => {
                            const fr = @bitCast(u32, c.SDL_getFramerate(fpsManPtr));
                            const v: u32 = 1;
                            const nv: u32 = fr - v;
                            _ = c.SDL_setFramerate(fpsManPtr, nv);
                            warn("New targetFps: {}\n", nv);
                        },
                        c.SDLK_p => {
                            warn("Camera: {}\n", camera);
                        },
                        c.SDLK_SPACE => {
                            pause = !pause;
                        },
                        c.SDLK_UP => {
                            cameraPtr.*.position.addI(&linalg.Vec2.make(0, 50));
                        },
                        c.SDLK_DOWN => {
                            cameraPtr.*.position.addI(&linalg.Vec2.make(0, -50));
                        },
                        c.SDLK_RIGHT => {
                            cameraPtr.*.position.addI(&linalg.Vec2.make(50, 0));
                        },
                        c.SDLK_LEFT => {
                            cameraPtr.*.position.addI(&linalg.Vec2.make(-50, 0));
                        },
                        else => {},
                    }
                },
                else => {},
            }
        }

        // clear color
        // _ = c.SDL_SetRenderDrawColor(renderer, 0, 0x20, 0x60, 0x40);
        // _ = c.SDL_RenderClear(renderer);

        c.glClearColor(0, 0.1, 0.2, 1);
        c.glClear(c.GL_COLOR_BUFFER_BIT);

        const dt: linalg.Float = @intToFloat(linalg.Float, delta) / 1000.0;
        for (worldPtr.*.entities.toSlice()) |*entity, i| {

            var base_color = &entity.*.base_color;
            if (!pause) {
                // all entity processors here.
                logic.moveProcessor(entity, dt, &rng);
            }

            try entity.render(renderer, &camera);
        }

        if (!pause) {
            try logic.worldProcessor(worldPtr, dt, &rng);
        }

        t.render(renderer);
        t.display(renderer, &Vec2.make(10, 10));

        const frame_count = c.SDL_getFramecount(fpsManPtr);
        var fps: f64 = 1.0;
        if (delta > 0) {
            fps = 1000.0 / @intToFloat(f64, delta);
        }
        fps_samples[@intCast(usize, @mod(frame_count, sample_size))] = fps;

        const frame_rate = c.SDL_getFramerate(fpsManPtr);
        if (@mod(frame_count, frame_rate) == 0) {
            var msg_buf: [1 << 8]u8 = undefined;
            const newMessage = try fmt.bufPrint(
                msg_buf[0..],
                "Delay: {} | Delta: {} | avg. FPS: {}",
                delay, dt, math_ext.avg(f64, fps_samples[0..]));
            var tPtr = &t;
            tPtr.*.message = @ptrCast([*]const u8, &msg_buf);
        }

        c.KW_ProcessEvents(gui);
        c.KW_Paint(gui);
        //c.SDL_RenderPresent(renderer);
        c.SDL_GL_SwapWindow(window);


        delay = c.SDL_GetTicks();
        delta = c.SDL_framerateDelay(fpsManPtr);
        delay = c.SDL_GetTicks() - delay;
    }
}

fn resized (
    window: *c.SDL_Window,
    window_props: *WindowProperties
) void {
    c.SDL_GetWindowSize(
        window,
        @ptrCast(?[*]c_int, &window_props.*.current_width),
        @ptrCast(?[*]c_int, &window_props.*.current_height));
    window_props.*.relative_center.getX() = @intToFloat(linalg.Float, window_props.*.current_width) / 2.0;
    window_props.*.relative_center.getY() = @intToFloat(linalg.Float, window_props.*.current_height) / 2.0;
}

test "luajit" {

    //var lua = Lua.init(null);
    //defer lua.deinit();
    //lua.openLibs();
    //lua.setPanicFunc(_lua.luaPrint);

    //lua.pushNumber(10);
    //assert(lua.isNumber(1));
}
