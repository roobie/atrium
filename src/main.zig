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

const windowWidth = 976;
const windowHeight = 720;

const Entity = struct {
    id: usize,
    momentum: linalg.Vec2,
    position: linalg.Vec2,
    dimensions: linalg.Vec2,
    base_color: [4]u8,

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

const World = struct {
    entities: []Entity,
};

var e1: Entity = Entity {
    .momentum = linalg.Vec2.make(100.0, 100.0),
    .sprite = c.SDL_Rect { .x = 10, .y = 10, .w = 10, .h = 10},
};

const startEntityCount = 20;

fn populateEntities(rng: *rand.Xoroshiro128, arr: *[startEntityCount]Entity) void {
    var i: usize = 0;
    while (i < startEntityCount) : (i += 1) {
        arr[i] = Entity {
            .id = 1,
            .position = linalg.Vec2.make(windowWidth / 2, windowHeight / 2),
            .dimensions = linalg.Vec2.make(10, 10),
            .momentum = linalg.Vec2.make(0, 0),
            .base_color = []u8 {
                55 + rng.random.uintLessThan(u8, 100),
                55 + rng.random.uintLessThan(u8, 100),
                55 + rng.random.uintLessThan(u8, 100),
                55 + rng.random.uintLessThan(u8, 200),
            }
        };
    }
}

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

    var entities: [startEntityCount]Entity = undefined;
    populateEntities(&rng, &entities);
    const world = World {
        .entities = entities[0..],
    };
    var worldPtr = &world;

    sdl.check(c.SDL_Init(c.SDL_INIT_VIDEO|c.SDL_INIT_GAMECONTROLLER)) catch {
        return sdl.logFatal(c"Unable to initialize SDL: %s");
    };
    defer c.SDL_Quit();

    const wflags = c.SDL_WINDOW_BORDERLESS
        //|c.SDL_WINDOW_RESIZABLE
        |c.SDL_WINDOW_OPENGL;
    const window = c.SDL_CreateWindow(
        c"GIZ",
        sdl.SDL_WINDOWPOS_UNDEFINED, sdl.SDL_WINDOWPOS_UNDEFINED,
        windowWidth, windowHeight,
        wflags)
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

    var _x: c_int = 0;
    _ = c.SDL_GL_SetAttribute(@bitCast(c.SDL_GLattr, _x + c.SDL_GL_CONTEXT_FLAGS),
                              c.SDL_GL_CONTEXT_FORWARD_COMPATIBLE_FLAG);
    _ = c.SDL_GL_SetAttribute(@bitCast(c.SDL_GLattr, _x + c.SDL_GL_CONTEXT_PROFILE_MASK), c.SDL_GL_CONTEXT_PROFILE_CORE);
    _ = c.SDL_GL_SetAttribute(@bitCast(c.SDL_GLattr, _x + c.SDL_GL_DOUBLEBUFFER), 1);
    _ = c.SDL_GL_SetAttribute(@bitCast(c.SDL_GLattr, _x + c.SDL_GL_DEPTH_SIZE), 24);
    _ = c.SDL_GL_SetAttribute(@bitCast(c.SDL_GLattr, _x + c.SDL_GL_STENCIL_SIZE), 8);
    _ = c.SDL_GL_SetAttribute(@bitCast(c.SDL_GLattr, _x + c.SDL_GL_CONTEXT_MAJOR_VERSION), 3);
    _ = c.SDL_GL_SetAttribute(@bitCast(c.SDL_GLattr, _x + c.SDL_GL_CONTEXT_MINOR_VERSION), 2);
    _ = c.SDL_GL_SetSwapInterval(1);

    var ww: c_int = undefined;
    var wh: c_int = undefined;
    c.SDL_GetWindowSize(window, @ptrCast(?[*]c_int, &ww), @ptrCast(?[*]c_int, &wh));

    var quit = false;
    while (!quit) {
        var event: c.SDL_Event = undefined;
        while (sdl.SDL_PollEvent(&event) != 0) {
            switch (event.@"type") {
                c.SDL_QUIT => {
                    quit = true;
                },
                c.SDL_WINDOWEVENT_RESIZED => {
                    c.SDL_GetWindowSize(window, @ptrCast(?[*]c_int, &ww), @ptrCast(?[*]c_int, &wh));
                },
                c.SDL_MOUSEMOTION => {
                    warn("Mouse: {}\n", event.motion);
                },
                c.SDL_MOUSEBUTTONDOWN => {
                    warn("Mouse: {}\n", event.button);
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
        _ = c.SDL_SetRenderDrawColor(renderer, 0, 0x20, 0x60, 0x40);
        _ = c.SDL_RenderClear(renderer);

        const factor: linalg.Float = @intToFloat(linalg.Float, delta) / 1000.0;
        for (worldPtr.*.entities) |*entity, i| {
            var momentum = &entity.*.momentum;
            var position = &entity.*.position;
            var dimensions = &entity.*.dimensions;
            var base_color = &entity.*.base_color;

            position.addI(momentum);

            if (rng.random.float(f32) < 0.08) {
                const xfactor: linalg.Float = if (rng.random.boolean())
                    @intToFloat(linalg.Float, -1) else 1;
                const yfactor: linalg.Float = if (rng.random.boolean())
                    @intToFloat(linalg.Float, -1) else 1;
                momentum.x = rng.random.float(linalg.Float) *
                    @intToFloat(linalg.Float, rng.random.uintLessThan(u8, 2)) * xfactor;
                momentum.y = rng.random.float(linalg.Float) *
                    @intToFloat(linalg.Float, rng.random.uintLessThan(u8, 2)) * yfactor;
            }

            _ = c.SDL_SetRenderDrawColor(
                renderer,
                base_color.*[0],
                base_color.*[1],
                base_color.*[2],
                base_color.*[3],
            );

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
