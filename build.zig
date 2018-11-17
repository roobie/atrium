const Builder = @import("std").build.Builder;

pub fn build(b: *Builder) void {
    const mode = b.standardReleaseOptions();
    const exe = b.addExecutable("giz", "src/main.zig");
    exe.setBuildMode(mode);

    exe.addIncludeDir("/usr/include/guile/2.0");
    exe.addIncludeDir("./c_sources/tinyscheme-1.41");
    exe.addLibPath("/usr/lib/x86_64-linux-gnu/");
    exe.linkSystemLibrary("guile-2.0");
    exe.linkSystemLibrary("gc");

    const run_step = b.step("run", "Run the app");
    const run_cmd = b.addCommand(".", b.env_map, [][]const u8{exe.getOutputPath()});
    run_step.dependOn(&run_cmd.step);
    run_cmd.step.dependOn(&exe.step);

    b.default_step.dependOn(&exe.step);
    b.installArtifact(exe);
}
