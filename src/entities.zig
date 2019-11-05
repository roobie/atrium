const std = @import("std");
const math = std.math;
const ArrayList = std.ArrayList;

const clibs = @import("clibs.zig");
const c = clibs.c;

const linalg = @import("linalg.zig");
const Vec2 = linalg.Vec2;
const sdl = @import("sdl.zig");
const common = @import("common.zig");
const Camera = common.Camera;
const inv_y = common.inv_y;

pub const Entity = struct {
    id: usize,

    // ==== components ====
    momentum: linalg.Vec2,
    position: linalg.Vec2,
    dimensions: linalg.Vec2,
    base_color: [4]u8,

    pub fn render(self: *Entity, renderer: *c.SDL_Renderer, camera: *const Camera) !void {
        try sdl.check(c.SDL_SetRenderDrawColor(
            renderer,
            self.base_color[0],
            self.base_color[1],
            self.base_color[2],
            self.base_color[3],
        ));

        // Render rect
        var rect = self.getSpriteT(camera);
        try sdl.check(c.SDL_RenderFillRect(renderer, @ptrCast(?[*]c.SDL_Rect, &rect)));
    }

    pub fn getSpriteT(self: *Entity, camera: *const Camera) c.SDL_Rect {
        const cam_pos = &camera.*.position;
        const cam_rot = camera.*.rotation;
        const cam_scale = camera.*.scale;
        const cam_center = &camera.*.center;

        // const pos = self.position.add(&camera.*.position);
        const dim = self.dimensions.scale(cam_scale);

        const cam_u = Vec2.make(math.cos(cam_rot), math.sin(cam_rot));
        const cam_v = Vec2.make(-math.sin(cam_rot), math.cos(cam_rot));
        const pos_cam = self.position.sub(cam_pos);
        const pos_px = &cam_u.scale(pos_cam.getX()).add(&cam_v.scale(pos_cam.getY())).scale(cam_scale);
        const pos_screen = pos_px.invY().add(cam_center);

        return c.SDL_Rect {
            .x = @floatToInt(c_int, pos_screen.getX()),
            .y = @floatToInt(c_int, pos_screen.getY()),
            .w = @floatToInt(c_int, dim.getX()),
            .h = @floatToInt(c_int, dim.getY()),
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

pub const EntityList = ArrayList(Entity);
