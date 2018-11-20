const std = @import("std");
const mem = std.mem;
const rand = std.rand;

const linalg = @import("linalg.zig");
const Vec2 = linalg.Vec2;

const common = @import("common.zig");
const entities = @import("entities.zig");
const Entity = entities.Entity;
const World = @import("world.zig").World;
const random_stuff = @import("random_stuff.zig");

pub fn moveProcessor(entity: *Entity, dt: f64, rng: *rand.DefaultPrng) void {
    var momentum = &entity.*.momentum;
    var position = &entity.*.position;
    var dimensions = &entity.*.dimensions;

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
}

pub fn worldProcessor(world: *World, dt: f64, rng: *rand.DefaultPrng) !void {
    if (rng.random.float(f32) < 0.001) {
        const new_entity = random_stuff.makeRandomEntity(rng, world.*.entities.len + 1);
        world.*.entities.append(new_entity) catch {
            return error.EntityCreationError;
        };
    }
}
