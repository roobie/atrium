pub const __u_char = u8;
pub const __u_short = c_ushort;
pub const __u_int = c_uint;
pub const __u_long = c_ulong;
pub const __int8_t = i8;
pub const __uint8_t = u8;
pub const __int16_t = c_short;
pub const __uint16_t = c_ushort;
pub const __int32_t = c_int;
pub const __uint32_t = c_uint;
pub const __int64_t = c_long;
pub const __uint64_t = c_ulong;
pub const __quad_t = c_long;
pub const __u_quad_t = c_ulong;
pub const __dev_t = c_ulong;
pub const __uid_t = c_uint;
pub const __gid_t = c_uint;
pub const __ino_t = c_ulong;
pub const __ino64_t = c_ulong;
pub const __mode_t = c_uint;
pub const __nlink_t = c_ulong;
pub const __off_t = c_long;
pub const __off64_t = c_long;
pub const __pid_t = c_int;
pub const __fsid_t = extern struct {
    __val: [2]c_int,
};
pub const __clock_t = c_long;
pub const __rlim_t = c_ulong;
pub const __rlim64_t = c_ulong;
pub const __id_t = c_uint;
pub const __time_t = c_long;
pub const __useconds_t = c_uint;
pub const __suseconds_t = c_long;
pub const __daddr_t = c_int;
pub const __key_t = c_int;
pub const __clockid_t = c_int;
pub const __timer_t = ?*c_void;
pub const __blksize_t = c_long;
pub const __blkcnt_t = c_long;
pub const __blkcnt64_t = c_long;
pub const __fsblkcnt_t = c_ulong;
pub const __fsblkcnt64_t = c_ulong;
pub const __fsfilcnt_t = c_ulong;
pub const __fsfilcnt64_t = c_ulong;
pub const __fsword_t = c_long;
pub const __ssize_t = c_long;
pub const __syscall_slong_t = c_long;
pub const __syscall_ulong_t = c_ulong;
pub const __loff_t = __off64_t;
pub const __qaddr_t = ?[*]__quad_t;
pub const __caddr_t = ?[*]u8;
pub const __intptr_t = c_long;
pub const __socklen_t = c_uint;
pub const struct__IO_marker = extern struct {
    _next: ?[*]struct__IO_marker,
    _sbuf: ?[*]struct__IO_FILE,
    _pos: c_int,
};
pub const _IO_lock_t = c_void;
pub const struct__IO_FILE = extern struct {
    _flags: c_int,
    _IO_read_ptr: ?[*]u8,
    _IO_read_end: ?[*]u8,
    _IO_read_base: ?[*]u8,
    _IO_write_base: ?[*]u8,
    _IO_write_ptr: ?[*]u8,
    _IO_write_end: ?[*]u8,
    _IO_buf_base: ?[*]u8,
    _IO_buf_end: ?[*]u8,
    _IO_save_base: ?[*]u8,
    _IO_backup_base: ?[*]u8,
    _IO_save_end: ?[*]u8,
    _markers: ?[*]struct__IO_marker,
    _chain: ?[*]struct__IO_FILE,
    _fileno: c_int,
    _flags2: c_int,
    _old_offset: __off_t,
    _cur_column: c_ushort,
    _vtable_offset: i8,
    _shortbuf: [1]u8,
    _lock: ?*_IO_lock_t,
    _offset: __off64_t,
    __pad1: ?*c_void,
    __pad2: ?*c_void,
    __pad3: ?*c_void,
    __pad4: ?*c_void,
    __pad5: usize,
    _mode: c_int,
    _unused2: [20]u8,
};
pub const FILE = struct__IO_FILE;
pub const __FILE = struct__IO_FILE;
pub const __mbstate_t = extern struct {
    __count: c_int,
    __value: extern union {
        __wch: c_uint,
        __wchb: [4]u8,
    },
};
pub const _G_fpos_t = extern struct {
    __pos: __off_t,
    __state: __mbstate_t,
};
pub const _G_fpos64_t = extern struct {
    __pos: __off64_t,
    __state: __mbstate_t,
};
pub const struct___va_list_tag = extern struct {
    gp_offset: c_uint,
    fp_offset: c_uint,
    overflow_arg_area: ?*c_void,
    reg_save_area: ?*c_void,
};
pub const __builtin_va_list = [1]struct___va_list_tag;
pub const va_list = __builtin_va_list;
pub const __gnuc_va_list = __builtin_va_list;
pub const struct__IO_jump_t = @OpaqueType();
pub const __codecvt_ok = enum___codecvt_result.__codecvt_ok;
pub const __codecvt_partial = enum___codecvt_result.__codecvt_partial;
pub const __codecvt_error = enum___codecvt_result.__codecvt_error;
pub const __codecvt_noconv = enum___codecvt_result.__codecvt_noconv;
pub const enum___codecvt_result = extern enum {
    __codecvt_ok,
    __codecvt_partial,
    __codecvt_error,
    __codecvt_noconv,
};
pub const _IO_FILE = struct__IO_FILE;
pub const struct__IO_FILE_plus = @OpaqueType();
pub extern var _IO_2_1_stdin_: struct__IO_FILE_plus;
pub extern var _IO_2_1_stdout_: struct__IO_FILE_plus;
pub extern var _IO_2_1_stderr_: struct__IO_FILE_plus;
pub const __io_read_fn = extern fn(?*c_void, ?[*]u8, usize) __ssize_t;
pub const __io_write_fn = extern fn(?*c_void, ?[*]const u8, usize) __ssize_t;
pub const __io_seek_fn = extern fn(?*c_void, ?[*]__off64_t, c_int) c_int;
pub const __io_close_fn = extern fn(?*c_void) c_int;
pub extern fn __underflow(arg0: ?[*]_IO_FILE) c_int;
pub extern fn __uflow(arg0: ?[*]_IO_FILE) c_int;
pub extern fn __overflow(arg0: ?[*]_IO_FILE, arg1: c_int) c_int;
pub extern fn _IO_getc(__fp: ?[*]_IO_FILE) c_int;
pub extern fn _IO_putc(__c: c_int, __fp: ?[*]_IO_FILE) c_int;
pub extern fn _IO_feof(__fp: ?[*]_IO_FILE) c_int;
pub extern fn _IO_ferror(__fp: ?[*]_IO_FILE) c_int;
pub extern fn _IO_peekc_locked(__fp: ?[*]_IO_FILE) c_int;
pub extern fn _IO_flockfile(arg0: ?[*]_IO_FILE) void;
pub extern fn _IO_funlockfile(arg0: ?[*]_IO_FILE) void;
pub extern fn _IO_ftrylockfile(arg0: ?[*]_IO_FILE) c_int;
pub extern fn _IO_vfscanf(noalias arg0: ?[*]_IO_FILE, noalias arg1: ?[*]const u8, arg2: ?[*]struct___va_list_tag, noalias arg3: ?[*]c_int) c_int;
pub extern fn _IO_vfprintf(noalias arg0: ?[*]_IO_FILE, noalias arg1: ?[*]const u8, arg2: ?[*]struct___va_list_tag) c_int;
pub extern fn _IO_padn(arg0: ?[*]_IO_FILE, arg1: c_int, arg2: __ssize_t) __ssize_t;
pub extern fn _IO_sgetn(arg0: ?[*]_IO_FILE, arg1: ?*c_void, arg2: usize) usize;
pub extern fn _IO_seekoff(arg0: ?[*]_IO_FILE, arg1: __off64_t, arg2: c_int, arg3: c_int) __off64_t;
pub extern fn _IO_seekpos(arg0: ?[*]_IO_FILE, arg1: __off64_t, arg2: c_int) __off64_t;
pub extern fn _IO_free_backup_area(arg0: ?[*]_IO_FILE) void;
pub const off_t = __off_t;
pub const fpos_t = _G_fpos_t;
pub extern var stdin: ?[*]struct__IO_FILE;
pub extern var stdout: ?[*]struct__IO_FILE;
pub extern var stderr: ?[*]struct__IO_FILE;
pub extern fn remove(__filename: ?[*]const u8) c_int;
pub extern fn rename(__old: ?[*]const u8, __new: ?[*]const u8) c_int;
pub extern fn renameat(__oldfd: c_int, __old: ?[*]const u8, __newfd: c_int, __new: ?[*]const u8) c_int;
pub extern fn tmpfile() ?[*]FILE;
pub extern fn tmpnam(__s: ?[*]u8) ?[*]u8;
pub extern fn tmpnam_r(__s: ?[*]u8) ?[*]u8;
pub extern fn tempnam(__dir: ?[*]const u8, __pfx: ?[*]const u8) ?[*]u8;
pub extern fn fclose(__stream: ?[*]FILE) c_int;
pub extern fn fflush(__stream: ?[*]FILE) c_int;
pub extern fn fflush_unlocked(__stream: ?[*]FILE) c_int;
pub extern fn fopen(__filename: ?[*]const u8, __modes: ?[*]const u8) ?[*]FILE;
pub extern fn freopen(noalias __filename: ?[*]const u8, noalias __modes: ?[*]const u8, noalias __stream: ?[*]FILE) ?[*]FILE;
pub extern fn fdopen(__fd: c_int, __modes: ?[*]const u8) ?[*]FILE;
pub extern fn fmemopen(__s: ?*c_void, __len: usize, __modes: ?[*]const u8) ?[*]FILE;
pub extern fn open_memstream(__bufloc: ?[*](?[*]u8), __sizeloc: ?[*]usize) ?[*]FILE;
pub extern fn setbuf(noalias __stream: ?[*]FILE, noalias __buf: ?[*]u8) void;
pub extern fn setvbuf(noalias __stream: ?[*]FILE, noalias __buf: ?[*]u8, __modes: c_int, __n: usize) c_int;
pub extern fn setbuffer(noalias __stream: ?[*]FILE, noalias __buf: ?[*]u8, __size: usize) void;
pub extern fn setlinebuf(__stream: ?[*]FILE) void;
pub extern fn fprintf(__stream: ?[*]FILE, __format: ?[*]const u8) c_int;
pub extern fn printf(__format: ?[*]const u8) c_int;
pub extern fn sprintf(__s: ?[*]u8, __format: ?[*]const u8) c_int;
pub extern fn vfprintf(__s: ?[*]FILE, __format: ?[*]const u8, __arg: ?[*]struct___va_list_tag) c_int;
pub extern fn vprintf(__format: ?[*]const u8, __arg: ?[*]struct___va_list_tag) c_int;
pub extern fn vsprintf(__s: ?[*]u8, __format: ?[*]const u8, __arg: ?[*]struct___va_list_tag) c_int;
pub extern fn snprintf(__s: ?[*]u8, __maxlen: c_ulong, __format: ?[*]const u8) c_int;
pub extern fn vsnprintf(__s: ?[*]u8, __maxlen: c_ulong, __format: ?[*]const u8, __arg: ?[*]struct___va_list_tag) c_int;
pub extern fn vdprintf(__fd: c_int, noalias __fmt: ?[*]const u8, __arg: ?[*]struct___va_list_tag) c_int;
pub extern fn dprintf(__fd: c_int, noalias __fmt: ?[*]const u8) c_int;
pub extern fn fscanf(noalias __stream: ?[*]FILE, noalias __format: ?[*]const u8) c_int;
pub extern fn scanf(noalias __format: ?[*]const u8) c_int;
pub extern fn sscanf(noalias __s: ?[*]const u8, noalias __format: ?[*]const u8) c_int;
pub extern fn vfscanf(noalias __s: ?[*]FILE, noalias __format: ?[*]const u8, __arg: ?[*]struct___va_list_tag) c_int;
pub extern fn vscanf(noalias __format: ?[*]const u8, __arg: ?[*]struct___va_list_tag) c_int;
pub extern fn vsscanf(noalias __s: ?[*]const u8, noalias __format: ?[*]const u8, __arg: ?[*]struct___va_list_tag) c_int;
pub extern fn fgetc(__stream: ?[*]FILE) c_int;
pub extern fn getc(__stream: ?[*]FILE) c_int;
pub extern fn getchar() c_int;
pub extern fn getc_unlocked(__stream: ?[*]FILE) c_int;
pub extern fn getchar_unlocked() c_int;
pub extern fn fgetc_unlocked(__stream: ?[*]FILE) c_int;
pub extern fn fputc(__c: c_int, __stream: ?[*]FILE) c_int;
pub extern fn putc(__c: c_int, __stream: ?[*]FILE) c_int;
pub extern fn putchar(__c: c_int) c_int;
pub extern fn fputc_unlocked(__c: c_int, __stream: ?[*]FILE) c_int;
pub extern fn putc_unlocked(__c: c_int, __stream: ?[*]FILE) c_int;
pub extern fn putchar_unlocked(__c: c_int) c_int;
pub extern fn getw(__stream: ?[*]FILE) c_int;
pub extern fn putw(__w: c_int, __stream: ?[*]FILE) c_int;
pub extern fn fgets(noalias __s: ?[*]u8, __n: c_int, noalias __stream: ?[*]FILE) ?[*]u8;
pub extern fn __getdelim(noalias __lineptr: ?[*](?[*]u8), noalias __n: ?[*]usize, __delimiter: c_int, noalias __stream: ?[*]FILE) __ssize_t;
pub extern fn getdelim(noalias __lineptr: ?[*](?[*]u8), noalias __n: ?[*]usize, __delimiter: c_int, noalias __stream: ?[*]FILE) __ssize_t;
pub extern fn getline(noalias __lineptr: ?[*](?[*]u8), noalias __n: ?[*]usize, noalias __stream: ?[*]FILE) __ssize_t;
pub extern fn fputs(noalias __s: ?[*]const u8, noalias __stream: ?[*]FILE) c_int;
pub extern fn puts(__s: ?[*]const u8) c_int;
pub extern fn ungetc(__c: c_int, __stream: ?[*]FILE) c_int;
pub extern fn fread(__ptr: ?*c_void, __size: c_ulong, __n: c_ulong, __stream: ?[*]FILE) c_ulong;
pub extern fn fwrite(__ptr: ?*const c_void, __size: c_ulong, __n: c_ulong, __s: ?[*]FILE) c_ulong;
pub extern fn fread_unlocked(noalias __ptr: ?*c_void, __size: usize, __n: usize, noalias __stream: ?[*]FILE) usize;
pub extern fn fwrite_unlocked(noalias __ptr: ?*const c_void, __size: usize, __n: usize, noalias __stream: ?[*]FILE) usize;
pub extern fn fseek(__stream: ?[*]FILE, __off: c_long, __whence: c_int) c_int;
pub extern fn ftell(__stream: ?[*]FILE) c_long;
pub extern fn rewind(__stream: ?[*]FILE) void;
pub extern fn fseeko(__stream: ?[*]FILE, __off: __off_t, __whence: c_int) c_int;
pub extern fn ftello(__stream: ?[*]FILE) __off_t;
pub extern fn fgetpos(noalias __stream: ?[*]FILE, noalias __pos: ?[*]fpos_t) c_int;
pub extern fn fsetpos(__stream: ?[*]FILE, __pos: ?[*]const fpos_t) c_int;
pub extern fn clearerr(__stream: ?[*]FILE) void;
pub extern fn feof(__stream: ?[*]FILE) c_int;
pub extern fn ferror(__stream: ?[*]FILE) c_int;
pub extern fn clearerr_unlocked(__stream: ?[*]FILE) void;
pub extern fn feof_unlocked(__stream: ?[*]FILE) c_int;
pub extern fn ferror_unlocked(__stream: ?[*]FILE) c_int;
pub extern fn perror(__s: ?[*]const u8) void;
pub extern var sys_nerr: c_int;
pub extern const sys_errlist: [*]const (?[*]const u8);
pub extern fn fileno(__stream: ?[*]FILE) c_int;
pub extern fn fileno_unlocked(__stream: ?[*]FILE) c_int;
pub extern fn popen(__command: ?[*]const u8, __modes: ?[*]const u8) ?[*]FILE;
pub extern fn pclose(__stream: ?[*]FILE) c_int;
pub extern fn ctermid(__s: ?[*]u8) ?[*]u8;
pub extern fn flockfile(__stream: ?[*]FILE) void;
pub extern fn ftrylockfile(__stream: ?[*]FILE) c_int;
pub extern fn funlockfile(__stream: ?[*]FILE) void;
pub const int_least8_t = i8;
pub const int_least16_t = c_short;
pub const int_least32_t = c_int;
pub const int_least64_t = c_long;
pub const uint_least8_t = u8;
pub const uint_least16_t = c_ushort;
pub const uint_least32_t = c_uint;
pub const uint_least64_t = c_ulong;
pub const int_fast8_t = i8;
pub const int_fast16_t = c_long;
pub const int_fast32_t = c_long;
pub const int_fast64_t = c_long;
pub const uint_fast8_t = u8;
pub const uint_fast16_t = c_ulong;
pub const uint_fast32_t = c_ulong;
pub const uint_fast64_t = c_ulong;
pub const intmax_t = c_long;
pub const uintmax_t = c_ulong;
pub const struct_ImVec2_Simple = extern struct {
    x: f32,
    y: f32,
};
pub const ImVec2_Simple = struct_ImVec2_Simple;
pub const struct_ImVec4_Simple = extern struct {
    x: f32,
    y: f32,
    z: f32,
    w: f32,
};
pub const ImVec4_Simple = struct_ImVec4_Simple;
pub const struct_ImColor_Simple = extern struct {
    Value: ImVec4_Simple,
};
pub const ImColor_Simple = struct_ImColor_Simple;
pub const struct_ImVec2 = extern struct {
    x: f32,
    y: f32,
};
pub const ImVec2 = struct_ImVec2;
pub const ImWchar = c_ushort;
pub const struct_ImFontGlyph = extern struct {
    Codepoint: ImWchar,
    AdvanceX: f32,
    X0: f32,
    Y0: f32,
    X1: f32,
    Y1: f32,
    U0: f32,
    V0: f32,
    U1: f32,
    V1: f32,
};
pub const ImFontGlyph = struct_ImFontGlyph;
pub const struct_ImVector_ImFontGlyph = extern struct {
    Size: c_int,
    Capacity: c_int,
    Data: ?[*]ImFontGlyph,
};
pub const ImVector_ImFontGlyph = struct_ImVector_ImFontGlyph;
pub const struct_ImVector_float = extern struct {
    Size: c_int,
    Capacity: c_int,
    Data: ?[*]f32,
};
pub const ImVector_float = struct_ImVector_float;
pub const struct_ImVector_unsigned_short = extern struct {
    Size: c_int,
    Capacity: c_int,
    Data: ?[*]c_ushort,
};
pub const ImVector_unsigned_short = struct_ImVector_unsigned_short;
pub const struct_ImFontConfig = extern struct {
    FontData: ?*c_void,
    FontDataSize: c_int,
    FontDataOwnedByAtlas: bool,
    FontNo: c_int,
    SizePixels: f32,
    OversampleH: c_int,
    OversampleV: c_int,
    PixelSnapH: bool,
    GlyphExtraSpacing: ImVec2,
    GlyphOffset: ImVec2,
    GlyphRanges: ?[*]const ImWchar,
    GlyphMinAdvanceX: f32,
    GlyphMaxAdvanceX: f32,
    MergeMode: bool,
    RasterizerFlags: c_uint,
    RasterizerMultiply: f32,
    Name: [40]u8,
    DstFont: ?[*]ImFont,
};
pub const ImFontConfig = struct_ImFontConfig;
pub const ImFontAtlasFlags = c_int;
pub const ImTextureID = ?*c_void;
pub const struct_ImVector_ImFontPtr = extern struct {
    Size: c_int,
    Capacity: c_int,
    Data: ?[*](?[*]ImFont),
};
pub const ImVector_ImFontPtr = struct_ImVector_ImFontPtr;
pub const CustomRect = struct_CustomRect;
pub const struct_ImVector_CustomRect = extern struct {
    Size: c_int,
    Capacity: c_int,
    Data: ?[*]CustomRect,
};
pub const ImVector_CustomRect = struct_ImVector_CustomRect;
pub const struct_ImVector_ImFontConfig = extern struct {
    Size: c_int,
    Capacity: c_int,
    Data: ?[*]ImFontConfig,
};
pub const ImVector_ImFontConfig = struct_ImVector_ImFontConfig;
pub const struct_ImFontAtlas = extern struct {
    Locked: bool,
    Flags: ImFontAtlasFlags,
    TexID: ImTextureID,
    TexDesiredWidth: c_int,
    TexGlyphPadding: c_int,
    TexPixelsAlpha8: ?[*]u8,
    TexPixelsRGBA32: ?[*]c_uint,
    TexWidth: c_int,
    TexHeight: c_int,
    TexUvScale: ImVec2,
    TexUvWhitePixel: ImVec2,
    Fonts: ImVector_ImFontPtr,
    CustomRects: ImVector_CustomRect,
    ConfigData: ImVector_ImFontConfig,
    CustomRectIds: [1]c_int,
};
pub const ImFontAtlas = struct_ImFontAtlas;
pub const struct_ImFont = extern struct {
    FontSize: f32,
    Scale: f32,
    DisplayOffset: ImVec2,
    Glyphs: ImVector_ImFontGlyph,
    IndexAdvanceX: ImVector_float,
    IndexLookup: ImVector_unsigned_short,
    FallbackGlyph: ?[*]const ImFontGlyph,
    FallbackAdvanceX: f32,
    FallbackChar: ImWchar,
    ConfigDataCount: c_short,
    ConfigData: ?[*]ImFontConfig,
    ContainerAtlas: ?[*]ImFontAtlas,
    Ascent: f32,
    Descent: f32,
    DirtyLookupTables: bool,
    MetricsTotalSurface: c_int,
};
pub const ImFont = struct_ImFont;
pub const struct_CustomRect = extern struct {
    ID: c_uint,
    Width: c_ushort,
    Height: c_ushort,
    X: c_ushort,
    Y: c_ushort,
    GlyphAdvanceX: f32,
    GlyphOffset: ImVec2,
    Font: ?[*]ImFont,
};
pub const struct_ImVector_unsigned_char = extern struct {
    Size: c_int,
    Capacity: c_int,
    Data: ?[*]u8,
};
pub const ImVector_unsigned_char = struct_ImVector_unsigned_char;
pub const struct_GlyphRangesBuilder = extern struct {
    UsedChars: ImVector_unsigned_char,
};
pub const GlyphRangesBuilder = struct_GlyphRangesBuilder;
pub const ImDrawIdx = c_ushort;
pub const ImGuiID = c_uint;
pub const struct_Pair = extern struct {
    key: ImGuiID,
    @"": extern union {
        val_i: c_int,
        val_f: f32,
        val_p: ?*c_void,
    },
};
pub const Pair = struct_Pair;
pub const struct_TextRange = extern struct {
    b: ?[*]const u8,
    e: ?[*]const u8,
};
pub const TextRange = struct_TextRange;
pub const struct_ImVec4 = extern struct {
    x: f32,
    y: f32,
    z: f32,
    w: f32,
};
pub const ImVec4 = struct_ImVec4;
pub const struct_ImVector_char = extern struct {
    Size: c_int,
    Capacity: c_int,
    Data: ?[*]u8,
};
pub const ImVector_char = struct_ImVector_char;
pub const struct_ImGuiTextBuffer = extern struct {
    Buf: ImVector_char,
};
pub const ImGuiTextBuffer = struct_ImGuiTextBuffer;
pub const struct_ImVector_TextRange = extern struct {
    Size: c_int,
    Capacity: c_int,
    Data: ?[*]TextRange,
};
pub const ImVector_TextRange = struct_ImVector_TextRange;
pub const struct_ImGuiTextFilter = extern struct {
    InputBuf: [256]u8,
    Filters: ImVector_TextRange,
    CountGrep: c_int,
};
pub const ImGuiTextFilter = struct_ImGuiTextFilter;
pub const struct_ImGuiStyle = extern struct {
    Alpha: f32,
    WindowPadding: ImVec2,
    WindowRounding: f32,
    WindowBorderSize: f32,
    WindowMinSize: ImVec2,
    WindowTitleAlign: ImVec2,
    ChildRounding: f32,
    ChildBorderSize: f32,
    PopupRounding: f32,
    PopupBorderSize: f32,
    FramePadding: ImVec2,
    FrameRounding: f32,
    FrameBorderSize: f32,
    ItemSpacing: ImVec2,
    ItemInnerSpacing: ImVec2,
    TouchExtraPadding: ImVec2,
    IndentSpacing: f32,
    ColumnsMinSpacing: f32,
    ScrollbarSize: f32,
    ScrollbarRounding: f32,
    GrabMinSize: f32,
    GrabRounding: f32,
    ButtonTextAlign: ImVec2,
    DisplayWindowPadding: ImVec2,
    DisplaySafeAreaPadding: ImVec2,
    MouseCursorScale: f32,
    AntiAliasedLines: bool,
    AntiAliasedFill: bool,
    CurveTessellationTol: f32,
    Colors: [43]ImVec4,
};
pub const ImGuiStyle = struct_ImGuiStyle;
pub const struct_ImVector_Pair = extern struct {
    Size: c_int,
    Capacity: c_int,
    Data: ?[*]Pair,
};
pub const ImVector_Pair = struct_ImVector_Pair;
pub const struct_ImGuiStorage = extern struct {
    Data: ImVector_Pair,
};
pub const ImGuiStorage = struct_ImGuiStorage;
pub const struct_ImGuiSizeCallbackData = extern struct {
    UserData: ?*c_void,
    Pos: ImVec2,
    CurrentSize: ImVec2,
    DesiredSize: ImVec2,
};
pub const ImGuiSizeCallbackData = struct_ImGuiSizeCallbackData;
pub const struct_ImGuiPayload = extern struct {
    Data: ?*c_void,
    DataSize: c_int,
    SourceId: ImGuiID,
    SourceParentId: ImGuiID,
    DataFrameCount: c_int,
    DataType: [33]u8,
    Preview: bool,
    Delivery: bool,
};
pub const ImGuiPayload = struct_ImGuiPayload;
pub const struct_ImGuiOnceUponAFrame = extern struct {
    RefFrame: c_int,
};
pub const ImGuiOnceUponAFrame = struct_ImGuiOnceUponAFrame;
pub const struct_ImGuiListClipper = extern struct {
    StartPosY: f32,
    ItemsHeight: f32,
    ItemsCount: c_int,
    StepNo: c_int,
    DisplayStart: c_int,
    DisplayEnd: c_int,
};
pub const ImGuiListClipper = struct_ImGuiListClipper;
pub const ImGuiInputTextFlags = c_int;
pub const ImGuiKey = c_int;
pub const struct_ImGuiInputTextCallbackData = extern struct {
    EventFlag: ImGuiInputTextFlags,
    Flags: ImGuiInputTextFlags,
    UserData: ?*c_void,
    EventChar: ImWchar,
    EventKey: ImGuiKey,
    Buf: ?[*]u8,
    BufTextLen: c_int,
    BufSize: c_int,
    BufDirty: bool,
    CursorPos: c_int,
    SelectionStart: c_int,
    SelectionEnd: c_int,
};
pub const ImGuiInputTextCallbackData = struct_ImGuiInputTextCallbackData;
pub const ImGuiConfigFlags = c_int;
pub const ImGuiBackendFlags = c_int;
pub const struct_ImGuiIO = extern struct {
    ConfigFlags: ImGuiConfigFlags,
    BackendFlags: ImGuiBackendFlags,
    DisplaySize: ImVec2,
    DeltaTime: f32,
    IniSavingRate: f32,
    IniFilename: ?[*]const u8,
    LogFilename: ?[*]const u8,
    MouseDoubleClickTime: f32,
    MouseDoubleClickMaxDist: f32,
    MouseDragThreshold: f32,
    KeyMap: [21]c_int,
    KeyRepeatDelay: f32,
    KeyRepeatRate: f32,
    UserData: ?*c_void,
    Fonts: ?[*]ImFontAtlas,
    FontGlobalScale: f32,
    FontAllowUserScaling: bool,
    FontDefault: ?[*]ImFont,
    DisplayFramebufferScale: ImVec2,
    DisplayVisibleMin: ImVec2,
    DisplayVisibleMax: ImVec2,
    MouseDrawCursor: bool,
    ConfigMacOSXBehaviors: bool,
    ConfigInputTextCursorBlink: bool,
    ConfigResizeWindowsFromEdges: bool,
    GetClipboardTextFn: ?extern fn(?*c_void) ?[*]const u8,
    SetClipboardTextFn: ?extern fn(?*c_void, ?[*]const u8) void,
    ClipboardUserData: ?*c_void,
    ImeSetInputScreenPosFn: ?extern fn(c_int, c_int) void,
    ImeWindowHandle: ?*c_void,
    RenderDrawListsFnUnused: ?*c_void,
    MousePos: ImVec2,
    MouseDown: [5]bool,
    MouseWheel: f32,
    MouseWheelH: f32,
    KeyCtrl: bool,
    KeyShift: bool,
    KeyAlt: bool,
    KeySuper: bool,
    KeysDown: [512]bool,
    InputCharacters: [17]ImWchar,
    NavInputs: [21]f32,
    WantCaptureMouse: bool,
    WantCaptureKeyboard: bool,
    WantTextInput: bool,
    WantSetMousePos: bool,
    WantSaveIniSettings: bool,
    NavActive: bool,
    NavVisible: bool,
    Framerate: f32,
    MetricsRenderVertices: c_int,
    MetricsRenderIndices: c_int,
    MetricsRenderWindows: c_int,
    MetricsActiveWindows: c_int,
    MetricsActiveAllocations: c_int,
    MouseDelta: ImVec2,
    MousePosPrev: ImVec2,
    MouseClickedPos: [5]ImVec2,
    MouseClickedTime: [5]f64,
    MouseClicked: [5]bool,
    MouseDoubleClicked: [5]bool,
    MouseReleased: [5]bool,
    MouseDownOwned: [5]bool,
    MouseDownDuration: [5]f32,
    MouseDownDurationPrev: [5]f32,
    MouseDragMaxDistanceAbs: [5]ImVec2,
    MouseDragMaxDistanceSqr: [5]f32,
    KeysDownDuration: [512]f32,
    KeysDownDurationPrev: [512]f32,
    NavInputsDownDuration: [21]f32,
    NavInputsDownDurationPrev: [21]f32,
};
pub const ImGuiIO = struct_ImGuiIO;
pub const struct_ImGuiContext = @OpaqueType();
pub const ImGuiContext = struct_ImGuiContext;
pub const struct_ImColor = extern struct {
    Value: ImVec4,
};
pub const ImColor = struct_ImColor;
pub const ImU32 = c_uint;
pub const struct_ImDrawVert = extern struct {
    pos: ImVec2,
    uv: ImVec2,
    col: ImU32,
};
pub const ImDrawVert = struct_ImDrawVert;
pub const struct_ImDrawListSharedData = @OpaqueType();
pub const ImDrawListSharedData = struct_ImDrawListSharedData;
pub const ImDrawList = struct_ImDrawList;
pub const ImDrawCallback = ?extern fn(?[*]const ImDrawList, ?[*]const ImDrawCmd) void;
pub const struct_ImDrawCmd = extern struct {
    ElemCount: c_uint,
    ClipRect: ImVec4,
    TextureId: ImTextureID,
    UserCallback: ImDrawCallback,
    UserCallbackData: ?*c_void,
};
pub const ImDrawCmd = struct_ImDrawCmd;
pub const struct_ImVector_ImDrawCmd = extern struct {
    Size: c_int,
    Capacity: c_int,
    Data: ?[*]ImDrawCmd,
};
pub const ImVector_ImDrawCmd = struct_ImVector_ImDrawCmd;
pub const struct_ImVector_ImDrawIdx = extern struct {
    Size: c_int,
    Capacity: c_int,
    Data: ?[*]ImDrawIdx,
};
pub const ImVector_ImDrawIdx = struct_ImVector_ImDrawIdx;
pub const struct_ImVector_ImDrawVert = extern struct {
    Size: c_int,
    Capacity: c_int,
    Data: ?[*]ImDrawVert,
};
pub const ImVector_ImDrawVert = struct_ImVector_ImDrawVert;
pub const ImDrawListFlags = c_int;
pub const struct_ImVector_ImVec4 = extern struct {
    Size: c_int,
    Capacity: c_int,
    Data: ?[*]ImVec4,
};
pub const ImVector_ImVec4 = struct_ImVector_ImVec4;
pub const struct_ImVector_ImTextureID = extern struct {
    Size: c_int,
    Capacity: c_int,
    Data: ?[*]ImTextureID,
};
pub const ImVector_ImTextureID = struct_ImVector_ImTextureID;
pub const struct_ImVector_ImVec2 = extern struct {
    Size: c_int,
    Capacity: c_int,
    Data: ?[*]ImVec2,
};
pub const ImVector_ImVec2 = struct_ImVector_ImVec2;
pub const struct_ImDrawChannel = extern struct {
    CmdBuffer: ImVector_ImDrawCmd,
    IdxBuffer: ImVector_ImDrawIdx,
};
pub const ImDrawChannel = struct_ImDrawChannel;
pub const struct_ImVector_ImDrawChannel = extern struct {
    Size: c_int,
    Capacity: c_int,
    Data: ?[*]ImDrawChannel,
};
pub const ImVector_ImDrawChannel = struct_ImVector_ImDrawChannel;
pub const struct_ImDrawList = extern struct {
    CmdBuffer: ImVector_ImDrawCmd,
    IdxBuffer: ImVector_ImDrawIdx,
    VtxBuffer: ImVector_ImDrawVert,
    Flags: ImDrawListFlags,
    _Data: ?*const ImDrawListSharedData,
    _OwnerName: ?[*]const u8,
    _VtxCurrentIdx: c_uint,
    _VtxWritePtr: ?[*]ImDrawVert,
    _IdxWritePtr: ?[*]ImDrawIdx,
    _ClipRectStack: ImVector_ImVec4,
    _TextureIdStack: ImVector_ImTextureID,
    _Path: ImVector_ImVec2,
    _ChannelsCurrent: c_int,
    _ChannelsCount: c_int,
    _Channels: ImVector_ImDrawChannel,
};
pub const struct_ImDrawData = extern struct {
    Valid: bool,
    CmdLists: ?[*](?[*]ImDrawList),
    CmdListsCount: c_int,
    TotalIdxCount: c_int,
    TotalVtxCount: c_int,
    DisplayPos: ImVec2,
    DisplaySize: ImVec2,
};
pub const ImDrawData = struct_ImDrawData;
pub const ImGuiCol = c_int;
pub const ImGuiCond = c_int;
pub const ImGuiDataType = c_int;
pub const ImGuiDir = c_int;
pub const ImGuiNavInput = c_int;
pub const ImGuiMouseCursor = c_int;
pub const ImGuiStyleVar = c_int;
pub const ImDrawCornerFlags = c_int;
pub const ImGuiColorEditFlags = c_int;
pub const ImGuiColumnsFlags = c_int;
pub const ImGuiComboFlags = c_int;
pub const ImGuiDragDropFlags = c_int;
pub const ImGuiFocusedFlags = c_int;
pub const ImGuiHoveredFlags = c_int;
pub const ImGuiSelectableFlags = c_int;
pub const ImGuiTreeNodeFlags = c_int;
pub const ImGuiWindowFlags = c_int;
pub const ImGuiInputTextCallback = ?extern fn(?[*]ImGuiInputTextCallbackData) c_int;
pub const ImGuiSizeCallback = ?extern fn(?[*]ImGuiSizeCallbackData) void;
pub const ImS32 = c_int;
pub const ImS64 = i64;
pub const ImU64 = u64;
pub const ImGuiWindowFlags_None = enum_ImGuiWindowFlags_.None;
pub const ImGuiWindowFlags_NoTitleBar = enum_ImGuiWindowFlags_.NoTitleBar;
pub const ImGuiWindowFlags_NoResize = enum_ImGuiWindowFlags_.NoResize;
pub const ImGuiWindowFlags_NoMove = enum_ImGuiWindowFlags_.NoMove;
pub const ImGuiWindowFlags_NoScrollbar = enum_ImGuiWindowFlags_.NoScrollbar;
pub const ImGuiWindowFlags_NoScrollWithMouse = enum_ImGuiWindowFlags_.NoScrollWithMouse;
pub const ImGuiWindowFlags_NoCollapse = enum_ImGuiWindowFlags_.NoCollapse;
pub const ImGuiWindowFlags_AlwaysAutoResize = enum_ImGuiWindowFlags_.AlwaysAutoResize;
pub const ImGuiWindowFlags_NoSavedSettings = enum_ImGuiWindowFlags_.NoSavedSettings;
pub const ImGuiWindowFlags_NoInputs = enum_ImGuiWindowFlags_.NoInputs;
pub const ImGuiWindowFlags_MenuBar = enum_ImGuiWindowFlags_.MenuBar;
pub const ImGuiWindowFlags_HorizontalScrollbar = enum_ImGuiWindowFlags_.HorizontalScrollbar;
pub const ImGuiWindowFlags_NoFocusOnAppearing = enum_ImGuiWindowFlags_.NoFocusOnAppearing;
pub const ImGuiWindowFlags_NoBringToFrontOnFocus = enum_ImGuiWindowFlags_.NoBringToFrontOnFocus;
pub const ImGuiWindowFlags_AlwaysVerticalScrollbar = enum_ImGuiWindowFlags_.AlwaysVerticalScrollbar;
pub const ImGuiWindowFlags_AlwaysHorizontalScrollbar = enum_ImGuiWindowFlags_.AlwaysHorizontalScrollbar;
pub const ImGuiWindowFlags_AlwaysUseWindowPadding = enum_ImGuiWindowFlags_.AlwaysUseWindowPadding;
pub const ImGuiWindowFlags_NoNavInputs = enum_ImGuiWindowFlags_.NoNavInputs;
pub const ImGuiWindowFlags_NoNavFocus = enum_ImGuiWindowFlags_.NoNavFocus;
pub const ImGuiWindowFlags_NoNav = enum_ImGuiWindowFlags_.NoNav;
pub const ImGuiWindowFlags_NavFlattened = enum_ImGuiWindowFlags_.NavFlattened;
pub const ImGuiWindowFlags_ChildWindow = enum_ImGuiWindowFlags_.ChildWindow;
pub const ImGuiWindowFlags_Tooltip = enum_ImGuiWindowFlags_.Tooltip;
pub const ImGuiWindowFlags_Popup = enum_ImGuiWindowFlags_.Popup;
pub const ImGuiWindowFlags_Modal = enum_ImGuiWindowFlags_.Modal;
pub const ImGuiWindowFlags_ChildMenu = enum_ImGuiWindowFlags_.ChildMenu;
pub const enum_ImGuiWindowFlags_ = extern enum {
    None = 0,
    NoTitleBar = 1,
    NoResize = 2,
    NoMove = 4,
    NoScrollbar = 8,
    NoScrollWithMouse = 16,
    NoCollapse = 32,
    AlwaysAutoResize = 64,
    NoSavedSettings = 256,
    NoInputs = 512,
    MenuBar = 1024,
    HorizontalScrollbar = 2048,
    NoFocusOnAppearing = 4096,
    NoBringToFrontOnFocus = 8192,
    AlwaysVerticalScrollbar = 16384,
    AlwaysHorizontalScrollbar = 32768,
    AlwaysUseWindowPadding = 65536,
    NoNavInputs = 262144,
    NoNavFocus = 524288,
    NoNav = 786432,
    NavFlattened = 8388608,
    ChildWindow = 16777216,
    Tooltip = 33554432,
    Popup = 67108864,
    Modal = 134217728,
    ChildMenu = 268435456,
};
pub const ImGuiInputTextFlags_None = enum_ImGuiInputTextFlags_.None;
pub const ImGuiInputTextFlags_CharsDecimal = enum_ImGuiInputTextFlags_.CharsDecimal;
pub const ImGuiInputTextFlags_CharsHexadecimal = enum_ImGuiInputTextFlags_.CharsHexadecimal;
pub const ImGuiInputTextFlags_CharsUppercase = enum_ImGuiInputTextFlags_.CharsUppercase;
pub const ImGuiInputTextFlags_CharsNoBlank = enum_ImGuiInputTextFlags_.CharsNoBlank;
pub const ImGuiInputTextFlags_AutoSelectAll = enum_ImGuiInputTextFlags_.AutoSelectAll;
pub const ImGuiInputTextFlags_EnterReturnsTrue = enum_ImGuiInputTextFlags_.EnterReturnsTrue;
pub const ImGuiInputTextFlags_CallbackCompletion = enum_ImGuiInputTextFlags_.CallbackCompletion;
pub const ImGuiInputTextFlags_CallbackHistory = enum_ImGuiInputTextFlags_.CallbackHistory;
pub const ImGuiInputTextFlags_CallbackAlways = enum_ImGuiInputTextFlags_.CallbackAlways;
pub const ImGuiInputTextFlags_CallbackCharFilter = enum_ImGuiInputTextFlags_.CallbackCharFilter;
pub const ImGuiInputTextFlags_AllowTabInput = enum_ImGuiInputTextFlags_.AllowTabInput;
pub const ImGuiInputTextFlags_CtrlEnterForNewLine = enum_ImGuiInputTextFlags_.CtrlEnterForNewLine;
pub const ImGuiInputTextFlags_NoHorizontalScroll = enum_ImGuiInputTextFlags_.NoHorizontalScroll;
pub const ImGuiInputTextFlags_AlwaysInsertMode = enum_ImGuiInputTextFlags_.AlwaysInsertMode;
pub const ImGuiInputTextFlags_ReadOnly = enum_ImGuiInputTextFlags_.ReadOnly;
pub const ImGuiInputTextFlags_Password = enum_ImGuiInputTextFlags_.Password;
pub const ImGuiInputTextFlags_NoUndoRedo = enum_ImGuiInputTextFlags_.NoUndoRedo;
pub const ImGuiInputTextFlags_CharsScientific = enum_ImGuiInputTextFlags_.CharsScientific;
pub const ImGuiInputTextFlags_CallbackResize = enum_ImGuiInputTextFlags_.CallbackResize;
pub const ImGuiInputTextFlags_Multiline = enum_ImGuiInputTextFlags_.Multiline;
pub const enum_ImGuiInputTextFlags_ = extern enum {
    None = 0,
    CharsDecimal = 1,
    CharsHexadecimal = 2,
    CharsUppercase = 4,
    CharsNoBlank = 8,
    AutoSelectAll = 16,
    EnterReturnsTrue = 32,
    CallbackCompletion = 64,
    CallbackHistory = 128,
    CallbackAlways = 256,
    CallbackCharFilter = 512,
    AllowTabInput = 1024,
    CtrlEnterForNewLine = 2048,
    NoHorizontalScroll = 4096,
    AlwaysInsertMode = 8192,
    ReadOnly = 16384,
    Password = 32768,
    NoUndoRedo = 65536,
    CharsScientific = 131072,
    CallbackResize = 262144,
    Multiline = 1048576,
};
pub const ImGuiTreeNodeFlags_None = enum_ImGuiTreeNodeFlags_.None;
pub const ImGuiTreeNodeFlags_Selected = enum_ImGuiTreeNodeFlags_.Selected;
pub const ImGuiTreeNodeFlags_Framed = enum_ImGuiTreeNodeFlags_.Framed;
pub const ImGuiTreeNodeFlags_AllowItemOverlap = enum_ImGuiTreeNodeFlags_.AllowItemOverlap;
pub const ImGuiTreeNodeFlags_NoTreePushOnOpen = enum_ImGuiTreeNodeFlags_.NoTreePushOnOpen;
pub const ImGuiTreeNodeFlags_NoAutoOpenOnLog = enum_ImGuiTreeNodeFlags_.NoAutoOpenOnLog;
pub const ImGuiTreeNodeFlags_DefaultOpen = enum_ImGuiTreeNodeFlags_.DefaultOpen;
pub const ImGuiTreeNodeFlags_OpenOnDoubleClick = enum_ImGuiTreeNodeFlags_.OpenOnDoubleClick;
pub const ImGuiTreeNodeFlags_OpenOnArrow = enum_ImGuiTreeNodeFlags_.OpenOnArrow;
pub const ImGuiTreeNodeFlags_Leaf = enum_ImGuiTreeNodeFlags_.Leaf;
pub const ImGuiTreeNodeFlags_Bullet = enum_ImGuiTreeNodeFlags_.Bullet;
pub const ImGuiTreeNodeFlags_FramePadding = enum_ImGuiTreeNodeFlags_.FramePadding;
pub const ImGuiTreeNodeFlags_NavLeftJumpsBackHere = enum_ImGuiTreeNodeFlags_.NavLeftJumpsBackHere;
pub const ImGuiTreeNodeFlags_CollapsingHeader = enum_ImGuiTreeNodeFlags_.CollapsingHeader;
pub const enum_ImGuiTreeNodeFlags_ = extern enum {
    None = 0,
    Selected = 1,
    Framed = 2,
    AllowItemOverlap = 4,
    NoTreePushOnOpen = 8,
    NoAutoOpenOnLog = 16,
    DefaultOpen = 32,
    OpenOnDoubleClick = 64,
    OpenOnArrow = 128,
    Leaf = 256,
    Bullet = 512,
    FramePadding = 1024,
    NavLeftJumpsBackHere = 8192,
    CollapsingHeader = 26,
};
pub const ImGuiSelectableFlags_None = enum_ImGuiSelectableFlags_.None;
pub const ImGuiSelectableFlags_DontClosePopups = enum_ImGuiSelectableFlags_.DontClosePopups;
pub const ImGuiSelectableFlags_SpanAllColumns = enum_ImGuiSelectableFlags_.SpanAllColumns;
pub const ImGuiSelectableFlags_AllowDoubleClick = enum_ImGuiSelectableFlags_.AllowDoubleClick;
pub const ImGuiSelectableFlags_Disabled = enum_ImGuiSelectableFlags_.Disabled;
pub const enum_ImGuiSelectableFlags_ = extern enum {
    None = 0,
    DontClosePopups = 1,
    SpanAllColumns = 2,
    AllowDoubleClick = 4,
    Disabled = 8,
};
pub const ImGuiComboFlags_None = enum_ImGuiComboFlags_.None;
pub const ImGuiComboFlags_PopupAlignLeft = enum_ImGuiComboFlags_.PopupAlignLeft;
pub const ImGuiComboFlags_HeightSmall = enum_ImGuiComboFlags_.HeightSmall;
pub const ImGuiComboFlags_HeightRegular = enum_ImGuiComboFlags_.HeightRegular;
pub const ImGuiComboFlags_HeightLarge = enum_ImGuiComboFlags_.HeightLarge;
pub const ImGuiComboFlags_HeightLargest = enum_ImGuiComboFlags_.HeightLargest;
pub const ImGuiComboFlags_NoArrowButton = enum_ImGuiComboFlags_.NoArrowButton;
pub const ImGuiComboFlags_NoPreview = enum_ImGuiComboFlags_.NoPreview;
pub const ImGuiComboFlags_HeightMask_ = enum_ImGuiComboFlags_.HeightMask_;
pub const enum_ImGuiComboFlags_ = extern enum {
    None = 0,
    PopupAlignLeft = 1,
    HeightSmall = 2,
    HeightRegular = 4,
    HeightLarge = 8,
    HeightLargest = 16,
    NoArrowButton = 32,
    NoPreview = 64,
    HeightMask_ = 30,
};
pub const ImGuiFocusedFlags_None = enum_ImGuiFocusedFlags_.None;
pub const ImGuiFocusedFlags_ChildWindows = enum_ImGuiFocusedFlags_.ChildWindows;
pub const ImGuiFocusedFlags_RootWindow = enum_ImGuiFocusedFlags_.RootWindow;
pub const ImGuiFocusedFlags_AnyWindow = enum_ImGuiFocusedFlags_.AnyWindow;
pub const ImGuiFocusedFlags_RootAndChildWindows = enum_ImGuiFocusedFlags_.RootAndChildWindows;
pub const enum_ImGuiFocusedFlags_ = extern enum {
    None = 0,
    ChildWindows = 1,
    RootWindow = 2,
    AnyWindow = 4,
    RootAndChildWindows = 3,
};
pub const ImGuiHoveredFlags_None = enum_ImGuiHoveredFlags_.None;
pub const ImGuiHoveredFlags_ChildWindows = enum_ImGuiHoveredFlags_.ChildWindows;
pub const ImGuiHoveredFlags_RootWindow = enum_ImGuiHoveredFlags_.RootWindow;
pub const ImGuiHoveredFlags_AnyWindow = enum_ImGuiHoveredFlags_.AnyWindow;
pub const ImGuiHoveredFlags_AllowWhenBlockedByPopup = enum_ImGuiHoveredFlags_.AllowWhenBlockedByPopup;
pub const ImGuiHoveredFlags_AllowWhenBlockedByActiveItem = enum_ImGuiHoveredFlags_.AllowWhenBlockedByActiveItem;
pub const ImGuiHoveredFlags_AllowWhenOverlapped = enum_ImGuiHoveredFlags_.AllowWhenOverlapped;
pub const ImGuiHoveredFlags_AllowWhenDisabled = enum_ImGuiHoveredFlags_.AllowWhenDisabled;
pub const ImGuiHoveredFlags_RectOnly = enum_ImGuiHoveredFlags_.RectOnly;
pub const ImGuiHoveredFlags_RootAndChildWindows = enum_ImGuiHoveredFlags_.RootAndChildWindows;
pub const enum_ImGuiHoveredFlags_ = extern enum {
    None = 0,
    ChildWindows = 1,
    RootWindow = 2,
    AnyWindow = 4,
    AllowWhenBlockedByPopup = 8,
    AllowWhenBlockedByActiveItem = 32,
    AllowWhenOverlapped = 64,
    AllowWhenDisabled = 128,
    RectOnly = 104,
    RootAndChildWindows = 3,
};
pub const ImGuiDragDropFlags_None = enum_ImGuiDragDropFlags_.None;
pub const ImGuiDragDropFlags_SourceNoPreviewTooltip = enum_ImGuiDragDropFlags_.SourceNoPreviewTooltip;
pub const ImGuiDragDropFlags_SourceNoDisableHover = enum_ImGuiDragDropFlags_.SourceNoDisableHover;
pub const ImGuiDragDropFlags_SourceNoHoldToOpenOthers = enum_ImGuiDragDropFlags_.SourceNoHoldToOpenOthers;
pub const ImGuiDragDropFlags_SourceAllowNullID = enum_ImGuiDragDropFlags_.SourceAllowNullID;
pub const ImGuiDragDropFlags_SourceExtern = enum_ImGuiDragDropFlags_.SourceExtern;
pub const ImGuiDragDropFlags_SourceAutoExpirePayload = enum_ImGuiDragDropFlags_.SourceAutoExpirePayload;
pub const ImGuiDragDropFlags_AcceptBeforeDelivery = enum_ImGuiDragDropFlags_.AcceptBeforeDelivery;
pub const ImGuiDragDropFlags_AcceptNoDrawDefaultRect = enum_ImGuiDragDropFlags_.AcceptNoDrawDefaultRect;
pub const ImGuiDragDropFlags_AcceptNoPreviewTooltip = enum_ImGuiDragDropFlags_.AcceptNoPreviewTooltip;
pub const ImGuiDragDropFlags_AcceptPeekOnly = enum_ImGuiDragDropFlags_.AcceptPeekOnly;
pub const enum_ImGuiDragDropFlags_ = extern enum {
    None = 0,
    SourceNoPreviewTooltip = 1,
    SourceNoDisableHover = 2,
    SourceNoHoldToOpenOthers = 4,
    SourceAllowNullID = 8,
    SourceExtern = 16,
    SourceAutoExpirePayload = 32,
    AcceptBeforeDelivery = 1024,
    AcceptNoDrawDefaultRect = 2048,
    AcceptNoPreviewTooltip = 4096,
    AcceptPeekOnly = 3072,
};
pub const ImGuiDataType_S32 = enum_ImGuiDataType_.S32;
pub const ImGuiDataType_U32 = enum_ImGuiDataType_.U32;
pub const ImGuiDataType_S64 = enum_ImGuiDataType_.S64;
pub const ImGuiDataType_U64 = enum_ImGuiDataType_.U64;
pub const ImGuiDataType_Float = enum_ImGuiDataType_.Float;
pub const ImGuiDataType_Double = enum_ImGuiDataType_.Double;
pub const ImGuiDataType_COUNT = enum_ImGuiDataType_.COUNT;
pub const enum_ImGuiDataType_ = extern enum {
    S32,
    U32,
    S64,
    U64,
    Float,
    Double,
    COUNT,
};
pub const ImGuiDir_None = enum_ImGuiDir_.None;
pub const ImGuiDir_Left = enum_ImGuiDir_.Left;
pub const ImGuiDir_Right = enum_ImGuiDir_.Right;
pub const ImGuiDir_Up = enum_ImGuiDir_.Up;
pub const ImGuiDir_Down = enum_ImGuiDir_.Down;
pub const ImGuiDir_COUNT = enum_ImGuiDir_.COUNT;
pub const enum_ImGuiDir_ = extern enum {
    None = -1,
    Left = 0,
    Right = 1,
    Up = 2,
    Down = 3,
    COUNT = 4,
};
pub const ImGuiKey_Tab = enum_ImGuiKey_.Tab;
pub const ImGuiKey_LeftArrow = enum_ImGuiKey_.LeftArrow;
pub const ImGuiKey_RightArrow = enum_ImGuiKey_.RightArrow;
pub const ImGuiKey_UpArrow = enum_ImGuiKey_.UpArrow;
pub const ImGuiKey_DownArrow = enum_ImGuiKey_.DownArrow;
pub const ImGuiKey_PageUp = enum_ImGuiKey_.PageUp;
pub const ImGuiKey_PageDown = enum_ImGuiKey_.PageDown;
pub const ImGuiKey_Home = enum_ImGuiKey_.Home;
pub const ImGuiKey_End = enum_ImGuiKey_.End;
pub const ImGuiKey_Insert = enum_ImGuiKey_.Insert;
pub const ImGuiKey_Delete = enum_ImGuiKey_.Delete;
pub const ImGuiKey_Backspace = enum_ImGuiKey_.Backspace;
pub const ImGuiKey_Space = enum_ImGuiKey_.Space;
pub const ImGuiKey_Enter = enum_ImGuiKey_.Enter;
pub const ImGuiKey_Escape = enum_ImGuiKey_.Escape;
pub const ImGuiKey_A = enum_ImGuiKey_.A;
pub const ImGuiKey_C = enum_ImGuiKey_.C;
pub const ImGuiKey_V = enum_ImGuiKey_.V;
pub const ImGuiKey_X = enum_ImGuiKey_.X;
pub const ImGuiKey_Y = enum_ImGuiKey_.Y;
pub const ImGuiKey_Z = enum_ImGuiKey_.Z;
pub const ImGuiKey_COUNT = enum_ImGuiKey_.COUNT;
pub const enum_ImGuiKey_ = extern enum {
    Tab,
    LeftArrow,
    RightArrow,
    UpArrow,
    DownArrow,
    PageUp,
    PageDown,
    Home,
    End,
    Insert,
    Delete,
    Backspace,
    Space,
    Enter,
    Escape,
    A,
    C,
    V,
    X,
    Y,
    Z,
    COUNT,
};
pub const ImGuiNavInput_Activate = enum_ImGuiNavInput_.Activate;
pub const ImGuiNavInput_Cancel = enum_ImGuiNavInput_.Cancel;
pub const ImGuiNavInput_Input = enum_ImGuiNavInput_.Input;
pub const ImGuiNavInput_Menu = enum_ImGuiNavInput_.Menu;
pub const ImGuiNavInput_DpadLeft = enum_ImGuiNavInput_.DpadLeft;
pub const ImGuiNavInput_DpadRight = enum_ImGuiNavInput_.DpadRight;
pub const ImGuiNavInput_DpadUp = enum_ImGuiNavInput_.DpadUp;
pub const ImGuiNavInput_DpadDown = enum_ImGuiNavInput_.DpadDown;
pub const ImGuiNavInput_LStickLeft = enum_ImGuiNavInput_.LStickLeft;
pub const ImGuiNavInput_LStickRight = enum_ImGuiNavInput_.LStickRight;
pub const ImGuiNavInput_LStickUp = enum_ImGuiNavInput_.LStickUp;
pub const ImGuiNavInput_LStickDown = enum_ImGuiNavInput_.LStickDown;
pub const ImGuiNavInput_FocusPrev = enum_ImGuiNavInput_.FocusPrev;
pub const ImGuiNavInput_FocusNext = enum_ImGuiNavInput_.FocusNext;
pub const ImGuiNavInput_TweakSlow = enum_ImGuiNavInput_.TweakSlow;
pub const ImGuiNavInput_TweakFast = enum_ImGuiNavInput_.TweakFast;
pub const ImGuiNavInput_KeyMenu_ = enum_ImGuiNavInput_.KeyMenu_;
pub const ImGuiNavInput_KeyLeft_ = enum_ImGuiNavInput_.KeyLeft_;
pub const ImGuiNavInput_KeyRight_ = enum_ImGuiNavInput_.KeyRight_;
pub const ImGuiNavInput_KeyUp_ = enum_ImGuiNavInput_.KeyUp_;
pub const ImGuiNavInput_KeyDown_ = enum_ImGuiNavInput_.KeyDown_;
pub const ImGuiNavInput_COUNT = enum_ImGuiNavInput_.COUNT;
pub const ImGuiNavInput_InternalStart_ = enum_ImGuiNavInput_.InternalStart_;
pub const enum_ImGuiNavInput_ = extern enum {
    Activate = 0,
    Cancel = 1,
    Input = 2,
    Menu = 3,
    DpadLeft = 4,
    DpadRight = 5,
    DpadUp = 6,
    DpadDown = 7,
    LStickLeft = 8,
    LStickRight = 9,
    LStickUp = 10,
    LStickDown = 11,
    FocusPrev = 12,
    FocusNext = 13,
    TweakSlow = 14,
    TweakFast = 15,
    KeyMenu_ = 16,
    KeyLeft_ = 17,
    KeyRight_ = 18,
    KeyUp_ = 19,
    KeyDown_ = 20,
    COUNT = 21,
    InternalStart_ = 16,
};
pub const ImGuiConfigFlags_NavEnableKeyboard = enum_ImGuiConfigFlags_.NavEnableKeyboard;
pub const ImGuiConfigFlags_NavEnableGamepad = enum_ImGuiConfigFlags_.NavEnableGamepad;
pub const ImGuiConfigFlags_NavEnableSetMousePos = enum_ImGuiConfigFlags_.NavEnableSetMousePos;
pub const ImGuiConfigFlags_NavNoCaptureKeyboard = enum_ImGuiConfigFlags_.NavNoCaptureKeyboard;
pub const ImGuiConfigFlags_NoMouse = enum_ImGuiConfigFlags_.NoMouse;
pub const ImGuiConfigFlags_NoMouseCursorChange = enum_ImGuiConfigFlags_.NoMouseCursorChange;
pub const ImGuiConfigFlags_IsSRGB = enum_ImGuiConfigFlags_.IsSRGB;
pub const ImGuiConfigFlags_IsTouchScreen = enum_ImGuiConfigFlags_.IsTouchScreen;
pub const enum_ImGuiConfigFlags_ = extern enum {
    NavEnableKeyboard = 1,
    NavEnableGamepad = 2,
    NavEnableSetMousePos = 4,
    NavNoCaptureKeyboard = 8,
    NoMouse = 16,
    NoMouseCursorChange = 32,
    IsSRGB = 1048576,
    IsTouchScreen = 2097152,
};
pub const ImGuiBackendFlags_HasGamepad = enum_ImGuiBackendFlags_.HasGamepad;
pub const ImGuiBackendFlags_HasMouseCursors = enum_ImGuiBackendFlags_.HasMouseCursors;
pub const ImGuiBackendFlags_HasSetMousePos = enum_ImGuiBackendFlags_.HasSetMousePos;
pub const enum_ImGuiBackendFlags_ = extern enum {
    HasGamepad = 1,
    HasMouseCursors = 2,
    HasSetMousePos = 4,
};
pub const ImGuiCol_Text = enum_ImGuiCol_.Text;
pub const ImGuiCol_TextDisabled = enum_ImGuiCol_.TextDisabled;
pub const ImGuiCol_WindowBg = enum_ImGuiCol_.WindowBg;
pub const ImGuiCol_ChildBg = enum_ImGuiCol_.ChildBg;
pub const ImGuiCol_PopupBg = enum_ImGuiCol_.PopupBg;
pub const ImGuiCol_Border = enum_ImGuiCol_.Border;
pub const ImGuiCol_BorderShadow = enum_ImGuiCol_.BorderShadow;
pub const ImGuiCol_FrameBg = enum_ImGuiCol_.FrameBg;
pub const ImGuiCol_FrameBgHovered = enum_ImGuiCol_.FrameBgHovered;
pub const ImGuiCol_FrameBgActive = enum_ImGuiCol_.FrameBgActive;
pub const ImGuiCol_TitleBg = enum_ImGuiCol_.TitleBg;
pub const ImGuiCol_TitleBgActive = enum_ImGuiCol_.TitleBgActive;
pub const ImGuiCol_TitleBgCollapsed = enum_ImGuiCol_.TitleBgCollapsed;
pub const ImGuiCol_MenuBarBg = enum_ImGuiCol_.MenuBarBg;
pub const ImGuiCol_ScrollbarBg = enum_ImGuiCol_.ScrollbarBg;
pub const ImGuiCol_ScrollbarGrab = enum_ImGuiCol_.ScrollbarGrab;
pub const ImGuiCol_ScrollbarGrabHovered = enum_ImGuiCol_.ScrollbarGrabHovered;
pub const ImGuiCol_ScrollbarGrabActive = enum_ImGuiCol_.ScrollbarGrabActive;
pub const ImGuiCol_CheckMark = enum_ImGuiCol_.CheckMark;
pub const ImGuiCol_SliderGrab = enum_ImGuiCol_.SliderGrab;
pub const ImGuiCol_SliderGrabActive = enum_ImGuiCol_.SliderGrabActive;
pub const ImGuiCol_Button = enum_ImGuiCol_.Button;
pub const ImGuiCol_ButtonHovered = enum_ImGuiCol_.ButtonHovered;
pub const ImGuiCol_ButtonActive = enum_ImGuiCol_.ButtonActive;
pub const ImGuiCol_Header = enum_ImGuiCol_.Header;
pub const ImGuiCol_HeaderHovered = enum_ImGuiCol_.HeaderHovered;
pub const ImGuiCol_HeaderActive = enum_ImGuiCol_.HeaderActive;
pub const ImGuiCol_Separator = enum_ImGuiCol_.Separator;
pub const ImGuiCol_SeparatorHovered = enum_ImGuiCol_.SeparatorHovered;
pub const ImGuiCol_SeparatorActive = enum_ImGuiCol_.SeparatorActive;
pub const ImGuiCol_ResizeGrip = enum_ImGuiCol_.ResizeGrip;
pub const ImGuiCol_ResizeGripHovered = enum_ImGuiCol_.ResizeGripHovered;
pub const ImGuiCol_ResizeGripActive = enum_ImGuiCol_.ResizeGripActive;
pub const ImGuiCol_PlotLines = enum_ImGuiCol_.PlotLines;
pub const ImGuiCol_PlotLinesHovered = enum_ImGuiCol_.PlotLinesHovered;
pub const ImGuiCol_PlotHistogram = enum_ImGuiCol_.PlotHistogram;
pub const ImGuiCol_PlotHistogramHovered = enum_ImGuiCol_.PlotHistogramHovered;
pub const ImGuiCol_TextSelectedBg = enum_ImGuiCol_.TextSelectedBg;
pub const ImGuiCol_DragDropTarget = enum_ImGuiCol_.DragDropTarget;
pub const ImGuiCol_NavHighlight = enum_ImGuiCol_.NavHighlight;
pub const ImGuiCol_NavWindowingHighlight = enum_ImGuiCol_.NavWindowingHighlight;
pub const ImGuiCol_NavWindowingDimBg = enum_ImGuiCol_.NavWindowingDimBg;
pub const ImGuiCol_ModalWindowDimBg = enum_ImGuiCol_.ModalWindowDimBg;
pub const ImGuiCol_COUNT = enum_ImGuiCol_.COUNT;
pub const enum_ImGuiCol_ = extern enum {
    Text,
    TextDisabled,
    WindowBg,
    ChildBg,
    PopupBg,
    Border,
    BorderShadow,
    FrameBg,
    FrameBgHovered,
    FrameBgActive,
    TitleBg,
    TitleBgActive,
    TitleBgCollapsed,
    MenuBarBg,
    ScrollbarBg,
    ScrollbarGrab,
    ScrollbarGrabHovered,
    ScrollbarGrabActive,
    CheckMark,
    SliderGrab,
    SliderGrabActive,
    Button,
    ButtonHovered,
    ButtonActive,
    Header,
    HeaderHovered,
    HeaderActive,
    Separator,
    SeparatorHovered,
    SeparatorActive,
    ResizeGrip,
    ResizeGripHovered,
    ResizeGripActive,
    PlotLines,
    PlotLinesHovered,
    PlotHistogram,
    PlotHistogramHovered,
    TextSelectedBg,
    DragDropTarget,
    NavHighlight,
    NavWindowingHighlight,
    NavWindowingDimBg,
    ModalWindowDimBg,
    COUNT,
};
pub const ImGuiStyleVar_Alpha = enum_ImGuiStyleVar_.Alpha;
pub const ImGuiStyleVar_WindowPadding = enum_ImGuiStyleVar_.WindowPadding;
pub const ImGuiStyleVar_WindowRounding = enum_ImGuiStyleVar_.WindowRounding;
pub const ImGuiStyleVar_WindowBorderSize = enum_ImGuiStyleVar_.WindowBorderSize;
pub const ImGuiStyleVar_WindowMinSize = enum_ImGuiStyleVar_.WindowMinSize;
pub const ImGuiStyleVar_WindowTitleAlign = enum_ImGuiStyleVar_.WindowTitleAlign;
pub const ImGuiStyleVar_ChildRounding = enum_ImGuiStyleVar_.ChildRounding;
pub const ImGuiStyleVar_ChildBorderSize = enum_ImGuiStyleVar_.ChildBorderSize;
pub const ImGuiStyleVar_PopupRounding = enum_ImGuiStyleVar_.PopupRounding;
pub const ImGuiStyleVar_PopupBorderSize = enum_ImGuiStyleVar_.PopupBorderSize;
pub const ImGuiStyleVar_FramePadding = enum_ImGuiStyleVar_.FramePadding;
pub const ImGuiStyleVar_FrameRounding = enum_ImGuiStyleVar_.FrameRounding;
pub const ImGuiStyleVar_FrameBorderSize = enum_ImGuiStyleVar_.FrameBorderSize;
pub const ImGuiStyleVar_ItemSpacing = enum_ImGuiStyleVar_.ItemSpacing;
pub const ImGuiStyleVar_ItemInnerSpacing = enum_ImGuiStyleVar_.ItemInnerSpacing;
pub const ImGuiStyleVar_IndentSpacing = enum_ImGuiStyleVar_.IndentSpacing;
pub const ImGuiStyleVar_ScrollbarSize = enum_ImGuiStyleVar_.ScrollbarSize;
pub const ImGuiStyleVar_ScrollbarRounding = enum_ImGuiStyleVar_.ScrollbarRounding;
pub const ImGuiStyleVar_GrabMinSize = enum_ImGuiStyleVar_.GrabMinSize;
pub const ImGuiStyleVar_GrabRounding = enum_ImGuiStyleVar_.GrabRounding;
pub const ImGuiStyleVar_ButtonTextAlign = enum_ImGuiStyleVar_.ButtonTextAlign;
pub const ImGuiStyleVar_COUNT = enum_ImGuiStyleVar_.COUNT;
pub const enum_ImGuiStyleVar_ = extern enum {
    Alpha,
    WindowPadding,
    WindowRounding,
    WindowBorderSize,
    WindowMinSize,
    WindowTitleAlign,
    ChildRounding,
    ChildBorderSize,
    PopupRounding,
    PopupBorderSize,
    FramePadding,
    FrameRounding,
    FrameBorderSize,
    ItemSpacing,
    ItemInnerSpacing,
    IndentSpacing,
    ScrollbarSize,
    ScrollbarRounding,
    GrabMinSize,
    GrabRounding,
    ButtonTextAlign,
    COUNT,
};
pub const ImGuiColorEditFlags_None = enum_ImGuiColorEditFlags_.None;
pub const ImGuiColorEditFlags_NoAlpha = enum_ImGuiColorEditFlags_.NoAlpha;
pub const ImGuiColorEditFlags_NoPicker = enum_ImGuiColorEditFlags_.NoPicker;
pub const ImGuiColorEditFlags_NoOptions = enum_ImGuiColorEditFlags_.NoOptions;
pub const ImGuiColorEditFlags_NoSmallPreview = enum_ImGuiColorEditFlags_.NoSmallPreview;
pub const ImGuiColorEditFlags_NoInputs = enum_ImGuiColorEditFlags_.NoInputs;
pub const ImGuiColorEditFlags_NoTooltip = enum_ImGuiColorEditFlags_.NoTooltip;
pub const ImGuiColorEditFlags_NoLabel = enum_ImGuiColorEditFlags_.NoLabel;
pub const ImGuiColorEditFlags_NoSidePreview = enum_ImGuiColorEditFlags_.NoSidePreview;
pub const ImGuiColorEditFlags_NoDragDrop = enum_ImGuiColorEditFlags_.NoDragDrop;
pub const ImGuiColorEditFlags_AlphaBar = enum_ImGuiColorEditFlags_.AlphaBar;
pub const ImGuiColorEditFlags_AlphaPreview = enum_ImGuiColorEditFlags_.AlphaPreview;
pub const ImGuiColorEditFlags_AlphaPreviewHalf = enum_ImGuiColorEditFlags_.AlphaPreviewHalf;
pub const ImGuiColorEditFlags_HDR = enum_ImGuiColorEditFlags_.HDR;
pub const ImGuiColorEditFlags_RGB = enum_ImGuiColorEditFlags_.RGB;
pub const ImGuiColorEditFlags_HSV = enum_ImGuiColorEditFlags_.HSV;
pub const ImGuiColorEditFlags_HEX = enum_ImGuiColorEditFlags_.HEX;
pub const ImGuiColorEditFlags_Uint8 = enum_ImGuiColorEditFlags_.Uint8;
pub const ImGuiColorEditFlags_Float = enum_ImGuiColorEditFlags_.Float;
pub const ImGuiColorEditFlags_PickerHueBar = enum_ImGuiColorEditFlags_.PickerHueBar;
pub const ImGuiColorEditFlags_PickerHueWheel = enum_ImGuiColorEditFlags_.PickerHueWheel;
pub const ImGuiColorEditFlags__InputsMask = enum_ImGuiColorEditFlags_._InputsMask;
pub const ImGuiColorEditFlags__DataTypeMask = enum_ImGuiColorEditFlags_._DataTypeMask;
pub const ImGuiColorEditFlags__PickerMask = enum_ImGuiColorEditFlags_._PickerMask;
pub const ImGuiColorEditFlags__OptionsDefault = enum_ImGuiColorEditFlags_._OptionsDefault;
pub const enum_ImGuiColorEditFlags_ = extern enum {
    None = 0,
    NoAlpha = 2,
    NoPicker = 4,
    NoOptions = 8,
    NoSmallPreview = 16,
    NoInputs = 32,
    NoTooltip = 64,
    NoLabel = 128,
    NoSidePreview = 256,
    NoDragDrop = 512,
    AlphaBar = 65536,
    AlphaPreview = 131072,
    AlphaPreviewHalf = 262144,
    HDR = 524288,
    RGB = 1048576,
    HSV = 2097152,
    HEX = 4194304,
    Uint8 = 8388608,
    Float = 16777216,
    PickerHueBar = 33554432,
    PickerHueWheel = 67108864,
    _InputsMask = 7340032,
    _DataTypeMask = 25165824,
    _PickerMask = 100663296,
    _OptionsDefault = 42991616,
};
pub const ImGuiMouseCursor_None = enum_ImGuiMouseCursor_.None;
pub const ImGuiMouseCursor_Arrow = enum_ImGuiMouseCursor_.Arrow;
pub const ImGuiMouseCursor_TextInput = enum_ImGuiMouseCursor_.TextInput;
pub const ImGuiMouseCursor_ResizeAll = enum_ImGuiMouseCursor_.ResizeAll;
pub const ImGuiMouseCursor_ResizeNS = enum_ImGuiMouseCursor_.ResizeNS;
pub const ImGuiMouseCursor_ResizeEW = enum_ImGuiMouseCursor_.ResizeEW;
pub const ImGuiMouseCursor_ResizeNESW = enum_ImGuiMouseCursor_.ResizeNESW;
pub const ImGuiMouseCursor_ResizeNWSE = enum_ImGuiMouseCursor_.ResizeNWSE;
pub const ImGuiMouseCursor_Hand = enum_ImGuiMouseCursor_.Hand;
pub const ImGuiMouseCursor_COUNT = enum_ImGuiMouseCursor_.COUNT;
pub const enum_ImGuiMouseCursor_ = extern enum {
    None = -1,
    Arrow = 0,
    TextInput = 1,
    ResizeAll = 2,
    ResizeNS = 3,
    ResizeEW = 4,
    ResizeNESW = 5,
    ResizeNWSE = 6,
    Hand = 7,
    COUNT = 8,
};
pub const ImGuiCond_Always = enum_ImGuiCond_.Always;
pub const ImGuiCond_Once = enum_ImGuiCond_.Once;
pub const ImGuiCond_FirstUseEver = enum_ImGuiCond_.FirstUseEver;
pub const ImGuiCond_Appearing = enum_ImGuiCond_.Appearing;
pub const enum_ImGuiCond_ = extern enum {
    Always = 1,
    Once = 2,
    FirstUseEver = 4,
    Appearing = 8,
};
pub const struct_ImVector = extern struct {
    Size: c_int,
    Capacity: c_int,
    Data: ?*c_void,
};
pub const ImVector = struct_ImVector;
pub const struct_ImVector_ImWchar = extern struct {
    Size: c_int,
    Capacity: c_int,
    Data: ?[*]ImWchar,
};
pub const ImVector_ImWchar = struct_ImVector_ImWchar;
pub const ImDrawCornerFlags_TopLeft = enum_ImDrawCornerFlags_.TopLeft;
pub const ImDrawCornerFlags_TopRight = enum_ImDrawCornerFlags_.TopRight;
pub const ImDrawCornerFlags_BotLeft = enum_ImDrawCornerFlags_.BotLeft;
pub const ImDrawCornerFlags_BotRight = enum_ImDrawCornerFlags_.BotRight;
pub const ImDrawCornerFlags_Top = enum_ImDrawCornerFlags_.Top;
pub const ImDrawCornerFlags_Bot = enum_ImDrawCornerFlags_.Bot;
pub const ImDrawCornerFlags_Left = enum_ImDrawCornerFlags_.Left;
pub const ImDrawCornerFlags_Right = enum_ImDrawCornerFlags_.Right;
pub const ImDrawCornerFlags_All = enum_ImDrawCornerFlags_.All;
pub const enum_ImDrawCornerFlags_ = extern enum {
    TopLeft = 1,
    TopRight = 2,
    BotLeft = 4,
    BotRight = 8,
    Top = 3,
    Bot = 12,
    Left = 5,
    Right = 10,
    All = 15,
};
pub const ImDrawListFlags_AntiAliasedLines = enum_ImDrawListFlags_.AntiAliasedLines;
pub const ImDrawListFlags_AntiAliasedFill = enum_ImDrawListFlags_.AntiAliasedFill;
pub const enum_ImDrawListFlags_ = extern enum {
    AntiAliasedLines = 1,
    AntiAliasedFill = 2,
};
pub const ImFontAtlasFlags_None = enum_ImFontAtlasFlags_.None;
pub const ImFontAtlasFlags_NoPowerOfTwoHeight = enum_ImFontAtlasFlags_.NoPowerOfTwoHeight;
pub const ImFontAtlasFlags_NoMouseCursors = enum_ImFontAtlasFlags_.NoMouseCursors;
pub const enum_ImFontAtlasFlags_ = extern enum {
    None = 0,
    NoPowerOfTwoHeight = 1,
    NoMouseCursors = 2,
};
pub const struct_GLFWwindow = @OpaqueType();
pub const struct_SDL_Window = @OpaqueType();
pub const union_SDL_Event = @OpaqueType();
pub const SDL_Event = union_SDL_Event;
pub fn ImVec2ToSimple(vec: ImVec2) ImVec2_Simple {
    var result: ImVec2_Simple = undefined;
    result.x = vec.x;
    result.y = vec.y;
    return result;
}
pub fn ImVec4ToSimple(vec: ImVec4) ImVec4_Simple {
    var result: ImVec4_Simple = undefined;
    result.x = vec.x;
    result.y = vec.y;
    result.z = vec.z;
    result.w = vec.w;
    return result;
}
pub fn ImColorToSimple(col: ImColor) ImColor_Simple {
    var result: ImColor_Simple = undefined;
    result.Value = ImVec4ToSimple(col.Value);
    return result;
}
pub extern fn ImVec2_ImVec2() ?[*]ImVec2;
pub extern fn ImVec2_destroy(self: ?[*]ImVec2) void;
pub extern fn ImVec2_ImVec2Float(_x: f32, _y: f32) ?[*]ImVec2;
pub extern fn ImVec4_ImVec4() ?[*]ImVec4;
pub extern fn ImVec4_destroy(self: ?[*]ImVec4) void;
pub extern fn ImVec4_ImVec4Float(_x: f32, _y: f32, _z: f32, _w: f32) ?[*]ImVec4;
pub extern fn igCreateContext(shared_font_atlas: ?[*]ImFontAtlas) ?*ImGuiContext;
pub extern fn igDestroyContext(ctx: ?*ImGuiContext) void;
pub extern fn igGetCurrentContext() ?*ImGuiContext;
pub extern fn igSetCurrentContext(ctx: ?*ImGuiContext) void;
pub extern fn igDebugCheckVersionAndDataLayout(version_str: ?[*]const u8, sz_io: usize, sz_style: usize, sz_vec2: usize, sz_vec4: usize, sz_drawvert: usize) bool;
pub extern fn igGetIO() ?[*]ImGuiIO;
pub extern fn igGetStyle() ?[*]ImGuiStyle;
pub extern fn igNewFrame() void;
pub extern fn igEndFrame() void;
pub extern fn igRender() void;
pub extern fn igGetDrawData() ?[*]ImDrawData;
pub extern fn igShowDemoWindow(p_open: ?[*]bool) void;
pub extern fn igShowMetricsWindow(p_open: ?[*]bool) void;
pub extern fn igShowStyleEditor(ref: ?[*]ImGuiStyle) void;
pub extern fn igShowStyleSelector(label: ?[*]const u8) bool;
pub extern fn igShowFontSelector(label: ?[*]const u8) void;
pub extern fn igShowUserGuide() void;
pub extern fn igGetVersion() ?[*]const u8;
pub extern fn igStyleColorsDark(dst: ?[*]ImGuiStyle) void;
pub extern fn igStyleColorsClassic(dst: ?[*]ImGuiStyle) void;
pub extern fn igStyleColorsLight(dst: ?[*]ImGuiStyle) void;
pub extern fn igBegin(name: ?[*]const u8, p_open: ?[*]bool, flags: ImGuiWindowFlags) bool;
pub extern fn igEnd() void;
pub extern fn igBeginChild(str_id: ?[*]const u8, size: ImVec2, border: bool, flags: ImGuiWindowFlags) bool;
pub extern fn igBeginChildID(id: ImGuiID, size: ImVec2, border: bool, flags: ImGuiWindowFlags) bool;
pub extern fn igEndChild() void;
pub extern fn igIsWindowAppearing() bool;
pub extern fn igIsWindowCollapsed() bool;
pub extern fn igIsWindowFocused(flags: ImGuiFocusedFlags) bool;
pub extern fn igIsWindowHovered(flags: ImGuiHoveredFlags) bool;
pub extern fn igGetWindowDrawList() ?[*]ImDrawList;
pub extern fn igGetWindowPos() ImVec2;
pub extern fn igGetWindowSize() ImVec2;
pub extern fn igGetWindowWidth() f32;
pub extern fn igGetWindowHeight() f32;
pub extern fn igGetContentRegionMax() ImVec2;
pub extern fn igGetContentRegionAvail() ImVec2;
pub extern fn igGetContentRegionAvailWidth() f32;
pub extern fn igGetWindowContentRegionMin() ImVec2;
pub extern fn igGetWindowContentRegionMax() ImVec2;
pub extern fn igGetWindowContentRegionWidth() f32;
pub extern fn igSetNextWindowPos(pos: ImVec2, cond: ImGuiCond, pivot: ImVec2) void;
pub extern fn igSetNextWindowSize(size: ImVec2, cond: ImGuiCond) void;
pub extern fn igSetNextWindowSizeConstraints(size_min: ImVec2, size_max: ImVec2, custom_callback: ImGuiSizeCallback, custom_callback_data: ?*c_void) void;
pub extern fn igSetNextWindowContentSize(size: ImVec2) void;
pub extern fn igSetNextWindowCollapsed(collapsed: bool, cond: ImGuiCond) void;
pub extern fn igSetNextWindowFocus() void;
pub extern fn igSetNextWindowBgAlpha(alpha: f32) void;
pub extern fn igSetWindowPosVec2(pos: ImVec2, cond: ImGuiCond) void;
pub extern fn igSetWindowSizeVec2(size: ImVec2, cond: ImGuiCond) void;
pub extern fn igSetWindowCollapsedBool(collapsed: bool, cond: ImGuiCond) void;
pub extern fn igSetWindowFocus() void;
pub extern fn igSetWindowFontScale(scale: f32) void;
pub extern fn igSetWindowPosStr(name: ?[*]const u8, pos: ImVec2, cond: ImGuiCond) void;
pub extern fn igSetWindowSizeStr(name: ?[*]const u8, size: ImVec2, cond: ImGuiCond) void;
pub extern fn igSetWindowCollapsedStr(name: ?[*]const u8, collapsed: bool, cond: ImGuiCond) void;
pub extern fn igSetWindowFocusStr(name: ?[*]const u8) void;
pub extern fn igGetScrollX() f32;
pub extern fn igGetScrollY() f32;
pub extern fn igGetScrollMaxX() f32;
pub extern fn igGetScrollMaxY() f32;
pub extern fn igSetScrollX(scroll_x: f32) void;
pub extern fn igSetScrollY(scroll_y: f32) void;
pub extern fn igSetScrollHere(center_y_ratio: f32) void;
pub extern fn igSetScrollFromPosY(pos_y: f32, center_y_ratio: f32) void;
pub extern fn igPushFont(font: ?[*]ImFont) void;
pub extern fn igPopFont() void;
pub extern fn igPushStyleColorU32(idx: ImGuiCol, col: ImU32) void;
pub extern fn igPushStyleColor(idx: ImGuiCol, col: ImVec4) void;
pub extern fn igPopStyleColor(count: c_int) void;
pub extern fn igPushStyleVarFloat(idx: ImGuiStyleVar, val: f32) void;
pub extern fn igPushStyleVarVec2(idx: ImGuiStyleVar, val: ImVec2) void;
pub extern fn igPopStyleVar(count: c_int) void;
pub extern fn igGetStyleColorVec4(idx: ImGuiCol) ?[*]const ImVec4;
pub extern fn igGetFont() ?[*]ImFont;
pub extern fn igGetFontSize() f32;
pub extern fn igGetFontTexUvWhitePixel() ImVec2;
pub extern fn igGetColorU32(idx: ImGuiCol, alpha_mul: f32) ImU32;
pub extern fn igGetColorU32Vec4(col: ImVec4) ImU32;
pub extern fn igGetColorU32U32(col: ImU32) ImU32;
pub extern fn igPushItemWidth(item_width: f32) void;
pub extern fn igPopItemWidth() void;
pub extern fn igCalcItemWidth() f32;
pub extern fn igPushTextWrapPos(wrap_pos_x: f32) void;
pub extern fn igPopTextWrapPos() void;
pub extern fn igPushAllowKeyboardFocus(allow_keyboard_focus: bool) void;
pub extern fn igPopAllowKeyboardFocus() void;
pub extern fn igPushButtonRepeat(repeat: bool) void;
pub extern fn igPopButtonRepeat() void;
pub extern fn igSeparator() void;
pub extern fn igSameLine(pos_x: f32, spacing_w: f32) void;
pub extern fn igNewLine() void;
pub extern fn igSpacing() void;
pub extern fn igDummy(size: ImVec2) void;
pub extern fn igIndent(indent_w: f32) void;
pub extern fn igUnindent(indent_w: f32) void;
pub extern fn igBeginGroup() void;
pub extern fn igEndGroup() void;
pub extern fn igGetCursorPos() ImVec2;
pub extern fn igGetCursorPosX() f32;
pub extern fn igGetCursorPosY() f32;
pub extern fn igSetCursorPos(local_pos: ImVec2) void;
pub extern fn igSetCursorPosX(x: f32) void;
pub extern fn igSetCursorPosY(y: f32) void;
pub extern fn igGetCursorStartPos() ImVec2;
pub extern fn igGetCursorScreenPos() ImVec2;
pub extern fn igSetCursorScreenPos(screen_pos: ImVec2) void;
pub extern fn igAlignTextToFramePadding() void;
pub extern fn igGetTextLineHeight() f32;
pub extern fn igGetTextLineHeightWithSpacing() f32;
pub extern fn igGetFrameHeight() f32;
pub extern fn igGetFrameHeightWithSpacing() f32;
pub extern fn igPushIDStr(str_id: ?[*]const u8) void;
pub extern fn igPushIDRange(str_id_begin: ?[*]const u8, str_id_end: ?[*]const u8) void;
pub extern fn igPushIDPtr(ptr_id: ?*const c_void) void;
pub extern fn igPushIDInt(int_id: c_int) void;
pub extern fn igPopID() void;
pub extern fn igGetIDStr(str_id: ?[*]const u8) ImGuiID;
pub extern fn igGetIDRange(str_id_begin: ?[*]const u8, str_id_end: ?[*]const u8) ImGuiID;
pub extern fn igGetIDPtr(ptr_id: ?*const c_void) ImGuiID;
pub extern fn igTextUnformatted(text: ?[*]const u8, text_end: ?[*]const u8) void;
pub extern fn igText(fmt: ?[*]const u8) void;
pub extern fn igTextV(fmt: ?[*]const u8, args: ?[*]struct___va_list_tag) void;
pub extern fn igTextColored(col: ImVec4, fmt: ?[*]const u8) void;
pub extern fn igTextColoredV(col: ImVec4, fmt: ?[*]const u8, args: ?[*]struct___va_list_tag) void;
pub extern fn igTextDisabled(fmt: ?[*]const u8) void;
pub extern fn igTextDisabledV(fmt: ?[*]const u8, args: ?[*]struct___va_list_tag) void;
pub extern fn igTextWrapped(fmt: ?[*]const u8) void;
pub extern fn igTextWrappedV(fmt: ?[*]const u8, args: ?[*]struct___va_list_tag) void;
pub extern fn igLabelText(label: ?[*]const u8, fmt: ?[*]const u8) void;
pub extern fn igLabelTextV(label: ?[*]const u8, fmt: ?[*]const u8, args: ?[*]struct___va_list_tag) void;
pub extern fn igBulletText(fmt: ?[*]const u8) void;
pub extern fn igBulletTextV(fmt: ?[*]const u8, args: ?[*]struct___va_list_tag) void;
pub extern fn igButton(label: ?[*]const u8, size: ImVec2) bool;
pub extern fn igSmallButton(label: ?[*]const u8) bool;
pub extern fn igInvisibleButton(str_id: ?[*]const u8, size: ImVec2) bool;
pub extern fn igArrowButton(str_id: ?[*]const u8, dir: ImGuiDir) bool;
pub extern fn igImage(user_texture_id: ImTextureID, size: ImVec2, uv0: ImVec2, uv1: ImVec2, tint_col: ImVec4, border_col: ImVec4) void;
pub extern fn igImageButton(user_texture_id: ImTextureID, size: ImVec2, uv0: ImVec2, uv1: ImVec2, frame_padding: c_int, bg_col: ImVec4, tint_col: ImVec4) bool;
pub extern fn igCheckbox(label: ?[*]const u8, v: ?[*]bool) bool;
pub extern fn igCheckboxFlags(label: ?[*]const u8, flags: ?[*]c_uint, flags_value: c_uint) bool;
pub extern fn igRadioButtonBool(label: ?[*]const u8, active: bool) bool;
pub extern fn igRadioButtonIntPtr(label: ?[*]const u8, v: ?[*]c_int, v_button: c_int) bool;
pub extern fn igProgressBar(fraction: f32, size_arg: ImVec2, overlay: ?[*]const u8) void;
pub extern fn igBullet() void;
pub extern fn igBeginCombo(label: ?[*]const u8, preview_value: ?[*]const u8, flags: ImGuiComboFlags) bool;
pub extern fn igEndCombo() void;
pub extern fn igCombo(label: ?[*]const u8, current_item: ?[*]c_int, items: ?[*]const (?[*]const u8), items_count: c_int, popup_max_height_in_items: c_int) bool;
pub extern fn igComboStr(label: ?[*]const u8, current_item: ?[*]c_int, items_separated_by_zeros: ?[*]const u8, popup_max_height_in_items: c_int) bool;
pub extern fn igComboFnPtr(label: ?[*]const u8, current_item: ?[*]c_int, items_getter: ?extern fn(?*c_void, c_int, ?[*](?[*]const u8)) bool, data: ?*c_void, items_count: c_int, popup_max_height_in_items: c_int) bool;
pub extern fn igDragFloat(label: ?[*]const u8, v: ?[*]f32, v_speed: f32, v_min: f32, v_max: f32, format: ?[*]const u8, power: f32) bool;
pub extern fn igDragFloat2(label: ?[*]const u8, v: ?[*]f32, v_speed: f32, v_min: f32, v_max: f32, format: ?[*]const u8, power: f32) bool;
pub extern fn igDragFloat3(label: ?[*]const u8, v: ?[*]f32, v_speed: f32, v_min: f32, v_max: f32, format: ?[*]const u8, power: f32) bool;
pub extern fn igDragFloat4(label: ?[*]const u8, v: ?[*]f32, v_speed: f32, v_min: f32, v_max: f32, format: ?[*]const u8, power: f32) bool;
pub extern fn igDragFloatRange2(label: ?[*]const u8, v_current_min: ?[*]f32, v_current_max: ?[*]f32, v_speed: f32, v_min: f32, v_max: f32, format: ?[*]const u8, format_max: ?[*]const u8, power: f32) bool;
pub extern fn igDragInt(label: ?[*]const u8, v: ?[*]c_int, v_speed: f32, v_min: c_int, v_max: c_int, format: ?[*]const u8) bool;
pub extern fn igDragInt2(label: ?[*]const u8, v: ?[*]c_int, v_speed: f32, v_min: c_int, v_max: c_int, format: ?[*]const u8) bool;
pub extern fn igDragInt3(label: ?[*]const u8, v: ?[*]c_int, v_speed: f32, v_min: c_int, v_max: c_int, format: ?[*]const u8) bool;
pub extern fn igDragInt4(label: ?[*]const u8, v: ?[*]c_int, v_speed: f32, v_min: c_int, v_max: c_int, format: ?[*]const u8) bool;
pub extern fn igDragIntRange2(label: ?[*]const u8, v_current_min: ?[*]c_int, v_current_max: ?[*]c_int, v_speed: f32, v_min: c_int, v_max: c_int, format: ?[*]const u8, format_max: ?[*]const u8) bool;
pub extern fn igDragScalar(label: ?[*]const u8, data_type: ImGuiDataType, v: ?*c_void, v_speed: f32, v_min: ?*const c_void, v_max: ?*const c_void, format: ?[*]const u8, power: f32) bool;
pub extern fn igDragScalarN(label: ?[*]const u8, data_type: ImGuiDataType, v: ?*c_void, components: c_int, v_speed: f32, v_min: ?*const c_void, v_max: ?*const c_void, format: ?[*]const u8, power: f32) bool;
pub extern fn igSliderFloat(label: ?[*]const u8, v: ?[*]f32, v_min: f32, v_max: f32, format: ?[*]const u8, power: f32) bool;
pub extern fn igSliderFloat2(label: ?[*]const u8, v: ?[*]f32, v_min: f32, v_max: f32, format: ?[*]const u8, power: f32) bool;
pub extern fn igSliderFloat3(label: ?[*]const u8, v: ?[*]f32, v_min: f32, v_max: f32, format: ?[*]const u8, power: f32) bool;
pub extern fn igSliderFloat4(label: ?[*]const u8, v: ?[*]f32, v_min: f32, v_max: f32, format: ?[*]const u8, power: f32) bool;
pub extern fn igSliderAngle(label: ?[*]const u8, v_rad: ?[*]f32, v_degrees_min: f32, v_degrees_max: f32) bool;
pub extern fn igSliderInt(label: ?[*]const u8, v: ?[*]c_int, v_min: c_int, v_max: c_int, format: ?[*]const u8) bool;
pub extern fn igSliderInt2(label: ?[*]const u8, v: ?[*]c_int, v_min: c_int, v_max: c_int, format: ?[*]const u8) bool;
pub extern fn igSliderInt3(label: ?[*]const u8, v: ?[*]c_int, v_min: c_int, v_max: c_int, format: ?[*]const u8) bool;
pub extern fn igSliderInt4(label: ?[*]const u8, v: ?[*]c_int, v_min: c_int, v_max: c_int, format: ?[*]const u8) bool;
pub extern fn igSliderScalar(label: ?[*]const u8, data_type: ImGuiDataType, v: ?*c_void, v_min: ?*const c_void, v_max: ?*const c_void, format: ?[*]const u8, power: f32) bool;
pub extern fn igSliderScalarN(label: ?[*]const u8, data_type: ImGuiDataType, v: ?*c_void, components: c_int, v_min: ?*const c_void, v_max: ?*const c_void, format: ?[*]const u8, power: f32) bool;
pub extern fn igVSliderFloat(label: ?[*]const u8, size: ImVec2, v: ?[*]f32, v_min: f32, v_max: f32, format: ?[*]const u8, power: f32) bool;
pub extern fn igVSliderInt(label: ?[*]const u8, size: ImVec2, v: ?[*]c_int, v_min: c_int, v_max: c_int, format: ?[*]const u8) bool;
pub extern fn igVSliderScalar(label: ?[*]const u8, size: ImVec2, data_type: ImGuiDataType, v: ?*c_void, v_min: ?*const c_void, v_max: ?*const c_void, format: ?[*]const u8, power: f32) bool;
pub extern fn igInputText(label: ?[*]const u8, buf: ?[*]u8, buf_size: usize, flags: ImGuiInputTextFlags, callback: ImGuiInputTextCallback, user_data: ?*c_void) bool;
pub extern fn igInputTextMultiline(label: ?[*]const u8, buf: ?[*]u8, buf_size: usize, size: ImVec2, flags: ImGuiInputTextFlags, callback: ImGuiInputTextCallback, user_data: ?*c_void) bool;
pub extern fn igInputFloat(label: ?[*]const u8, v: ?[*]f32, step: f32, step_fast: f32, format: ?[*]const u8, extra_flags: ImGuiInputTextFlags) bool;
pub extern fn igInputFloat2(label: ?[*]const u8, v: ?[*]f32, format: ?[*]const u8, extra_flags: ImGuiInputTextFlags) bool;
pub extern fn igInputFloat3(label: ?[*]const u8, v: ?[*]f32, format: ?[*]const u8, extra_flags: ImGuiInputTextFlags) bool;
pub extern fn igInputFloat4(label: ?[*]const u8, v: ?[*]f32, format: ?[*]const u8, extra_flags: ImGuiInputTextFlags) bool;
pub extern fn igInputInt(label: ?[*]const u8, v: ?[*]c_int, step: c_int, step_fast: c_int, extra_flags: ImGuiInputTextFlags) bool;
pub extern fn igInputInt2(label: ?[*]const u8, v: ?[*]c_int, extra_flags: ImGuiInputTextFlags) bool;
pub extern fn igInputInt3(label: ?[*]const u8, v: ?[*]c_int, extra_flags: ImGuiInputTextFlags) bool;
pub extern fn igInputInt4(label: ?[*]const u8, v: ?[*]c_int, extra_flags: ImGuiInputTextFlags) bool;
pub extern fn igInputDouble(label: ?[*]const u8, v: ?[*]f64, step: f64, step_fast: f64, format: ?[*]const u8, extra_flags: ImGuiInputTextFlags) bool;
pub extern fn igInputScalar(label: ?[*]const u8, data_type: ImGuiDataType, v: ?*c_void, step: ?*const c_void, step_fast: ?*const c_void, format: ?[*]const u8, extra_flags: ImGuiInputTextFlags) bool;
pub extern fn igInputScalarN(label: ?[*]const u8, data_type: ImGuiDataType, v: ?*c_void, components: c_int, step: ?*const c_void, step_fast: ?*const c_void, format: ?[*]const u8, extra_flags: ImGuiInputTextFlags) bool;
pub extern fn igColorEdit3(label: ?[*]const u8, col: ?[*]f32, flags: ImGuiColorEditFlags) bool;
pub extern fn igColorEdit4(label: ?[*]const u8, col: ?[*]f32, flags: ImGuiColorEditFlags) bool;
pub extern fn igColorPicker3(label: ?[*]const u8, col: ?[*]f32, flags: ImGuiColorEditFlags) bool;
pub extern fn igColorPicker4(label: ?[*]const u8, col: ?[*]f32, flags: ImGuiColorEditFlags, ref_col: ?[*]const f32) bool;
pub extern fn igColorButton(desc_id: ?[*]const u8, col: ImVec4, flags: ImGuiColorEditFlags, size: ImVec2) bool;
pub extern fn igSetColorEditOptions(flags: ImGuiColorEditFlags) void;
pub extern fn igTreeNodeStr(label: ?[*]const u8) bool;
pub extern fn igTreeNodeStrStr(str_id: ?[*]const u8, fmt: ?[*]const u8) bool;
pub extern fn igTreeNodePtr(ptr_id: ?*const c_void, fmt: ?[*]const u8) bool;
pub extern fn igTreeNodeVStr(str_id: ?[*]const u8, fmt: ?[*]const u8, args: ?[*]struct___va_list_tag) bool;
pub extern fn igTreeNodeVPtr(ptr_id: ?*const c_void, fmt: ?[*]const u8, args: ?[*]struct___va_list_tag) bool;
pub extern fn igTreeNodeExStr(label: ?[*]const u8, flags: ImGuiTreeNodeFlags) bool;
pub extern fn igTreeNodeExStrStr(str_id: ?[*]const u8, flags: ImGuiTreeNodeFlags, fmt: ?[*]const u8) bool;
pub extern fn igTreeNodeExPtr(ptr_id: ?*const c_void, flags: ImGuiTreeNodeFlags, fmt: ?[*]const u8) bool;
pub extern fn igTreeNodeExVStr(str_id: ?[*]const u8, flags: ImGuiTreeNodeFlags, fmt: ?[*]const u8, args: ?[*]struct___va_list_tag) bool;
pub extern fn igTreeNodeExVPtr(ptr_id: ?*const c_void, flags: ImGuiTreeNodeFlags, fmt: ?[*]const u8, args: ?[*]struct___va_list_tag) bool;
pub extern fn igTreePushStr(str_id: ?[*]const u8) void;
pub extern fn igTreePushPtr(ptr_id: ?*const c_void) void;
pub extern fn igTreePop() void;
pub extern fn igTreeAdvanceToLabelPos() void;
pub extern fn igGetTreeNodeToLabelSpacing() f32;
pub extern fn igSetNextTreeNodeOpen(is_open: bool, cond: ImGuiCond) void;
pub extern fn igCollapsingHeader(label: ?[*]const u8, flags: ImGuiTreeNodeFlags) bool;
pub extern fn igCollapsingHeaderBoolPtr(label: ?[*]const u8, p_open: ?[*]bool, flags: ImGuiTreeNodeFlags) bool;
pub extern fn igSelectable(label: ?[*]const u8, selected: bool, flags: ImGuiSelectableFlags, size: ImVec2) bool;
pub extern fn igSelectableBoolPtr(label: ?[*]const u8, p_selected: ?[*]bool, flags: ImGuiSelectableFlags, size: ImVec2) bool;
pub extern fn igListBoxStr_arr(label: ?[*]const u8, current_item: ?[*]c_int, items: ?[*]const (?[*]const u8), items_count: c_int, height_in_items: c_int) bool;
pub extern fn igListBoxFnPtr(label: ?[*]const u8, current_item: ?[*]c_int, items_getter: ?extern fn(?*c_void, c_int, ?[*](?[*]const u8)) bool, data: ?*c_void, items_count: c_int, height_in_items: c_int) bool;
pub extern fn igListBoxHeaderVec2(label: ?[*]const u8, size: ImVec2) bool;
pub extern fn igListBoxHeaderInt(label: ?[*]const u8, items_count: c_int, height_in_items: c_int) bool;
pub extern fn igListBoxFooter() void;
pub extern fn igPlotLines(label: ?[*]const u8, values: ?[*]const f32, values_count: c_int, values_offset: c_int, overlay_text: ?[*]const u8, scale_min: f32, scale_max: f32, graph_size: ImVec2, stride: c_int) void;
pub extern fn igPlotLinesFnPtr(label: ?[*]const u8, values_getter: ?extern fn(?*c_void, c_int) f32, data: ?*c_void, values_count: c_int, values_offset: c_int, overlay_text: ?[*]const u8, scale_min: f32, scale_max: f32, graph_size: ImVec2) void;
pub extern fn igPlotHistogramFloatPtr(label: ?[*]const u8, values: ?[*]const f32, values_count: c_int, values_offset: c_int, overlay_text: ?[*]const u8, scale_min: f32, scale_max: f32, graph_size: ImVec2, stride: c_int) void;
pub extern fn igPlotHistogramFnPtr(label: ?[*]const u8, values_getter: ?extern fn(?*c_void, c_int) f32, data: ?*c_void, values_count: c_int, values_offset: c_int, overlay_text: ?[*]const u8, scale_min: f32, scale_max: f32, graph_size: ImVec2) void;
pub extern fn igValueBool(prefix: ?[*]const u8, b: bool) void;
pub extern fn igValueInt(prefix: ?[*]const u8, v: c_int) void;
pub extern fn igValueUint(prefix: ?[*]const u8, v: c_uint) void;
pub extern fn igValueFloat(prefix: ?[*]const u8, v: f32, float_format: ?[*]const u8) void;
pub extern fn igBeginMainMenuBar() bool;
pub extern fn igEndMainMenuBar() void;
pub extern fn igBeginMenuBar() bool;
pub extern fn igEndMenuBar() void;
pub extern fn igBeginMenu(label: ?[*]const u8, enabled: bool) bool;
pub extern fn igEndMenu() void;
pub extern fn igMenuItemBool(label: ?[*]const u8, shortcut: ?[*]const u8, selected: bool, enabled: bool) bool;
pub extern fn igMenuItemBoolPtr(label: ?[*]const u8, shortcut: ?[*]const u8, p_selected: ?[*]bool, enabled: bool) bool;
pub extern fn igBeginTooltip() void;
pub extern fn igEndTooltip() void;
pub extern fn igSetTooltip(fmt: ?[*]const u8) void;
pub extern fn igSetTooltipV(fmt: ?[*]const u8, args: ?[*]struct___va_list_tag) void;
pub extern fn igOpenPopup(str_id: ?[*]const u8) void;
pub extern fn igBeginPopup(str_id: ?[*]const u8, flags: ImGuiWindowFlags) bool;
pub extern fn igBeginPopupContextItem(str_id: ?[*]const u8, mouse_button: c_int) bool;
pub extern fn igBeginPopupContextWindow(str_id: ?[*]const u8, mouse_button: c_int, also_over_items: bool) bool;
pub extern fn igBeginPopupContextVoid(str_id: ?[*]const u8, mouse_button: c_int) bool;
pub extern fn igBeginPopupModal(name: ?[*]const u8, p_open: ?[*]bool, flags: ImGuiWindowFlags) bool;
pub extern fn igEndPopup() void;
pub extern fn igOpenPopupOnItemClick(str_id: ?[*]const u8, mouse_button: c_int) bool;
pub extern fn igIsPopupOpen(str_id: ?[*]const u8) bool;
pub extern fn igCloseCurrentPopup() void;
pub extern fn igColumns(count: c_int, id: ?[*]const u8, border: bool) void;
pub extern fn igNextColumn() void;
pub extern fn igGetColumnIndex() c_int;
pub extern fn igGetColumnWidth(column_index: c_int) f32;
pub extern fn igSetColumnWidth(column_index: c_int, width: f32) void;
pub extern fn igGetColumnOffset(column_index: c_int) f32;
pub extern fn igSetColumnOffset(column_index: c_int, offset_x: f32) void;
pub extern fn igGetColumnsCount() c_int;
pub extern fn igLogToTTY(max_depth: c_int) void;
pub extern fn igLogToFile(max_depth: c_int, filename: ?[*]const u8) void;
pub extern fn igLogToClipboard(max_depth: c_int) void;
pub extern fn igLogFinish() void;
pub extern fn igLogButtons() void;
pub extern fn igBeginDragDropSource(flags: ImGuiDragDropFlags) bool;
pub extern fn igSetDragDropPayload(type_0: ?[*]const u8, data: ?*const c_void, size: usize, cond: ImGuiCond) bool;
pub extern fn igEndDragDropSource() void;
pub extern fn igBeginDragDropTarget() bool;
pub extern fn igAcceptDragDropPayload(type_0: ?[*]const u8, flags: ImGuiDragDropFlags) ?[*]const ImGuiPayload;
pub extern fn igEndDragDropTarget() void;
pub extern fn igPushClipRect(clip_rect_min: ImVec2, clip_rect_max: ImVec2, intersect_with_current_clip_rect: bool) void;
pub extern fn igPopClipRect() void;
pub extern fn igSetItemDefaultFocus() void;
pub extern fn igSetKeyboardFocusHere(offset: c_int) void;
pub extern fn igIsItemHovered(flags: ImGuiHoveredFlags) bool;
pub extern fn igIsItemActive() bool;
pub extern fn igIsItemFocused() bool;
pub extern fn igIsItemClicked(mouse_button: c_int) bool;
pub extern fn igIsItemVisible() bool;
pub extern fn igIsItemEdited() bool;
pub extern fn igIsItemDeactivated() bool;
pub extern fn igIsItemDeactivatedAfterEdit() bool;
pub extern fn igIsAnyItemHovered() bool;
pub extern fn igIsAnyItemActive() bool;
pub extern fn igIsAnyItemFocused() bool;
pub extern fn igGetItemRectMin() ImVec2;
pub extern fn igGetItemRectMax() ImVec2;
pub extern fn igGetItemRectSize() ImVec2;
pub extern fn igSetItemAllowOverlap() void;
pub extern fn igIsRectVisible(size: ImVec2) bool;
pub extern fn igIsRectVisibleVec2(rect_min: ImVec2, rect_max: ImVec2) bool;
pub extern fn igGetTime() f64;
pub extern fn igGetFrameCount() c_int;
pub extern fn igGetOverlayDrawList() ?[*]ImDrawList;
pub extern fn igGetDrawListSharedData() ?*ImDrawListSharedData;
pub extern fn igGetStyleColorName(idx: ImGuiCol) ?[*]const u8;
pub extern fn igSetStateStorage(storage: ?[*]ImGuiStorage) void;
pub extern fn igGetStateStorage() ?[*]ImGuiStorage;
pub extern fn igCalcTextSize(text: ?[*]const u8, text_end: ?[*]const u8, hide_text_after_double_hash: bool, wrap_width: f32) ImVec2;
pub extern fn igCalcListClipping(items_count: c_int, items_height: f32, out_items_display_start: ?[*]c_int, out_items_display_end: ?[*]c_int) void;
pub extern fn igBeginChildFrame(id: ImGuiID, size: ImVec2, flags: ImGuiWindowFlags) bool;
pub extern fn igEndChildFrame() void;
pub extern fn igColorConvertU32ToFloat4(in: ImU32) ImVec4;
pub extern fn igColorConvertFloat4ToU32(in: ImVec4) ImU32;
pub extern fn igGetKeyIndex(imgui_key: ImGuiKey) c_int;
pub extern fn igIsKeyDown(user_key_index: c_int) bool;
pub extern fn igIsKeyPressed(user_key_index: c_int, repeat: bool) bool;
pub extern fn igIsKeyReleased(user_key_index: c_int) bool;
pub extern fn igGetKeyPressedAmount(key_index: c_int, repeat_delay: f32, rate: f32) c_int;
pub extern fn igIsMouseDown(button: c_int) bool;
pub extern fn igIsAnyMouseDown() bool;
pub extern fn igIsMouseClicked(button: c_int, repeat: bool) bool;
pub extern fn igIsMouseDoubleClicked(button: c_int) bool;
pub extern fn igIsMouseReleased(button: c_int) bool;
pub extern fn igIsMouseDragging(button: c_int, lock_threshold: f32) bool;
pub extern fn igIsMouseHoveringRect(r_min: ImVec2, r_max: ImVec2, clip: bool) bool;
pub extern fn igIsMousePosValid(mouse_pos: ?[*]const ImVec2) bool;
pub extern fn igGetMousePos() ImVec2;
pub extern fn igGetMousePosOnOpeningCurrentPopup() ImVec2;
pub extern fn igGetMouseDragDelta(button: c_int, lock_threshold: f32) ImVec2;
pub extern fn igResetMouseDragDelta(button: c_int) void;
pub extern fn igGetMouseCursor() ImGuiMouseCursor;
pub extern fn igSetMouseCursor(type_0: ImGuiMouseCursor) void;
pub extern fn igCaptureKeyboardFromApp(capture: bool) void;
pub extern fn igCaptureMouseFromApp(capture: bool) void;
pub extern fn igGetClipboardText() ?[*]const u8;
pub extern fn igSetClipboardText(text: ?[*]const u8) void;
pub extern fn igLoadIniSettingsFromDisk(ini_filename: ?[*]const u8) void;
pub extern fn igLoadIniSettingsFromMemory(ini_data: ?[*]const u8, ini_size: usize) void;
pub extern fn igSaveIniSettingsToDisk(ini_filename: ?[*]const u8) void;
pub extern fn igSaveIniSettingsToMemory(out_ini_size: ?[*]usize) ?[*]const u8;
pub extern fn igSetAllocatorFunctions(alloc_func: ?extern fn(usize, ?*c_void) ?*c_void, free_func: ?extern fn(?*c_void, ?*c_void) void, user_data: ?*c_void) void;
pub extern fn igMemAlloc(size: usize) ?*c_void;
pub extern fn igMemFree(ptr: ?*c_void) void;
pub extern fn ImGuiStyle_ImGuiStyle() ?[*]ImGuiStyle;
pub extern fn ImGuiStyle_destroy(self: ?[*]ImGuiStyle) void;
pub extern fn ImGuiStyle_ScaleAllSizes(self: ?[*]ImGuiStyle, scale_factor: f32) void;
pub extern fn ImGuiIO_AddInputCharacter(self: ?[*]ImGuiIO, c: ImWchar) void;
pub extern fn ImGuiIO_AddInputCharactersUTF8(self: ?[*]ImGuiIO, utf8_chars: ?[*]const u8) void;
pub extern fn ImGuiIO_ClearInputCharacters(self: ?[*]ImGuiIO) void;
pub extern fn ImGuiIO_ImGuiIO() ?[*]ImGuiIO;
pub extern fn ImGuiIO_destroy(self: ?[*]ImGuiIO) void;
pub extern fn ImGuiOnceUponAFrame_ImGuiOnceUponAFrame() ?[*]ImGuiOnceUponAFrame;
pub extern fn ImGuiOnceUponAFrame_destroy(self: ?[*]ImGuiOnceUponAFrame) void;
pub extern fn ImGuiTextFilter_ImGuiTextFilter(default_filter: ?[*]const u8) ?[*]ImGuiTextFilter;
pub extern fn ImGuiTextFilter_destroy(self: ?[*]ImGuiTextFilter) void;
pub extern fn ImGuiTextFilter_Draw(self: ?[*]ImGuiTextFilter, label: ?[*]const u8, width: f32) bool;
pub extern fn ImGuiTextFilter_PassFilter(self: ?[*]ImGuiTextFilter, text: ?[*]const u8, text_end: ?[*]const u8) bool;
pub extern fn ImGuiTextFilter_Build(self: ?[*]ImGuiTextFilter) void;
pub extern fn ImGuiTextFilter_Clear(self: ?[*]ImGuiTextFilter) void;
pub extern fn ImGuiTextFilter_IsActive(self: ?[*]ImGuiTextFilter) bool;
pub extern fn TextRange_TextRange() ?[*]TextRange;
pub extern fn TextRange_destroy(self: ?[*]TextRange) void;
pub extern fn TextRange_TextRangeStr(_b: ?[*]const u8, _e: ?[*]const u8) ?[*]TextRange;
pub extern fn TextRange_begin(self: ?[*]TextRange) ?[*]const u8;
pub extern fn TextRange_end(self: ?[*]TextRange) ?[*]const u8;
pub extern fn TextRange_empty(self: ?[*]TextRange) bool;
pub extern fn TextRange_split(self: ?[*]TextRange, separator: u8, out: ?[*]ImVector_TextRange) void;
pub extern fn ImGuiTextBuffer_ImGuiTextBuffer() ?[*]ImGuiTextBuffer;
pub extern fn ImGuiTextBuffer_destroy(self: ?[*]ImGuiTextBuffer) void;
pub extern fn ImGuiTextBuffer_begin(self: ?[*]ImGuiTextBuffer) ?[*]const u8;
pub extern fn ImGuiTextBuffer_end(self: ?[*]ImGuiTextBuffer) ?[*]const u8;
pub extern fn ImGuiTextBuffer_size(self: ?[*]ImGuiTextBuffer) c_int;
pub extern fn ImGuiTextBuffer_empty(self: ?[*]ImGuiTextBuffer) bool;
pub extern fn ImGuiTextBuffer_clear(self: ?[*]ImGuiTextBuffer) void;
pub extern fn ImGuiTextBuffer_reserve(self: ?[*]ImGuiTextBuffer, capacity: c_int) void;
pub extern fn ImGuiTextBuffer_c_str(self: ?[*]ImGuiTextBuffer) ?[*]const u8;
pub extern fn ImGuiTextBuffer_appendfv(self: ?[*]ImGuiTextBuffer, fmt: ?[*]const u8, args: ?[*]struct___va_list_tag) void;
pub extern fn Pair_PairInt(_key: ImGuiID, _val_i: c_int) ?[*]Pair;
pub extern fn Pair_destroy(self: ?[*]Pair) void;
pub extern fn Pair_PairFloat(_key: ImGuiID, _val_f: f32) ?[*]Pair;
pub extern fn Pair_PairPtr(_key: ImGuiID, _val_p: ?*c_void) ?[*]Pair;
pub extern fn ImGuiStorage_Clear(self: ?[*]ImGuiStorage) void;
pub extern fn ImGuiStorage_GetInt(self: ?[*]ImGuiStorage, key: ImGuiID, default_val: c_int) c_int;
pub extern fn ImGuiStorage_SetInt(self: ?[*]ImGuiStorage, key: ImGuiID, val: c_int) void;
pub extern fn ImGuiStorage_GetBool(self: ?[*]ImGuiStorage, key: ImGuiID, default_val: bool) bool;
pub extern fn ImGuiStorage_SetBool(self: ?[*]ImGuiStorage, key: ImGuiID, val: bool) void;
pub extern fn ImGuiStorage_GetFloat(self: ?[*]ImGuiStorage, key: ImGuiID, default_val: f32) f32;
pub extern fn ImGuiStorage_SetFloat(self: ?[*]ImGuiStorage, key: ImGuiID, val: f32) void;
pub extern fn ImGuiStorage_GetVoidPtr(self: ?[*]ImGuiStorage, key: ImGuiID) ?*c_void;
pub extern fn ImGuiStorage_SetVoidPtr(self: ?[*]ImGuiStorage, key: ImGuiID, val: ?*c_void) void;
pub extern fn ImGuiStorage_GetIntRef(self: ?[*]ImGuiStorage, key: ImGuiID, default_val: c_int) ?[*]c_int;
pub extern fn ImGuiStorage_GetBoolRef(self: ?[*]ImGuiStorage, key: ImGuiID, default_val: bool) ?[*]bool;
pub extern fn ImGuiStorage_GetFloatRef(self: ?[*]ImGuiStorage, key: ImGuiID, default_val: f32) ?[*]f32;
pub extern fn ImGuiStorage_GetVoidPtrRef(self: ?[*]ImGuiStorage, key: ImGuiID, default_val: ?*c_void) ?[*](?*c_void);
pub extern fn ImGuiStorage_SetAllInt(self: ?[*]ImGuiStorage, val: c_int) void;
pub extern fn ImGuiStorage_BuildSortByKey(self: ?[*]ImGuiStorage) void;
pub extern fn ImGuiInputTextCallbackData_ImGuiInputTextCallbackData() ?[*]ImGuiInputTextCallbackData;
pub extern fn ImGuiInputTextCallbackData_destroy(self: ?[*]ImGuiInputTextCallbackData) void;
pub extern fn ImGuiInputTextCallbackData_DeleteChars(self: ?[*]ImGuiInputTextCallbackData, pos: c_int, bytes_count: c_int) void;
pub extern fn ImGuiInputTextCallbackData_InsertChars(self: ?[*]ImGuiInputTextCallbackData, pos: c_int, text: ?[*]const u8, text_end: ?[*]const u8) void;
pub extern fn ImGuiInputTextCallbackData_HasSelection(self: ?[*]ImGuiInputTextCallbackData) bool;
pub extern fn ImGuiPayload_ImGuiPayload() ?[*]ImGuiPayload;
pub extern fn ImGuiPayload_destroy(self: ?[*]ImGuiPayload) void;
pub extern fn ImGuiPayload_Clear(self: ?[*]ImGuiPayload) void;
pub extern fn ImGuiPayload_IsDataType(self: ?[*]ImGuiPayload, type_0: ?[*]const u8) bool;
pub extern fn ImGuiPayload_IsPreview(self: ?[*]ImGuiPayload) bool;
pub extern fn ImGuiPayload_IsDelivery(self: ?[*]ImGuiPayload) bool;
pub extern fn ImColor_ImColor() ?[*]ImColor;
pub extern fn ImColor_destroy(self: ?[*]ImColor) void;
pub extern fn ImColor_ImColorInt(r: c_int, g: c_int, b: c_int, a: c_int) ?[*]ImColor;
pub extern fn ImColor_ImColorU32(rgba: ImU32) ?[*]ImColor;
pub extern fn ImColor_ImColorFloat(r: f32, g: f32, b: f32, a: f32) ?[*]ImColor;
pub extern fn ImColor_ImColorVec4(col: ImVec4) ?[*]ImColor;
pub extern fn ImColor_SetHSV(self: ?[*]ImColor, h: f32, s: f32, v: f32, a: f32) void;
pub extern fn ImColor_HSV(self: ?[*]ImColor, h: f32, s: f32, v: f32, a: f32) ImColor;
pub extern fn ImGuiListClipper_ImGuiListClipper(items_count: c_int, items_height: f32) ?[*]ImGuiListClipper;
pub extern fn ImGuiListClipper_destroy(self: ?[*]ImGuiListClipper) void;
pub extern fn ImGuiListClipper_Step(self: ?[*]ImGuiListClipper) bool;
pub extern fn ImGuiListClipper_Begin(self: ?[*]ImGuiListClipper, items_count: c_int, items_height: f32) void;
pub extern fn ImGuiListClipper_End(self: ?[*]ImGuiListClipper) void;
pub extern fn ImDrawCmd_ImDrawCmd() ?[*]ImDrawCmd;
pub extern fn ImDrawCmd_destroy(self: ?[*]ImDrawCmd) void;
pub extern fn ImDrawList_ImDrawList(shared_data: ?*const ImDrawListSharedData) ?[*]ImDrawList;
pub extern fn ImDrawList_destroy(self: ?[*]ImDrawList) void;
pub extern fn ImDrawList_PushClipRect(self: ?[*]ImDrawList, clip_rect_min: ImVec2, clip_rect_max: ImVec2, intersect_with_current_clip_rect: bool) void;
pub extern fn ImDrawList_PushClipRectFullScreen(self: ?[*]ImDrawList) void;
pub extern fn ImDrawList_PopClipRect(self: ?[*]ImDrawList) void;
pub extern fn ImDrawList_PushTextureID(self: ?[*]ImDrawList, texture_id: ImTextureID) void;
pub extern fn ImDrawList_PopTextureID(self: ?[*]ImDrawList) void;
pub extern fn ImDrawList_GetClipRectMin(self: ?[*]ImDrawList) ImVec2;
pub extern fn ImDrawList_GetClipRectMax(self: ?[*]ImDrawList) ImVec2;
pub extern fn ImDrawList_AddLine(self: ?[*]ImDrawList, a: ImVec2, b: ImVec2, col: ImU32, thickness: f32) void;
pub extern fn ImDrawList_AddRect(self: ?[*]ImDrawList, a: ImVec2, b: ImVec2, col: ImU32, rounding: f32, rounding_corners_flags: c_int, thickness: f32) void;
pub extern fn ImDrawList_AddRectFilled(self: ?[*]ImDrawList, a: ImVec2, b: ImVec2, col: ImU32, rounding: f32, rounding_corners_flags: c_int) void;
pub extern fn ImDrawList_AddRectFilledMultiColor(self: ?[*]ImDrawList, a: ImVec2, b: ImVec2, col_upr_left: ImU32, col_upr_right: ImU32, col_bot_right: ImU32, col_bot_left: ImU32) void;
pub extern fn ImDrawList_AddQuad(self: ?[*]ImDrawList, a: ImVec2, b: ImVec2, c: ImVec2, d: ImVec2, col: ImU32, thickness: f32) void;
pub extern fn ImDrawList_AddQuadFilled(self: ?[*]ImDrawList, a: ImVec2, b: ImVec2, c: ImVec2, d: ImVec2, col: ImU32) void;
pub extern fn ImDrawList_AddTriangle(self: ?[*]ImDrawList, a: ImVec2, b: ImVec2, c: ImVec2, col: ImU32, thickness: f32) void;
pub extern fn ImDrawList_AddTriangleFilled(self: ?[*]ImDrawList, a: ImVec2, b: ImVec2, c: ImVec2, col: ImU32) void;
pub extern fn ImDrawList_AddCircle(self: ?[*]ImDrawList, centre: ImVec2, radius: f32, col: ImU32, num_segments: c_int, thickness: f32) void;
pub extern fn ImDrawList_AddCircleFilled(self: ?[*]ImDrawList, centre: ImVec2, radius: f32, col: ImU32, num_segments: c_int) void;
pub extern fn ImDrawList_AddText(self: ?[*]ImDrawList, pos: ImVec2, col: ImU32, text_begin: ?[*]const u8, text_end: ?[*]const u8) void;
pub extern fn ImDrawList_AddTextFontPtr(self: ?[*]ImDrawList, font: ?[*]const ImFont, font_size: f32, pos: ImVec2, col: ImU32, text_begin: ?[*]const u8, text_end: ?[*]const u8, wrap_width: f32, cpu_fine_clip_rect: ?[*]const ImVec4) void;
pub extern fn ImDrawList_AddImage(self: ?[*]ImDrawList, user_texture_id: ImTextureID, a: ImVec2, b: ImVec2, uv_a: ImVec2, uv_b: ImVec2, col: ImU32) void;
pub extern fn ImDrawList_AddImageQuad(self: ?[*]ImDrawList, user_texture_id: ImTextureID, a: ImVec2, b: ImVec2, c: ImVec2, d: ImVec2, uv_a: ImVec2, uv_b: ImVec2, uv_c: ImVec2, uv_d: ImVec2, col: ImU32) void;
pub extern fn ImDrawList_AddImageRounded(self: ?[*]ImDrawList, user_texture_id: ImTextureID, a: ImVec2, b: ImVec2, uv_a: ImVec2, uv_b: ImVec2, col: ImU32, rounding: f32, rounding_corners: c_int) void;
pub extern fn ImDrawList_AddPolyline(self: ?[*]ImDrawList, points: ?[*]const ImVec2, num_points: c_int, col: ImU32, closed: bool, thickness: f32) void;
pub extern fn ImDrawList_AddConvexPolyFilled(self: ?[*]ImDrawList, points: ?[*]const ImVec2, num_points: c_int, col: ImU32) void;
pub extern fn ImDrawList_AddBezierCurve(self: ?[*]ImDrawList, pos0: ImVec2, cp0: ImVec2, cp1: ImVec2, pos1: ImVec2, col: ImU32, thickness: f32, num_segments: c_int) void;
pub extern fn ImDrawList_PathClear(self: ?[*]ImDrawList) void;
pub extern fn ImDrawList_PathLineTo(self: ?[*]ImDrawList, pos: ImVec2) void;
pub extern fn ImDrawList_PathLineToMergeDuplicate(self: ?[*]ImDrawList, pos: ImVec2) void;
pub extern fn ImDrawList_PathFillConvex(self: ?[*]ImDrawList, col: ImU32) void;
pub extern fn ImDrawList_PathStroke(self: ?[*]ImDrawList, col: ImU32, closed: bool, thickness: f32) void;
pub extern fn ImDrawList_PathArcTo(self: ?[*]ImDrawList, centre: ImVec2, radius: f32, a_min: f32, a_max: f32, num_segments: c_int) void;
pub extern fn ImDrawList_PathArcToFast(self: ?[*]ImDrawList, centre: ImVec2, radius: f32, a_min_of_12: c_int, a_max_of_12: c_int) void;
pub extern fn ImDrawList_PathBezierCurveTo(self: ?[*]ImDrawList, p1: ImVec2, p2: ImVec2, p3: ImVec2, num_segments: c_int) void;
pub extern fn ImDrawList_PathRect(self: ?[*]ImDrawList, rect_min: ImVec2, rect_max: ImVec2, rounding: f32, rounding_corners_flags: c_int) void;
pub extern fn ImDrawList_ChannelsSplit(self: ?[*]ImDrawList, channels_count: c_int) void;
pub extern fn ImDrawList_ChannelsMerge(self: ?[*]ImDrawList) void;
pub extern fn ImDrawList_ChannelsSetCurrent(self: ?[*]ImDrawList, channel_index: c_int) void;
pub extern fn ImDrawList_AddCallback(self: ?[*]ImDrawList, callback: ImDrawCallback, callback_data: ?*c_void) void;
pub extern fn ImDrawList_AddDrawCmd(self: ?[*]ImDrawList) void;
pub extern fn ImDrawList_CloneOutput(self: ?[*]ImDrawList) ?[*]ImDrawList;
pub extern fn ImDrawList_Clear(self: ?[*]ImDrawList) void;
pub extern fn ImDrawList_ClearFreeMemory(self: ?[*]ImDrawList) void;
pub extern fn ImDrawList_PrimReserve(self: ?[*]ImDrawList, idx_count: c_int, vtx_count: c_int) void;
pub extern fn ImDrawList_PrimRect(self: ?[*]ImDrawList, a: ImVec2, b: ImVec2, col: ImU32) void;
pub extern fn ImDrawList_PrimRectUV(self: ?[*]ImDrawList, a: ImVec2, b: ImVec2, uv_a: ImVec2, uv_b: ImVec2, col: ImU32) void;
pub extern fn ImDrawList_PrimQuadUV(self: ?[*]ImDrawList, a: ImVec2, b: ImVec2, c: ImVec2, d: ImVec2, uv_a: ImVec2, uv_b: ImVec2, uv_c: ImVec2, uv_d: ImVec2, col: ImU32) void;
pub extern fn ImDrawList_PrimWriteVtx(self: ?[*]ImDrawList, pos: ImVec2, uv: ImVec2, col: ImU32) void;
pub extern fn ImDrawList_PrimWriteIdx(self: ?[*]ImDrawList, idx: ImDrawIdx) void;
pub extern fn ImDrawList_PrimVtx(self: ?[*]ImDrawList, pos: ImVec2, uv: ImVec2, col: ImU32) void;
pub extern fn ImDrawList_UpdateClipRect(self: ?[*]ImDrawList) void;
pub extern fn ImDrawList_UpdateTextureID(self: ?[*]ImDrawList) void;
pub extern fn ImDrawData_ImDrawData() ?[*]ImDrawData;
pub extern fn ImDrawData_destroy(self: ?[*]ImDrawData) void;
pub extern fn ImDrawData_Clear(self: ?[*]ImDrawData) void;
pub extern fn ImDrawData_DeIndexAllBuffers(self: ?[*]ImDrawData) void;
pub extern fn ImDrawData_ScaleClipRects(self: ?[*]ImDrawData, sc: ImVec2) void;
pub extern fn ImFontConfig_ImFontConfig() ?[*]ImFontConfig;
pub extern fn ImFontConfig_destroy(self: ?[*]ImFontConfig) void;
pub extern fn ImFontAtlas_ImFontAtlas() ?[*]ImFontAtlas;
pub extern fn ImFontAtlas_destroy(self: ?[*]ImFontAtlas) void;
pub extern fn ImFontAtlas_AddFont(self: ?[*]ImFontAtlas, font_cfg: ?[*]const ImFontConfig) ?[*]ImFont;
pub extern fn ImFontAtlas_AddFontDefault(self: ?[*]ImFontAtlas, font_cfg: ?[*]const ImFontConfig) ?[*]ImFont;
pub extern fn ImFontAtlas_AddFontFromFileTTF(self: ?[*]ImFontAtlas, filename: ?[*]const u8, size_pixels: f32, font_cfg: ?[*]const ImFontConfig, glyph_ranges: ?[*]const ImWchar) ?[*]ImFont;
pub extern fn ImFontAtlas_AddFontFromMemoryTTF(self: ?[*]ImFontAtlas, font_data: ?*c_void, font_size: c_int, size_pixels: f32, font_cfg: ?[*]const ImFontConfig, glyph_ranges: ?[*]const ImWchar) ?[*]ImFont;
pub extern fn ImFontAtlas_AddFontFromMemoryCompressedTTF(self: ?[*]ImFontAtlas, compressed_font_data: ?*const c_void, compressed_font_size: c_int, size_pixels: f32, font_cfg: ?[*]const ImFontConfig, glyph_ranges: ?[*]const ImWchar) ?[*]ImFont;
pub extern fn ImFontAtlas_AddFontFromMemoryCompressedBase85TTF(self: ?[*]ImFontAtlas, compressed_font_data_base85: ?[*]const u8, size_pixels: f32, font_cfg: ?[*]const ImFontConfig, glyph_ranges: ?[*]const ImWchar) ?[*]ImFont;
pub extern fn ImFontAtlas_ClearInputData(self: ?[*]ImFontAtlas) void;
pub extern fn ImFontAtlas_ClearTexData(self: ?[*]ImFontAtlas) void;
pub extern fn ImFontAtlas_ClearFonts(self: ?[*]ImFontAtlas) void;
pub extern fn ImFontAtlas_Clear(self: ?[*]ImFontAtlas) void;
pub extern fn ImFontAtlas_Build(self: ?[*]ImFontAtlas) bool;
pub extern fn ImFontAtlas_IsBuilt(self: ?[*]ImFontAtlas) bool;
pub extern fn ImFontAtlas_GetTexDataAsAlpha8(self: ?[*]ImFontAtlas, out_pixels: ?[*](?[*]u8), out_width: ?[*]c_int, out_height: ?[*]c_int, out_bytes_per_pixel: ?[*]c_int) void;
pub extern fn ImFontAtlas_GetTexDataAsRGBA32(self: ?[*]ImFontAtlas, out_pixels: ?[*](?[*]u8), out_width: ?[*]c_int, out_height: ?[*]c_int, out_bytes_per_pixel: ?[*]c_int) void;
pub extern fn ImFontAtlas_SetTexID(self: ?[*]ImFontAtlas, id: ImTextureID) void;
pub extern fn ImFontAtlas_GetGlyphRangesDefault(self: ?[*]ImFontAtlas) ?[*]const ImWchar;
pub extern fn ImFontAtlas_GetGlyphRangesKorean(self: ?[*]ImFontAtlas) ?[*]const ImWchar;
pub extern fn ImFontAtlas_GetGlyphRangesJapanese(self: ?[*]ImFontAtlas) ?[*]const ImWchar;
pub extern fn ImFontAtlas_GetGlyphRangesChineseFull(self: ?[*]ImFontAtlas) ?[*]const ImWchar;
pub extern fn ImFontAtlas_GetGlyphRangesChineseSimplifiedCommon(self: ?[*]ImFontAtlas) ?[*]const ImWchar;
pub extern fn ImFontAtlas_GetGlyphRangesCyrillic(self: ?[*]ImFontAtlas) ?[*]const ImWchar;
pub extern fn ImFontAtlas_GetGlyphRangesThai(self: ?[*]ImFontAtlas) ?[*]const ImWchar;
pub extern fn GlyphRangesBuilder_GlyphRangesBuilder() ?[*]GlyphRangesBuilder;
pub extern fn GlyphRangesBuilder_destroy(self: ?[*]GlyphRangesBuilder) void;
pub extern fn GlyphRangesBuilder_GetBit(self: ?[*]GlyphRangesBuilder, n: c_int) bool;
pub extern fn GlyphRangesBuilder_SetBit(self: ?[*]GlyphRangesBuilder, n: c_int) void;
pub extern fn GlyphRangesBuilder_AddChar(self: ?[*]GlyphRangesBuilder, c: ImWchar) void;
pub extern fn GlyphRangesBuilder_AddText(self: ?[*]GlyphRangesBuilder, text: ?[*]const u8, text_end: ?[*]const u8) void;
pub extern fn GlyphRangesBuilder_AddRanges(self: ?[*]GlyphRangesBuilder, ranges: ?[*]const ImWchar) void;
pub extern fn GlyphRangesBuilder_BuildRanges(self: ?[*]GlyphRangesBuilder, out_ranges: ?[*]ImVector_ImWchar) void;
pub extern fn CustomRect_CustomRect() ?[*]CustomRect;
pub extern fn CustomRect_destroy(self: ?[*]CustomRect) void;
pub extern fn CustomRect_IsPacked(self: ?[*]CustomRect) bool;
pub extern fn ImFontAtlas_AddCustomRectRegular(self: ?[*]ImFontAtlas, id: c_uint, width: c_int, height: c_int) c_int;
pub extern fn ImFontAtlas_AddCustomRectFontGlyph(self: ?[*]ImFontAtlas, font: ?[*]ImFont, id: ImWchar, width: c_int, height: c_int, advance_x: f32, offset: ImVec2) c_int;
pub extern fn ImFontAtlas_GetCustomRectByIndex(self: ?[*]ImFontAtlas, index: c_int) ?[*]const CustomRect;
pub extern fn ImFontAtlas_CalcCustomRectUV(self: ?[*]ImFontAtlas, rect: ?[*]const CustomRect, out_uv_min: ?[*]ImVec2, out_uv_max: ?[*]ImVec2) void;
pub extern fn ImFontAtlas_GetMouseCursorTexData(self: ?[*]ImFontAtlas, cursor: ImGuiMouseCursor, out_offset: ?[*]ImVec2, out_size: ?[*]ImVec2, out_uv_border: ?[*]ImVec2, out_uv_fill: ?[*]ImVec2) bool;
pub extern fn ImFont_ImFont() ?[*]ImFont;
pub extern fn ImFont_destroy(self: ?[*]ImFont) void;
pub extern fn ImFont_ClearOutputData(self: ?[*]ImFont) void;
pub extern fn ImFont_BuildLookupTable(self: ?[*]ImFont) void;
pub extern fn ImFont_FindGlyph(self: ?[*]ImFont, c: ImWchar) ?[*]const ImFontGlyph;
pub extern fn ImFont_FindGlyphNoFallback(self: ?[*]ImFont, c: ImWchar) ?[*]const ImFontGlyph;
pub extern fn ImFont_SetFallbackChar(self: ?[*]ImFont, c: ImWchar) void;
pub extern fn ImFont_GetCharAdvance(self: ?[*]ImFont, c: ImWchar) f32;
pub extern fn ImFont_IsLoaded(self: ?[*]ImFont) bool;
pub extern fn ImFont_GetDebugName(self: ?[*]ImFont) ?[*]const u8;
pub extern fn ImFont_CalcTextSizeA(self: ?[*]ImFont, size: f32, max_width: f32, wrap_width: f32, text_begin: ?[*]const u8, text_end: ?[*]const u8, remaining: ?[*](?[*]const u8)) ImVec2;
pub extern fn ImFont_CalcWordWrapPositionA(self: ?[*]ImFont, scale: f32, text: ?[*]const u8, text_end: ?[*]const u8, wrap_width: f32) ?[*]const u8;
pub extern fn ImFont_RenderChar(self: ?[*]ImFont, draw_list: ?[*]ImDrawList, size: f32, pos: ImVec2, col: ImU32, c: c_ushort) void;
pub extern fn ImFont_RenderText(self: ?[*]ImFont, draw_list: ?[*]ImDrawList, size: f32, pos: ImVec2, col: ImU32, clip_rect: ImVec4, text_begin: ?[*]const u8, text_end: ?[*]const u8, wrap_width: f32, cpu_fine_clip: bool) void;
pub extern fn ImFont_GrowIndex(self: ?[*]ImFont, new_size: c_int) void;
pub extern fn ImFont_AddGlyph(self: ?[*]ImFont, c: ImWchar, x0: f32, y0: f32, x1: f32, y1: f32, u0_0: f32, v0: f32, u1_0: f32, v1: f32, advance_x: f32) void;
pub extern fn ImFont_AddRemapChar(self: ?[*]ImFont, dst: ImWchar, src: ImWchar, overwrite_dst: bool) void;
pub extern fn igGetWindowPos_nonUDT(pOut: ?[*]ImVec2) void;
pub extern fn igGetWindowPos_nonUDT2() ImVec2_Simple;
pub extern fn igGetWindowSize_nonUDT(pOut: ?[*]ImVec2) void;
pub extern fn igGetWindowSize_nonUDT2() ImVec2_Simple;
pub extern fn igGetContentRegionMax_nonUDT(pOut: ?[*]ImVec2) void;
pub extern fn igGetContentRegionMax_nonUDT2() ImVec2_Simple;
pub extern fn igGetContentRegionAvail_nonUDT(pOut: ?[*]ImVec2) void;
pub extern fn igGetContentRegionAvail_nonUDT2() ImVec2_Simple;
pub extern fn igGetWindowContentRegionMin_nonUDT(pOut: ?[*]ImVec2) void;
pub extern fn igGetWindowContentRegionMin_nonUDT2() ImVec2_Simple;
pub extern fn igGetWindowContentRegionMax_nonUDT(pOut: ?[*]ImVec2) void;
pub extern fn igGetWindowContentRegionMax_nonUDT2() ImVec2_Simple;
pub extern fn igGetFontTexUvWhitePixel_nonUDT(pOut: ?[*]ImVec2) void;
pub extern fn igGetFontTexUvWhitePixel_nonUDT2() ImVec2_Simple;
pub extern fn igGetCursorPos_nonUDT(pOut: ?[*]ImVec2) void;
pub extern fn igGetCursorPos_nonUDT2() ImVec2_Simple;
pub extern fn igGetCursorStartPos_nonUDT(pOut: ?[*]ImVec2) void;
pub extern fn igGetCursorStartPos_nonUDT2() ImVec2_Simple;
pub extern fn igGetCursorScreenPos_nonUDT(pOut: ?[*]ImVec2) void;
pub extern fn igGetCursorScreenPos_nonUDT2() ImVec2_Simple;
pub extern fn igGetItemRectMin_nonUDT(pOut: ?[*]ImVec2) void;
pub extern fn igGetItemRectMin_nonUDT2() ImVec2_Simple;
pub extern fn igGetItemRectMax_nonUDT(pOut: ?[*]ImVec2) void;
pub extern fn igGetItemRectMax_nonUDT2() ImVec2_Simple;
pub extern fn igGetItemRectSize_nonUDT(pOut: ?[*]ImVec2) void;
pub extern fn igGetItemRectSize_nonUDT2() ImVec2_Simple;
pub extern fn igCalcTextSize_nonUDT(pOut: ?[*]ImVec2, text: ?[*]const u8, text_end: ?[*]const u8, hide_text_after_double_hash: bool, wrap_width: f32) void;
pub extern fn igCalcTextSize_nonUDT2(text: ?[*]const u8, text_end: ?[*]const u8, hide_text_after_double_hash: bool, wrap_width: f32) ImVec2_Simple;
pub extern fn igColorConvertU32ToFloat4_nonUDT(pOut: ?[*]ImVec4, in: ImU32) void;
pub extern fn igColorConvertU32ToFloat4_nonUDT2(in: ImU32) ImVec4_Simple;
pub extern fn igGetMousePos_nonUDT(pOut: ?[*]ImVec2) void;
pub extern fn igGetMousePos_nonUDT2() ImVec2_Simple;
pub extern fn igGetMousePosOnOpeningCurrentPopup_nonUDT(pOut: ?[*]ImVec2) void;
pub extern fn igGetMousePosOnOpeningCurrentPopup_nonUDT2() ImVec2_Simple;
pub extern fn igGetMouseDragDelta_nonUDT(pOut: ?[*]ImVec2, button: c_int, lock_threshold: f32) void;
pub extern fn igGetMouseDragDelta_nonUDT2(button: c_int, lock_threshold: f32) ImVec2_Simple;
pub extern fn ImColor_HSV_nonUDT(pOut: ?[*]ImColor, self: ?[*]ImColor, h: f32, s: f32, v: f32, a: f32) void;
pub extern fn ImColor_HSV_nonUDT2(self: ?[*]ImColor, h: f32, s: f32, v: f32, a: f32) ImColor_Simple;
pub extern fn ImDrawList_GetClipRectMin_nonUDT(pOut: ?[*]ImVec2, self: ?[*]ImDrawList) void;
pub extern fn ImDrawList_GetClipRectMin_nonUDT2(self: ?[*]ImDrawList) ImVec2_Simple;
pub extern fn ImDrawList_GetClipRectMax_nonUDT(pOut: ?[*]ImVec2, self: ?[*]ImDrawList) void;
pub extern fn ImDrawList_GetClipRectMax_nonUDT2(self: ?[*]ImDrawList) ImVec2_Simple;
pub extern fn ImFont_CalcTextSizeA_nonUDT(pOut: ?[*]ImVec2, self: ?[*]ImFont, size: f32, max_width: f32, wrap_width: f32, text_begin: ?[*]const u8, text_end: ?[*]const u8, remaining: ?[*](?[*]const u8)) void;
pub extern fn ImFont_CalcTextSizeA_nonUDT2(self: ?[*]ImFont, size: f32, max_width: f32, wrap_width: f32, text_begin: ?[*]const u8, text_end: ?[*]const u8, remaining: ?[*](?[*]const u8)) ImVec2_Simple;
pub extern fn igLogText(fmt: ?[*]const u8) void;
pub extern fn ImGuiTextBuffer_appendf(buffer: ?[*]struct_ImGuiTextBuffer, fmt: ?[*]const u8) void;
pub extern fn igColorConvertRGBtoHSV(r: f32, g: f32, b: f32, out_h: ?[*]f32, out_s: ?[*]f32, out_v: ?[*]f32) void;
pub extern fn igColorConvertHSVtoRGB(h: f32, s: f32, v: f32, out_r: ?[*]f32, out_g: ?[*]f32, out_b: ?[*]f32) void;
pub extern fn ImVector_ImWchar_destroy(p: ?[*]ImVector_ImWchar) void;
pub extern fn ImVector_ImWchar_Init(p: ?[*]ImVector_ImWchar) void;
pub extern fn ImVector_ImWchar_UnInit(p: ?[*]ImVector_ImWchar) void;
pub const _IO_BUFSIZ = _G_BUFSIZ;
pub const __GCC_ATOMIC_TEST_AND_SET_TRUEVAL = 1;
pub const _STDC_PREDEF_H = 1;
pub const __FLT16_MAX_EXP__ = 15;
pub const __GNUC_VA_LIST = 1;
pub const __BIGGEST_ALIGNMENT__ = 16;
pub const _IO_USER_LOCK = 32768;
pub const __SIZEOF_FLOAT__ = 4;
pub const __INT64_FMTd__ = c"ld";
pub const __STDC_VERSION__ = c_long(201112);
pub const INT_FAST64_MAX = if (@typeId(@typeOf(9223372036854775807)) == @import("builtin").TypeId.Pointer) @ptrCast(__INT64_C, 9223372036854775807) else if (@typeId(@typeOf(9223372036854775807)) == @import("builtin").TypeId.Int) @intToPtr(__INT64_C, 9223372036854775807) else __INT64_C(9223372036854775807);
pub const __INT_LEAST32_FMTi__ = c"i";
pub const __INT_LEAST8_FMTi__ = c"hhi";
pub const __LDBL_EPSILON__ = 0.000000;
pub const _IO_LINKED = 128;
pub const __STDC_UTF_32__ = 1;
pub const __INT_LEAST32_FMTd__ = c"d";
pub const _IO_RIGHT = 4;
pub const __SIG_ATOMIC_WIDTH__ = 32;
pub const _IO_LINE_BUF = 512;
pub const __UINT_FAST64_FMTX__ = c"lX";
pub const __GCC_ATOMIC_LLONG_LOCK_FREE = 2;
pub const _IO_wint_t = wint_t;
pub const __clang_version__ = c"7.0.0 (tags/RELEASE_700/final)";
pub const __UINT_LEAST8_FMTo__ = c"hho";
pub const _IO_MAGIC = 4222418944;
pub const __SIZEOF_DOUBLE__ = 8;
pub const __INTMAX_FMTd__ = c"ld";
pub const __CLANG_ATOMIC_CHAR_LOCK_FREE = 2;
pub const __INT_LEAST16_FMTi__ = c"hi";
pub const __GCC_ATOMIC_SHORT_LOCK_FREE = 2;
pub const UINTMAX_MAX = if (@typeId(@typeOf(18446744073709551615)) == @import("builtin").TypeId.Pointer) @ptrCast(__UINT64_C, 18446744073709551615) else if (@typeId(@typeOf(18446744073709551615)) == @import("builtin").TypeId.Int) @intToPtr(__UINT64_C, 18446744073709551615) else __UINT64_C(18446744073709551615);
pub const INT_LEAST64_MAX = if (@typeId(@typeOf(9223372036854775807)) == @import("builtin").TypeId.Pointer) @ptrCast(__INT64_C, 9223372036854775807) else if (@typeId(@typeOf(9223372036854775807)) == @import("builtin").TypeId.Int) @intToPtr(__INT64_C, 9223372036854775807) else __INT64_C(9223372036854775807);
pub const WINT_MIN = if (@typeId(@typeOf(u)) == @import("builtin").TypeId.Pointer) @ptrCast(0, u) else if (@typeId(@typeOf(u)) == @import("builtin").TypeId.Int) @intToPtr(0, u) else 0(u);
pub const __MMX__ = 1;
pub const INTPTR_MAX = c_long(9223372036854775807);
pub const _G_IO_IO_FILE_VERSION = 131073;
pub const __SIZE_FMTX__ = c"lX";
pub const __ID_T_TYPE = __U32_TYPE;
pub const __USING_NAMESPACE_C99 = name;
pub const __INO_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const _BITS_TYPES_H = 1;
pub const __FSBLKCNT_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __ptr_t = [*]void;
pub const __WCHAR_WIDTH__ = 32;
pub const __STDC_IEC_559_COMPLEX__ = 1;
pub const __USE_MISC = 1;
pub const __FSBLKCNT64_T_TYPE = __UQUAD_TYPE;
pub const __PTRDIFF_FMTd__ = c"ld";
pub const __DBL_MIN_EXP__ = -1021;
pub const __FLT_EVAL_METHOD__ = 0;
pub const __SSE_MATH__ = 1;
pub const __USECONDS_T_TYPE = __U32_TYPE;
pub const __PID_T_TYPE = __S32_TYPE;
pub const __UINT_FAST8_FMTo__ = c"hho";
pub const __UINT_LEAST64_MAX__ = c_ulong(18446744073709551615);
pub const __UINT_LEAST64_FMTx__ = c"lx";
pub const _IO_USER_BUF = 1;
pub const __INT8_MAX__ = 127;
pub const __NLINK_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __DBL_HAS_DENORM__ = 1;
pub const __FLOAT128__ = 1;
pub const _IO_UNBUFFERED = 2;
pub const __FLT16_HAS_QUIET_NAN__ = 1;
pub const __ATOMIC_RELAXED = 0;
pub const __DBL_DECIMAL_DIG__ = 17;
pub const __SIZEOF_SHORT__ = 2;
pub const ____FILE_defined = 1;
pub const __UINT16_FMTX__ = c"hX";
pub const __UINT_FAST16_MAX__ = 65535;
pub const _IO_SKIPWS = 1;
pub const __CLANG_ATOMIC_SHORT_LOCK_FREE = 2;
pub const __CONSTANT_CFSTRINGS__ = 1;
pub const __MODE_T_TYPE = __U32_TYPE;
pub const _SYS_CDEFS_H = 1;
pub const _ATFILE_SOURCE = 1;
pub const PTRDIFF_MAX = c_long(9223372036854775807);
pub const __RLIM_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __WINT_MAX__ = c_uint(4294967295);
pub const __LDBL_MAX_EXP__ = 16384;
pub const __USE_POSIX199309 = 1;
pub const _STDIO_H = 1;
pub const __STDC_ISO_10646__ = c_long(201605);
pub const __NO_MATH_INLINES = 1;
pub const __WCHAR_TYPE__ = int;
pub const __BLKCNT64_T_TYPE = __SQUAD_TYPE;
pub const __LONG_MAX__ = c_long(9223372036854775807);
pub const __STDC_HOSTED__ = 1;
pub const __WCHAR_MIN = if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Pointer) @ptrCast(-__WCHAR_MAX, -1) else if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Int) @intToPtr(-__WCHAR_MAX, -1) else (-__WCHAR_MAX)(-1);
pub const __INT_FAST16_FMTi__ = c"hi";
pub const __PTRDIFF_WIDTH__ = 64;
pub const __INT_LEAST32_TYPE__ = int;
pub const __SCHAR_MAX__ = 127;
pub const __USE_POSIX2 = 1;
pub const __LDBL_DENORM_MIN__ = 0.000000;
pub const __FLT16_MIN_EXP__ = -14;
pub const __USE_XOPEN2K = 1;
pub const _IOFBF = 0;
pub const __USE_FORTIFY_LEVEL = 0;
pub const __INT64_C_SUFFIX__ = L;
pub const __ELF__ = 1;
pub const __FSFILCNT_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __LDBL_MANT_DIG__ = 64;
pub const __SSIZE_T_TYPE = __SWORD_TYPE;
pub const __USE_XOPEN2K8 = 1;
pub const __CLANG_ATOMIC_INT_LOCK_FREE = 2;
pub const __SIZEOF_PTRDIFF_T__ = 8;
pub const INT16_MIN = if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Pointer) @ptrCast(-32767, -1) else if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Int) @intToPtr(-32767, -1) else (-32767)(-1);
pub const __SIG_ATOMIC_MAX__ = 2147483647;
pub const _IO_EOF_SEEN = 16;
pub const __USE_ATFILE = 1;
pub const __UINT64_FMTX__ = c"lX";
pub const __UINT64_MAX__ = c_ulong(18446744073709551615);
pub const __DBL_MANT_DIG__ = 53;
pub const __FLT_DECIMAL_DIG__ = 9;
pub const __INT_LEAST32_MAX__ = 2147483647;
pub const __DBL_DIG__ = 15;
pub const __ATOMIC_ACQUIRE = 2;
pub const _IO_BAD_SEEN = 16384;
pub const __OPENCL_MEMORY_SCOPE_WORK_GROUP = 1;
pub const __USE_ISOC95 = 1;
pub const __FLT16_HAS_DENORM__ = 1;
pub const _IOS_NOCREATE = 32;
pub const __UID_T_TYPE = __U32_TYPE;
pub const __UINT_FAST16_FMTu__ = c"hu";
pub const _IOS_ATEND = 4;
pub const __INTPTR_FMTi__ = c"li";
pub const _BITS_WCHAR_H = 1;
pub const __UINT_FAST8_FMTX__ = c"hhX";
pub const __LITTLE_ENDIAN__ = 1;
pub const __SSE__ = 1;
pub const _IO_LEFT = 2;
pub const __FLT_HAS_QUIET_NAN__ = 1;
pub const __SIZEOF_SIZE_T__ = 8;
pub const __UINT_LEAST16_FMTo__ = c"ho";
pub const __UINT8_FMTo__ = c"hho";
pub const UINT_LEAST64_MAX = if (@typeId(@typeOf(18446744073709551615)) == @import("builtin").TypeId.Pointer) @ptrCast(__UINT64_C, 18446744073709551615) else if (@typeId(@typeOf(18446744073709551615)) == @import("builtin").TypeId.Int) @intToPtr(__UINT64_C, 18446744073709551615) else __UINT64_C(18446744073709551615);
pub const __UINT_LEAST16_FMTx__ = c"hx";
pub const __CLANG_ATOMIC_WCHAR_T_LOCK_FREE = 2;
pub const _IO_IS_APPENDING = 4096;
pub const _IO_off64_t = __off64_t;
pub const __UINT_FAST16_FMTX__ = c"hX";
pub const _IO_BOOLALPHA = 65536;
pub const __UINT_FAST32_FMTx__ = c"x";
pub const __VERSION__ = c"4.2.1 Compatible Clang 7.0.0 (tags/RELEASE_700/final)";
pub const __UINTPTR_MAX__ = c_ulong(18446744073709551615);
pub const __UINT_FAST8_FMTu__ = c"hhu";
pub const UINT16_MAX = 65535;
pub const __UINT_LEAST8_FMTu__ = c"hhu";
pub const __UINT_LEAST64_FMTo__ = c"lo";
pub const __UINT_LEAST8_MAX__ = 255;
pub const _IO_CURRENTLY_PUTTING = 2048;
pub const UINT8_MAX = 255;
pub const __SYSCALL_ULONG_TYPE = __ULONGWORD_TYPE;
pub const __warnattr = msg;
pub const _IO_SHOWPOS = 1024;
pub const __STD_TYPE = typedef;
pub const __bool_true_false_are_defined = 1;
pub const __SIZEOF_WCHAR_T__ = 4;
pub const __LDBL_MAX__ = inf;
pub const __UINT16_MAX__ = 65535;
pub const _LP64 = 1;
pub const __CLOCK_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const _IO_UNIFIED_JUMPTABLES = 1;
pub const __x86_64 = 1;
pub const linux = 1;
pub const __SIZEOF_WINT_T__ = 4;
pub const __UINTMAX_FMTo__ = c"lo";
pub const __FLT_DIG__ = 6;
pub const __UINT_LEAST8_FMTX__ = c"hhX";
pub const __INT16_MAX__ = 32767;
pub const __WINT_UNSIGNED__ = 1;
pub const __FLT_MAX_10_EXP__ = 38;
pub const _FEATURES_H = 1;
pub const __UINTPTR_FMTX__ = c"lX";
pub const __UINT_LEAST16_FMTu__ = c"hu";
pub const __CLANG_ATOMIC_POINTER_LOCK_FREE = 2;
pub const SIG_ATOMIC_MAX = 2147483647;
pub const __WINT_WIDTH__ = 32;
pub const __SHRT_MAX__ = 32767;
pub const __GCC_ATOMIC_BOOL_LOCK_FREE = 2;
pub const _IO_SCIENTIFIC = 2048;
pub const __POINTER_WIDTH__ = 64;
pub const PTRDIFF_MIN = if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Pointer) @ptrCast(-c_long(9223372036854775807), -1) else if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Int) @intToPtr(-c_long(9223372036854775807), -1) else (-c_long(9223372036854775807))(-1);
pub const __PTRDIFF_MAX__ = c_long(9223372036854775807);
pub const __INT32_FMTd__ = c"d";
pub const __FLT16_DIG__ = 3;
pub const __DBL_MIN__ = 0.000000;
pub const __SIZEOF_LONG__ = 8;
pub const __S32_TYPE = int;
pub const __TIME_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __INTPTR_WIDTH__ = 64;
pub const __FLT16_MAX_10_EXP__ = 4;
pub const __INT_FAST32_TYPE__ = int;
pub const _IOS_BIN = 128;
pub const @"false" = 0;
pub const __NO_INLINE__ = 1;
pub const __UINT_FAST32_FMTX__ = c"X";
pub const _POSIX_SOURCE = 1;
pub const __gnu_linux__ = 1;
pub const __INT_FAST32_MAX__ = 2147483647;
pub const __UINTMAX_FMTu__ = c"lu";
pub const __FILE_defined = 1;
pub const _IO_iconv_t = _G_iconv_t;
pub const _G_HAVE_MMAP = 1;
pub const INT_FAST8_MAX = 127;
pub const __FLT_RADIX__ = 2;
pub const _IO_OCT = 32;
pub const __GLIBC_MINOR__ = 24;
pub const _IO_STDIO = 16384;
pub const _STDINT_H = 1;
pub const __FLT16_HAS_INFINITY__ = 1;
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 = 1;
pub const INT_FAST8_MIN = -128;
pub const __GCC_ATOMIC_INT_LOCK_FREE = 2;
pub const _IO_NO_READS = 4;
pub const __OPENCL_MEMORY_SCOPE_ALL_SVM_DEVICES = 3;
pub const __FLT16_DECIMAL_DIG__ = 5;
pub const __PRAGMA_REDEFINE_EXTNAME = 1;
pub const __INT_FAST8_FMTd__ = c"hhd";
pub const __KEY_T_TYPE = __S32_TYPE;
pub const SEEK_SET = 0;
pub const __INT32_TYPE__ = int;
pub const __USE_POSIX199506 = 1;
pub const __CPU_MASK_TYPE = __SYSCALL_ULONG_TYPE;
pub const FOPEN_MAX = 16;
pub const __UINTMAX_WIDTH__ = 64;
pub const __FLT_MIN__ = 0.000000;
pub const __INT64_FMTi__ = c"li";
pub const __UINT_FAST64_FMTu__ = c"lu";
pub const __INT8_FMTd__ = c"hhd";
pub const _IO_FIXED = 4096;
pub const INT_LEAST16_MIN = if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Pointer) @ptrCast(-32767, -1) else if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Int) @intToPtr(-32767, -1) else (-32767)(-1);
pub const __INT_FAST16_TYPE__ = short;
pub const INT64_MAX = if (@typeId(@typeOf(9223372036854775807)) == @import("builtin").TypeId.Pointer) @ptrCast(__INT64_C, 9223372036854775807) else if (@typeId(@typeOf(9223372036854775807)) == @import("builtin").TypeId.Int) @intToPtr(__INT64_C, 9223372036854775807) else __INT64_C(9223372036854775807);
pub const __FLT_MAX_EXP__ = 128;
pub const __DBL_MAX_10_EXP__ = 308;
pub const __LDBL_MIN__ = 0.000000;
pub const __INT_FAST64_FMTi__ = c"li";
pub const __INT_LEAST8_FMTd__ = c"hhd";
pub const __CLANG_ATOMIC_LLONG_LOCK_FREE = 2;
pub const __FSFILCNT64_T_TYPE = __UQUAD_TYPE;
pub const __UINT_LEAST32_FMTX__ = c"X";
pub const __GID_T_TYPE = __U32_TYPE;
pub const __UINTMAX_MAX__ = c_ulong(18446744073709551615);
pub const _IO_ssize_t = __ssize_t;
pub const __UINT_FAST16_FMTo__ = c"ho";
pub const _DEFAULT_SOURCE = 1;
pub const __FD_SETSIZE = 1024;
pub const __LDBL_DECIMAL_DIG__ = 21;
pub const __UINT_LEAST64_FMTX__ = c"lX";
pub const __clang_minor__ = 0;
pub const __LDBL_REDIR_DECL = name;
pub const _IO_MAGIC_MASK = 4294901760;
pub const INTMAX_MAX = if (@typeId(@typeOf(9223372036854775807)) == @import("builtin").TypeId.Pointer) @ptrCast(__INT64_C, 9223372036854775807) else if (@typeId(@typeOf(9223372036854775807)) == @import("builtin").TypeId.Int) @intToPtr(__INT64_C, 9223372036854775807) else __INT64_C(9223372036854775807);
pub const __OFF64_T_TYPE = __SQUAD_TYPE;
pub const _G_HAVE_MREMAP = 1;
pub const __SIZEOF_FLOAT128__ = 16;
pub const __CLOCKID_T_TYPE = __S32_TYPE;
pub const __UINT_FAST64_FMTo__ = c"lo";
pub const __SIZE_FMTx__ = c"lx";
pub const INT_FAST16_MIN = if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Pointer) @ptrCast(-c_long(9223372036854775807), -1) else if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Int) @intToPtr(-c_long(9223372036854775807), -1) else (-c_long(9223372036854775807))(-1);
pub const __DBL_MAX__ = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878;
pub const _G_va_list = __gnuc_va_list;
pub const __DBL_EPSILON__ = 0.000000;
pub const __UINT64_FMTx__ = c"lx";
pub const @"true" = 1;
pub const INT_FAST32_MIN = if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Pointer) @ptrCast(-c_long(9223372036854775807), -1) else if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Int) @intToPtr(-c_long(9223372036854775807), -1) else (-c_long(9223372036854775807))(-1);
pub const P_tmpdir = c"/tmp";
pub const _IO_DEC = 16;
pub const INT32_MAX = 2147483647;
pub const __BLKCNT_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __CHAR_BIT__ = 8;
pub const SEEK_END = 2;
pub const __INT16_FMTi__ = c"hi";
pub const __SLONG32_TYPE = int;
pub const SEEK_CUR = 1;
pub const _DEBUG = 1;
pub const __GNUC_MINOR__ = 2;
pub const INT_LEAST32_MIN = if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Pointer) @ptrCast(-2147483647, -1) else if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Int) @intToPtr(-2147483647, -1) else (-2147483647)(-1);
pub const INT32_MIN = if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Pointer) @ptrCast(-2147483647, -1) else if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Int) @intToPtr(-2147483647, -1) else (-2147483647)(-1);
pub const __restrict_arr = __restrict;
pub const __UINT_FAST32_MAX__ = c_uint(4294967295);
pub const _IO_DELETE_DONT_CLOSE = 64;
pub const __UINT8_FMTX__ = c"hhX";
pub const __FLT_EPSILON__ = 0.000000;
pub const INT_FAST32_MAX = c_long(9223372036854775807);
pub const UINT_FAST8_MAX = 255;
pub const __UINTPTR_WIDTH__ = 64;
pub const _IO_off_t = __off_t;
pub const __llvm__ = 1;
pub const __UINT_FAST64_MAX__ = c_ulong(18446744073709551615);
pub const __INT_FAST32_FMTi__ = c"i";
pub const INT16_MAX = 32767;
pub const __FLT_HAS_INFINITY__ = 1;
pub const __k8 = 1;
pub const __FSWORD_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __DADDR_T_TYPE = __S32_TYPE;
pub const NULL = if (@typeId(@typeOf(0)) == @import("builtin").TypeId.Pointer) @ptrCast([*]void, 0) else if (@typeId(@typeOf(0)) == @import("builtin").TypeId.Int) @intToPtr([*]void, 0) else ([*]void)(0);
pub const __OFF_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __UINT8_FMTx__ = c"hhx";
pub const __INTMAX_C_SUFFIX__ = L;
pub const __ORDER_LITTLE_ENDIAN__ = 1234;
pub const _IO_cleanup_region_end = _Doit;
pub const __GCC_ATOMIC_CHAR16_T_LOCK_FREE = 2;
pub const __INT16_FMTd__ = c"hd";
pub const __UINT32_FMTX__ = c"X";
pub const __SUSECONDS_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 = 1;
pub const UINT_LEAST8_MAX = 255;
pub const _IO_fpos64_t = _G_fpos64_t;
pub const __UINT32_C_SUFFIX__ = U;
pub const __INT32_MAX__ = 2147483647;
pub const __GCC_ATOMIC_CHAR_LOCK_FREE = 2;
pub const _IO_FLAGS2_MMAP = 1;
pub const __INTMAX_WIDTH__ = 64;
pub const __INO64_T_TYPE = __UQUAD_TYPE;
pub const __CLANG_ATOMIC_BOOL_LOCK_FREE = 2;
pub const __USE_POSIX = 1;
pub const __SIZE_FMTo__ = c"lo";
pub const __DBL_HAS_QUIET_NAN__ = 1;
pub const __INT_FAST8_FMTi__ = c"hhi";
pub const __UINT_LEAST32_FMTo__ = c"o";
pub const __STDC_UTF_16__ = 1;
pub const __UINT_LEAST32_MAX__ = c_uint(4294967295);
pub const __ATOMIC_RELEASE = 3;
pub const __UINT_FAST16_FMTx__ = c"hx";
pub const __UINTMAX_C_SUFFIX__ = UL;
pub const __WCHAR_MAX = __WCHAR_MAX__;
pub const __FLT_MIN_EXP__ = -125;
pub const _IO_NO_WRITES = 8;
pub const __SIZEOF_LONG_DOUBLE__ = 16;
pub const __UINT_LEAST64_FMTu__ = c"lu";
pub const __GCC_ATOMIC_LONG_LOCK_FREE = 2;
pub const __ORDER_PDP_ENDIAN__ = 3412;
pub const __INT_FAST64_FMTd__ = c"ld";
pub const FILENAME_MAX = 4096;
pub const INT_LEAST8_MIN = -128;
pub const __STDC_NO_THREADS__ = 1;
pub const __CLANG_ATOMIC_LONG_LOCK_FREE = 2;
pub const __USING_NAMESPACE_STD = name;
pub const __GXX_ABI_VERSION = 1002;
pub const __INT16_TYPE__ = short;
pub const __SSE2_MATH__ = 1;
pub const INTPTR_MIN = if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Pointer) @ptrCast(-c_long(9223372036854775807), -1) else if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Int) @intToPtr(-c_long(9223372036854775807), -1) else (-c_long(9223372036854775807))(-1);
pub const __FLT_MANT_DIG__ = 24;
pub const UINT_LEAST16_MAX = 65535;
pub const UINT_LEAST32_MAX = c_uint(4294967295);
pub const __UINT_FAST64_FMTx__ = c"lx";
pub const __STDC__ = 1;
pub const __INT_FAST8_MAX__ = 127;
pub const __INTPTR_FMTd__ = c"ld";
pub const __GNUC_PATCHLEVEL__ = 1;
pub const __SIZE_WIDTH__ = 64;
pub const __UINT_LEAST8_FMTx__ = c"hhx";
pub const _IO_va_list = _G_va_list;
pub const __INT_LEAST64_FMTi__ = c"li";
pub const __STDC_IEC_559__ = 1;
pub const __INT_FAST16_MAX__ = 32767;
pub const __USE_ISOC99 = 1;
pub const __INTPTR_MAX__ = c_long(9223372036854775807);
pub const __CLANG_ATOMIC_CHAR16_T_LOCK_FREE = 2;
pub const __UINT64_FMTu__ = c"lu";
pub const __BYTE_ORDER__ = __ORDER_LITTLE_ENDIAN__;
pub const __SSE2__ = 1;
pub const _IO_SHOWPOINT = 256;
pub const __INT_MAX__ = 2147483647;
pub const __BLKSIZE_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __INTMAX_FMTi__ = c"li";
pub const __DBL_DENORM_MIN__ = 0.000000;
pub const __clang_major__ = 7;
pub const __FLT16_MANT_DIG__ = 11;
pub const __GNUC__ = 4;
pub const _G_config_h = 1;
pub const __UINT32_MAX__ = c_uint(4294967295);
pub const _IO_fpos_t = _G_fpos_t;
pub const _IOS_INPUT = 1;
pub const UINTPTR_MAX = c_ulong(18446744073709551615);
pub const _POSIX_C_SOURCE = c_long(200809);
pub const _G_BUFSIZ = 8192;
pub const __FLT_DENORM_MIN__ = 0.000000;
pub const __DBL_MAX_EXP__ = 1024;
pub const __INT8_FMTi__ = c"hhi";
pub const L_tmpnam = 20;
pub const __UINT_LEAST16_MAX__ = 65535;
pub const SIG_ATOMIC_MIN = if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Pointer) @ptrCast(-2147483647, -1) else if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Int) @intToPtr(-2147483647, -1) else (-2147483647)(-1);
pub const __LDBL_HAS_DENORM__ = 1;
pub const __FLT16_MIN_10_EXP__ = -13;
pub const __LDBL_HAS_QUIET_NAN__ = 1;
pub const TMP_MAX = 238328;
pub const __UINT_FAST8_MAX__ = 255;
pub const _IOS_NOREPLACE = 64;
pub const __DBL_MIN_10_EXP__ = -307;
pub const __UINT8_FMTu__ = c"hhu";
pub const __OFF_T_MATCHES_OFF64_T = 1;
pub const WINT_MAX = c_uint(4294967295);
pub const __RLIM64_T_TYPE = __UQUAD_TYPE;
pub const _IO_UNITBUF = 8192;
pub const UINT_FAST16_MAX = c_ulong(18446744073709551615);
pub const _IOS_APPEND = 8;
pub const _IO_UPPERCASE = 512;
pub const __INT_FAST64_MAX__ = c_long(9223372036854775807);
pub const __UINT16_FMTu__ = c"hu";
pub const __ATOMIC_SEQ_CST = 5;
pub const __SIZE_FMTu__ = c"lu";
pub const __LDBL_MIN_EXP__ = -16381;
pub const __UINT_FAST32_FMTu__ = c"u";
pub const SIZE_MAX = c_ulong(18446744073709551615);
pub const __clang_patchlevel__ = 0;
pub const _IOS_OUTPUT = 2;
pub const __SIZEOF_LONG_LONG__ = 8;
pub const EOF = -1;
pub const __GNUC_STDC_INLINE__ = 1;
pub const __FXSR__ = 1;
pub const __UINT8_MAX__ = 255;
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 = 1;
pub const _IOLBF = 1;
pub const __UINT32_FMTx__ = c"x";
pub const _IO_file_flags = _flags;
pub const __UINT16_FMTo__ = c"ho";
pub const __OPENCL_MEMORY_SCOPE_DEVICE = 2;
pub const INT_LEAST8_MAX = 127;
pub const __UINT32_FMTu__ = c"u";
pub const _IO_IN_BACKUP = 256;
pub const __SIZEOF_POINTER__ = 8;
pub const __TIMER_T_TYPE = [*]void;
pub const _IO_uid_t = __uid_t;
pub const __unix = 1;
pub const __SIZE_MAX__ = c_ulong(18446744073709551615);
pub const __INT_FAST16_FMTd__ = c"hd";
pub const unix = 1;
pub const __UINT_LEAST32_FMTu__ = c"u";
pub const _IOS_TRUNC = 16;
pub const __FLT_MAX__ = 340282346999999984391321947108527833088.000000;
pub const BUFSIZ = _IO_BUFSIZ;
pub const __USE_ISOC11 = 1;
pub const CONST = @"const";
pub const __GCC_ATOMIC_WCHAR_T_LOCK_FREE = 2;
pub const __k8__ = 1;
pub const _IO_pid_t = __pid_t;
pub const __ATOMIC_CONSUME = 1;
pub const __tune_k8__ = 1;
pub const __unix__ = 1;
pub const UINT32_MAX = c_uint(4294967295);
pub const __x86_64__ = 1;
pub const __LDBL_HAS_INFINITY__ = 1;
pub const __WORDSIZE_TIME64_COMPAT32 = 1;
pub const __UINTMAX_FMTx__ = c"lx";
pub const __UINT64_C_SUFFIX__ = UL;
pub const __GNU_LIBRARY__ = 6;
pub const __FLT_MIN_10_EXP__ = -37;
pub const __INT_LEAST16_MAX__ = 32767;
pub const _IO_FLAGS2_NOTCANCEL = 2;
pub const __UINT32_FMTo__ = c"o";
pub const __UINTPTR_FMTo__ = c"lo";
pub const __INT_LEAST16_FMTd__ = c"hd";
pub const __UINTPTR_FMTx__ = c"lx";
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 = 1;
pub const _IONBF = 2;
pub const __INT_LEAST64_FMTd__ = c"ld";
pub const UINT64_MAX = if (@typeId(@typeOf(18446744073709551615)) == @import("builtin").TypeId.Pointer) @ptrCast(__UINT64_C, 18446744073709551615) else if (@typeId(@typeOf(18446744073709551615)) == @import("builtin").TypeId.Int) @intToPtr(__UINT64_C, 18446744073709551615) else __UINT64_C(18446744073709551615);
pub const __INT_LEAST16_TYPE__ = short;
pub const _IO_DONT_CLOSE = 32768;
pub const __attribute_alloc_size__ = params;
pub const __ORDER_BIG_ENDIAN__ = 4321;
pub const __LDBL_MIN_10_EXP__ = -4931;
pub const __INT_LEAST8_MAX__ = 127;
pub const _IO_INTERNAL = 8;
pub const __SIZEOF_INT__ = 4;
pub const __USE_POSIX_IMPLICITLY = 1;
pub const __GCC_ATOMIC_POINTER_LOCK_FREE = 2;
pub const INT8_MIN = -128;
pub const WCHAR_MAX = __WCHAR_MAX;
pub const _IO_ERR_SEEN = 32;
pub const _IO_size_t = size_t;
pub const __amd64 = 1;
pub const INT8_MAX = 127;
pub const __OBJC_BOOL_IS_BOOL = 0;
pub const __LDBL_MAX_10_EXP__ = 4932;
pub const L_ctermid = 9;
pub const __SIZEOF_INT128__ = 16;
pub const __UINT_FAST8_FMTx__ = c"hhx";
pub const UINT_FAST32_MAX = c_ulong(18446744073709551615);
pub const _IO_IS_FILEBUF = 8192;
pub const __linux = 1;
pub const __UINT16_FMTx__ = c"hx";
pub const __UINTPTR_FMTu__ = c"lu";
pub const __UINT_LEAST16_FMTX__ = c"hX";
pub const WCHAR_MIN = __WCHAR_MIN;
pub const __amd64__ = 1;
pub const __UINT_FAST32_FMTo__ = c"o";
pub const __linux__ = 1;
pub const __clang__ = 1;
pub const __LP64__ = 1;
pub const INT_FAST16_MAX = c_long(9223372036854775807);
pub const __SYSCALL_WORDSIZE = 64;
pub const __PTRDIFF_FMTi__ = c"li";
pub const __LDBL_DIG__ = 18;
pub const __GCC_ATOMIC_CHAR32_T_LOCK_FREE = 2;
pub const _BITS_TYPESIZES_H = 1;
pub const __UINT64_FMTo__ = c"lo";
pub const __INT_FAST32_FMTd__ = c"d";
pub const __ATOMIC_ACQ_REL = 4;
pub const _OLD_STDIO_MAGIC = 4206624768;
pub const _IO_HEX = 64;
pub const __LONG_LONG_MAX__ = c_longlong(9223372036854775807);
pub const __OPENCL_MEMORY_SCOPE_SUB_GROUP = 4;
pub const ____mbstate_t_defined = 1;
pub const __INO_T_MATCHES_INO64_T = 1;
pub const INT_LEAST16_MAX = 32767;
pub const _IO_SHOWBASE = 128;
pub const __GLIBC__ = 2;
pub const UINT_FAST64_MAX = if (@typeId(@typeOf(18446744073709551615)) == @import("builtin").TypeId.Pointer) @ptrCast(__UINT64_C, 18446744073709551615) else if (@typeId(@typeOf(18446744073709551615)) == @import("builtin").TypeId.Int) @intToPtr(__UINT64_C, 18446744073709551615) else __UINT64_C(18446744073709551615);
pub const INT_LEAST32_MAX = 2147483647;
pub const _IO_HAVE_ST_BLKSIZE = _G_HAVE_ST_BLKSIZE;
pub const __INTMAX_MAX__ = c_long(9223372036854775807);
pub const __UINT_LEAST32_FMTx__ = c"x";
pub const __WORDSIZE = 64;
pub const __WCHAR_MAX__ = 2147483647;
pub const _IO_TIED_PUT_GET = 1024;
pub const __INT64_MAX__ = c_long(9223372036854775807);
pub const __CLANG_ATOMIC_CHAR32_T_LOCK_FREE = 2;
pub const __INT_LEAST64_MAX__ = c_long(9223372036854775807);
pub const __UINTMAX_FMTX__ = c"lX";
pub const __OPENCL_MEMORY_SCOPE_WORK_ITEM = 0;
pub const __FLT_HAS_DENORM__ = 1;
pub const __DECIMAL_DIG__ = __LDBL_DECIMAL_DIG__;
pub const _IO_FLAGS2_USER_WBUF = 8;
pub const __SYSCALL_SLONG_TYPE = __SLONGWORD_TYPE;
pub const __DEV_T_TYPE = __UQUAD_TYPE;
pub const __INT32_FMTi__ = c"i";
pub const EXTERN = @"extern";
pub const __DBL_HAS_INFINITY__ = 1;
pub const __FINITE_MATH_ONLY__ = 0;
pub const _IO_marker = struct__IO_marker;
pub const __va_list_tag = struct___va_list_tag;
pub const _IO_jump_t = struct__IO_jump_t;
pub const __codecvt_result = enum___codecvt_result;
pub const _IO_FILE_plus = struct__IO_FILE_plus;
pub const ImGuiWindowFlags_ = enum_ImGuiWindowFlags_;
pub const ImGuiInputTextFlags_ = enum_ImGuiInputTextFlags_;
pub const ImGuiTreeNodeFlags_ = enum_ImGuiTreeNodeFlags_;
pub const ImGuiSelectableFlags_ = enum_ImGuiSelectableFlags_;
pub const ImGuiComboFlags_ = enum_ImGuiComboFlags_;
pub const ImGuiFocusedFlags_ = enum_ImGuiFocusedFlags_;
pub const ImGuiHoveredFlags_ = enum_ImGuiHoveredFlags_;
pub const ImGuiDragDropFlags_ = enum_ImGuiDragDropFlags_;
pub const ImGuiDataType_ = enum_ImGuiDataType_;
pub const ImGuiDir_ = enum_ImGuiDir_;
pub const ImGuiKey_ = enum_ImGuiKey_;
pub const ImGuiNavInput_ = enum_ImGuiNavInput_;
pub const ImGuiConfigFlags_ = enum_ImGuiConfigFlags_;
pub const ImGuiBackendFlags_ = enum_ImGuiBackendFlags_;
pub const ImGuiCol_ = enum_ImGuiCol_;
pub const ImGuiStyleVar_ = enum_ImGuiStyleVar_;
pub const ImGuiColorEditFlags_ = enum_ImGuiColorEditFlags_;
pub const ImGuiMouseCursor_ = enum_ImGuiMouseCursor_;
pub const ImGuiCond_ = enum_ImGuiCond_;
pub const ImDrawCornerFlags_ = enum_ImDrawCornerFlags_;
pub const ImDrawListFlags_ = enum_ImDrawListFlags_;
pub const ImFontAtlasFlags_ = enum_ImFontAtlasFlags_;
pub const GLFWwindow = struct_GLFWwindow;
pub const SDL_Window = struct_SDL_Window;
