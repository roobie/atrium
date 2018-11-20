
const entities = @import("entities.zig");
const Entity = entities.Entity;
const EntityList = entities.EntityList;

pub const World = struct {
    entities: EntityList,
};
