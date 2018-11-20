const std = @import("std");
const rand = std.rand;

const linalg = @import("linalg.zig");
const Vec2 = linalg.Vec2;

const entities = @import("entities.zig");
const Entity = entities.Entity;
const EntityList = entities.EntityList;

pub fn makeRandomEntity(rng: *rand.DefaultPrng, nextId: usize) Entity {
    return Entity {
        .id = nextId,
        .position = Vec2.make(0, 0),
        .dimensions = Vec2.make(10, 10),
        .momentum = Vec2.make(0, 0),
        .base_color = [4]u8 {
            55 + rng.random.uintLessThan(u8, 100),
            55 + rng.random.uintLessThan(u8, 100),
            55 + rng.random.uintLessThan(u8, 100),
            55 + rng.random.uintLessThan(u8, 200),
        }
    };
}

pub fn populateEntities(num: u32, rng: *rand.DefaultPrng, lst: *EntityList) void {
    var i: usize = 0;
    while (i < num) : (i += 1) {
        lst.append(makeRandomEntity(rng, i)) catch return ;
    }
}
