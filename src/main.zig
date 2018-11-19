const std = @import("std");
const mem = std.mem;
const math = std.math;
const rand = std.rand;
const ArrayList = std.ArrayList;

const assert = @import("std").debug.assert;
const warn = @import("std").debug.warn;

const _lua = @import("lua.zig");
const sdl = @import("sdl.zig");

const linalg = @import("linalg.zig");

const clibs = @import("clibs.zig");
const c = clibs.c;

const GameError = error {
    EntityCreationError,
};

const windowWidth = 976;
const windowHeight = 720;

const Camera = struct {
    position: linalg.Vec2,
    zoom: linalg.Float,
};

const Entity = struct {
    id: usize,
    momentum: linalg.Vec2,
    position: linalg.Vec2,
    dimensions: linalg.Vec2,
    base_color: [4]u8,

    pub fn getSpriteT(self: *Entity, transform: *linalg.Vec2, scale: linalg.Float) c.SDL_Rect {
        const pos = self.position.add(transform);
        const dim = self.dimensions.scale(scale);

        return c.SDL_Rect {
            .x = @floatToInt(c_int, pos.x),
            .y = @floatToInt(c_int, pos.y),
            .w = @floatToInt(c_int, dim.x),
            .h = @floatToInt(c_int, dim.y),
        };
    }

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

const EntityList = ArrayList(Entity);
const World = struct {
    entities: EntityList,
};

var e1: Entity = Entity {
    .momentum = linalg.Vec2.make(100.0, 100.0),
    .sprite = c.SDL_Rect { .x = 10, .y = 10, .w = 10, .h = 10},
};

const startEntityCount = 2;

fn makeRandomEntity(rng: *rand.Xoroshiro128, nextId: usize) Entity {
    return Entity {
        .id = nextId,
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
fn populateEntities(rng: *rand.Xoroshiro128, lst: *EntityList) void {
    var i: usize = 0;
    while (i < startEntityCount) : (i += 1) {
        lst.append(makeRandomEntity(rng, i)) catch return ;
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

    var camera = Camera {
        .position = linalg.Vec2.make(0, 0),
        .zoom = 1.0,
    };
    var cameraPtr = &camera;

    var entities: [startEntityCount]Entity = undefined;
    var allocator = &std.heap.DirectAllocator.init().allocator;
    var world = World {
        .entities = EntityList.init(allocator),
    };
    defer world.entities.deinit();
    populateEntities(&rng, &world.entities);
    var worldPtr = &world;

    sdl.check(c.SDL_Init(c.SDL_INIT_VIDEO|c.SDL_INIT_GAMECONTROLLER)) catch {
        return sdl.logFatal(c"Unable to initialize SDL: %s");
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

    var delay: u32 = 0;
    var delta: u32 = 0;

    var fpsMan: c.FPSmanager = undefined;
    var fpsManPtr: ?[*]c.FPSmanager = @ptrCast([*]c.FPSmanager, &fpsMan);
    c.SDL_initFramerate(fpsManPtr);
    const targetFps: u32 = 200;
    sdl.check(c.SDL_setFramerate(fpsManPtr, targetFps)) catch {
        return sdl.logFatal(c"Error initializing (set) framerate controller: %s");
    };

    var font: *c.TTF_Font = c.TTF_OpenFont(c"assets/DejaVuSansMono.ttf", 16) orelse {
        // TODO make better
        warn("{}\n", clibs.str(c.TTF_GetError()));
        return error.BadValue;
    };

    // as TTF_RenderText_Solid could only be used on SDL_Surface then you have to
    // create the surface first
    // defer destroy
    var surfaceMessage: ?[*]c.SDL_Surface = c.TTF_RenderText_Solid(
        font, c"put your text here yasddid aisdfiasdf aisdif as", c.SDL_Color {.r = 255, .g = 255, .b = 255, .a = 255, });
    //now you can convert it into a texture
    var message: *c.SDL_Texture = c.SDL_CreateTextureFromSurface(renderer, surfaceMessage).?;

    var tw: c_int = undefined;
    var th: c_int = undefined;
    _ = c.TTF_SizeText(
        font,
        c"put your text here yasddid aisdfiasdf aisdif as",
        @ptrCast(?[*]c_int, &tw),
        @ptrCast(?[*]c_int, &th),
    );
    var message_rect: c.SDL_Rect = c.SDL_Rect {
        .x = 20,  //controls the rect's x coordinate 
        .y = 20,  // controls the rect's y coordinte
        .w = tw, // controls the width of the rect
        .h = th, // controls the height of the rect
    }; //create a rect

    var _x: c_int = 0;
    _ = c.SDL_GL_SetAttribute(@bitCast(c.SDL_GLattr, _x + c.SDL_GL_CONTEXT_FLAGS),
                              c.SDL_GL_CONTEXT_FORWARD_COMPATIBLE_FLAG);
    _ = c.SDL_GL_SetAttribute(@bitCast(c.SDL_GLattr, _x + c.SDL_GL_CONTEXT_PROFILE_MASK),
                              c.SDL_GL_CONTEXT_PROFILE_CORE);
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
                            const fr = c.SDL_getFramerate(fpsManPtr);
                            warn("[Actual delay: {} ; frame delta: {} ; FrameRate: {}]\n",
                                 delay, delta, fr);
                            warn("[EntityCount: {}]\n", worldPtr.*.entities.len);
                        },
                        c.SDLK_d => {
                            var e = makeRandomEntity(&rng, worldPtr.*.entities.len + 1);
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
                            cameraPtr.*.zoom += 0.1;
                        },
                        c.SDLK_z => {
                            cameraPtr.*.zoom -= 0.1;
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
                        c.SDLK_UP => {
                            cameraPtr.*.position.addI(&linalg.Vec2.make(0, 5));
                        },
                        c.SDLK_DOWN => {
                            cameraPtr.*.position.addI(&linalg.Vec2.make(0, -5));
                        },
                        c.SDLK_RIGHT => {
                            cameraPtr.*.position.addI(&linalg.Vec2.make(-5, 0));
                        },
                        c.SDLK_LEFT => {
                            cameraPtr.*.position.addI(&linalg.Vec2.make(5, 0));
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
        for (worldPtr.*.entities.toSlice()) |*entity, i| {
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
                    @intToFloat(linalg.Float, rng.random.uintLessThan(u8, 4)) * xfactor;
                momentum.y = rng.random.float(linalg.Float) *
                    @intToFloat(linalg.Float, rng.random.uintLessThan(u8, 4)) * yfactor;
            } else {
                if (rng.random.float(f32) < 0.3) {
                    momentum.x = 0.0;
                    momentum.y = 0.0;
                }
            }

            _ = c.SDL_SetRenderDrawColor(
                renderer,
                base_color.*[0],
                base_color.*[1],
                base_color.*[2],
                base_color.*[3],
            );

            // Render rect
            var rect = entity.getSpriteT(&camera.position, camera.zoom);
            _ = c.SDL_RenderFillRect(renderer, @ptrCast(?[*]c.SDL_Rect, &rect));
        }

        if (rng.random.float(f32) < 0.001) {
            worldPtr.*.entities.append(makeRandomEntity(&rng, worldPtr.*.entities.len + 1)) catch {
                return error.EntityCreationError;
            };
        }

        _ = c.SDL_RenderCopy(renderer, message, null, @ptrCast(?[*]c.SDL_Rect, &message_rect));
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
