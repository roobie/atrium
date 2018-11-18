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
    id: usize,
    momentum: linalg.Vec2,
    position: linalg.Vec2,
    dimensions: linalg.Vec2,
    //baseColor: [4]u8,

    pub fn getSprite(self: *Entity) c.SDL_Rect {
        //c.SDL_Rect {x: c_int, y: c_int,w: c_int,h: c_int,},
        return c.SDL_Rect {
            .x = @floatToInt(c_int, self.position.x),
            .y = @floatToInt(c_int, self.position.y),
            .w = @floatToInt(c_int, self.dimensions.x),
            .h = @floatToInt(c_int, self.dimensions.y),
        };
    }
};

var e1: Entity = Entity {
    .momentum = linalg.Vec2.make(100.0, 100.0),
    .sprite = c.SDL_Rect { .x = 10, .y = 10, .w = 10, .h = 10},
};

var game_data = init: {
    const count = 50;
    var initial_value: [count]Entity = undefined;
    for (initial_value) |*e, i| {
        e.* = Entity {
            .id = i,
            .position = linalg.Vec2.make(10, 10),
            .dimensions = linalg.Vec2.make(10, 10),
            .momentum = linalg.Vec2.make(15, 15),
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
        _ = c.SDL_SetRenderDrawColor(renderer, 0, 20, 60, 0x40);
        _ = c.SDL_RenderClear(renderer);

        var ww: c_int = undefined;
        var wh: c_int = undefined;
        c.SDL_GetWindowSize(window, @ptrCast(?[*]c_int, &ww), @ptrCast(?[*]c_int, &wh));

        const factor: linalg.Float = @intToFloat(linalg.Float, delta) / 1000.0;
        for (game_data) |*entity, i| {
            const momentum = entity.*.momentum;
            var position = entity.*.position;
            if (i == 0) warn("A! {} :: {}\n", entity.*.position.x, position.x);
            //entity.*.position = linalg.Vec2.make(position.x + momentum.x, position.y + momentum.y);
            //entity.*.position.addI(&momentum);
            position.addI(&momentum);
            entity.*.position.x = position.x;
            if (i == 0) warn("B! {} :: {}\n", entity.*.position.x, position.x);

            _ = c.SDL_SetRenderDrawColor(
                renderer,
                155 + rng.random.uintLessThan(u8, 100),
                155 + rng.random.uintLessThan(u8, 100),
                155 + rng.random.uintLessThan(u8, 100),
                255);

            // Render rect
            var rect = entity.getSprite();
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
