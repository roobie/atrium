const Builder = @import("std").build.Builder;

pub fn build(b: *Builder) void {
    const mode = b.standardReleaseOptions();
    const exe = b.addExecutable("atrium", "src/main.zig");
    exe.setBuildMode(mode);

    exe.addIncludeDir("/usr/include/SDL2");
    exe.addIncludeDir("/usr/include/luajit-2.1");
    exe.linkSystemLibrary("luajit-5.1");

    exe.addLibPath("./submodules/KiWi/build/src");
    exe.addIncludeDir("./submodules/KiWi/src");
    exe.linkSystemLibrary("KiWi");

    exe.addLibPath("/usr/lib/atlas-base/");
    exe.addIncludeDir("/usr/include/atlas");
    exe.linkSystemLibrary("cblas");

    exe.addIncludeDir("/usr/include/GL/");

    exe.linkSystemLibrary("c");
    exe.linkSystemLibrary("stdc++");
    exe.linkSystemLibrary("GL");
    exe.linkSystemLibrary("pthread");
    exe.linkSystemLibrary("SDL2");
    exe.linkSystemLibrary("SDL2_ttf");
    exe.linkSystemLibrary("SDL2_gfx");

    //exe.addCompileFlags([][] const u8{"-D_REENTRANT"});

    //exe.addIncludeDir("/usr/include/guile/2.0");
    //exe.linkSystemLibrary("guile-2.0");
    //exe.linkSystemLibrary("gc");

    //exe.addIncludeDir("./c_sources/tinyscheme-1.41");
    //exe.addLibPath("./c_sources/tinyscheme-1.41/");
    //exe.linkSystemLibrary("tinyscheme");

    // const run_step = b.step("run", "Run the app");
    //const run_cmd = b.addCommand(".", b.env_map, [][]const u8{exe.getOutputPath()});
    // run_step.dependOn(&run_cmd.step);
    // run_cmd.step.dependOn(&exe.step);

    b.default_step.dependOn(&exe.step);
    b.installArtifact(exe);
}

