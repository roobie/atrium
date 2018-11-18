const std = @import("std");
const mem = std.mem;
const math = @import("std").math;
const rand = @import("std").rand;

const assert = @import("std").debug.assert;
const warn = @import("std").debug.warn;

const _lua = @import("lua.zig");
const sdl = @import("sdl.zig");

const linalg = @import("linalg.zig");

const c = @import("clibs.zig").c;


const Entity = struct {
    momentum: linalg.Vec2,
    sprite: c.SDL_Rect,
};

var e1: Entity = Entity {
    .momentum = linalg.Vec2.make(1.0, 1.0),
    .sprite = c.SDL_Rect { .x = 10, .y = 10, .w = 10, .h = 10},
};

var game_data = init: {
    const count = 50;
    var initial_value: [count]Entity = undefined;
    for (initial_value) |*e, i| {
        e.* = Entity {
            .momentum = linalg.Vec2.make(1, 1),
            .sprite = c.SDL_Rect {
                .x = 50,
                .y = 50,
                .w = 50,
                .h = 50,
            },
        };
    }
    break :init initial_value[0..];
};

pub fn main() anyerror!void {

    var lua = _lua.init(null);
    defer lua.deinit();

    lua.openLibs();
    lua.setPanicFunc(_lua.luaPrint);
    lua.registerGlobalFunc(c"print", _lua.luaPrint);

    lua.evalString(c"print('Hello from luajit', 1, 2, 'test')") catch {
        std.debug.warn("Error when executing Lua code");
    };

    warn("RANDOM check: {}\n", lua.getRandom());

    var buf: [8]u8 = undefined;
    try std.os.getRandomBytes(buf[0..]);
    const seed = mem.readIntLE(u64, buf[0..8]);
    var rng = rand.DefaultPrng.init(seed);

    sdl.check(c.SDL_Init(c.SDL_INIT_VIDEO)) catch {
        return sdl.logFatal(c"Unable to initialize SDL: %s");
    };
    defer c.SDL_Quit();

    const window = c.SDL_CreateWindow(
        c"GIZ",
        sdl.SDL_WINDOWPOS_UNDEFINED, sdl.SDL_WINDOWPOS_UNDEFINED,
        976, 720, c.SDL_WINDOW_OPENGL)
        orelse {
            return sdl.logFatal(c"Unable to create window: %s");
    };
    defer c.SDL_DestroyWindow(window);

    const renderer = c.SDL_CreateRenderer(window, -1, 0) orelse {
        return sdl.logFatal(c"Unable to create renderer: %s");
    };
    defer c.SDL_DestroyRenderer(renderer);

    const targetFps = 60;

    var delay: u32 = 0;
    var delta: u32 = 0;

    var fpsMan: c.FPSmanager = undefined;
    var fpsManPtr: ?[*]c.FPSmanager = @ptrCast([*]c.FPSmanager, &fpsMan);
    c.SDL_initFramerate(fpsManPtr);
    sdl.check(c.SDL_setFramerate(fpsManPtr, 60)) catch {
        return sdl.logFatal(c"Error initializing (set) framerate controller: %s");
    };

    var quit = false;
    while (!quit) {
        var event: c.SDL_Event = undefined;
        while (sdl.SDL_PollEvent(&event) != 0) {
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
        for (game_data) |entity| {
            var rect = entity.sprite;
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
    //lua.setPanicFunc(_lua.luaPrint);

    //lua.pushNumber(10);
    //assert(lua.isNumber(1));
}
