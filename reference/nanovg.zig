pub const struct_NVGcontext = @OpaqueType();
pub const NVGcontext = struct_NVGcontext;
pub const struct_NVGcolor = extern struct {
    @"": extern union {
        rgba: [4]f32,
        @"": extern struct {
            r: f32,
            g: f32,
            b: f32,
            a: f32,
        },
    },
};
pub const NVGcolor = struct_NVGcolor;
pub const struct_NVGpaint = extern struct {
    xform: [6]f32,
    extent: [2]f32,
    radius: f32,
    feather: f32,
    innerColor: NVGcolor,
    outerColor: NVGcolor,
    image: c_int,
};
pub const NVGpaint = struct_NVGpaint;
pub const NVG_CCW = enum_NVGwinding.NVG_CCW;
pub const NVG_CW = enum_NVGwinding.NVG_CW;
pub const enum_NVGwinding = extern enum {
    NVG_CCW = 1,
    NVG_CW = 2,
};
pub const NVG_SOLID = enum_NVGsolidity.NVG_SOLID;
pub const NVG_HOLE = enum_NVGsolidity.NVG_HOLE;
pub const enum_NVGsolidity = extern enum {
    NVG_SOLID = 1,
    NVG_HOLE = 2,
};
pub const NVG_BUTT = enum_NVGlineCap.NVG_BUTT;
pub const NVG_ROUND = enum_NVGlineCap.NVG_ROUND;
pub const NVG_SQUARE = enum_NVGlineCap.NVG_SQUARE;
pub const NVG_BEVEL = enum_NVGlineCap.NVG_BEVEL;
pub const NVG_MITER = enum_NVGlineCap.NVG_MITER;
pub const enum_NVGlineCap = extern enum {
    NVG_BUTT,
    NVG_ROUND,
    NVG_SQUARE,
    NVG_BEVEL,
    NVG_MITER,
};
pub const NVG_ALIGN_LEFT = enum_NVGalign.NVG_ALIGN_LEFT;
pub const NVG_ALIGN_CENTER = enum_NVGalign.NVG_ALIGN_CENTER;
pub const NVG_ALIGN_RIGHT = enum_NVGalign.NVG_ALIGN_RIGHT;
pub const NVG_ALIGN_TOP = enum_NVGalign.NVG_ALIGN_TOP;
pub const NVG_ALIGN_MIDDLE = enum_NVGalign.NVG_ALIGN_MIDDLE;
pub const NVG_ALIGN_BOTTOM = enum_NVGalign.NVG_ALIGN_BOTTOM;
pub const NVG_ALIGN_BASELINE = enum_NVGalign.NVG_ALIGN_BASELINE;
pub const enum_NVGalign = extern enum {
    NVG_ALIGN_LEFT = 1,
    NVG_ALIGN_CENTER = 2,
    NVG_ALIGN_RIGHT = 4,
    NVG_ALIGN_TOP = 8,
    NVG_ALIGN_MIDDLE = 16,
    NVG_ALIGN_BOTTOM = 32,
    NVG_ALIGN_BASELINE = 64,
};
pub const NVG_ZERO = enum_NVGblendFactor.NVG_ZERO;
pub const NVG_ONE = enum_NVGblendFactor.NVG_ONE;
pub const NVG_SRC_COLOR = enum_NVGblendFactor.NVG_SRC_COLOR;
pub const NVG_ONE_MINUS_SRC_COLOR = enum_NVGblendFactor.NVG_ONE_MINUS_SRC_COLOR;
pub const NVG_DST_COLOR = enum_NVGblendFactor.NVG_DST_COLOR;
pub const NVG_ONE_MINUS_DST_COLOR = enum_NVGblendFactor.NVG_ONE_MINUS_DST_COLOR;
pub const NVG_SRC_ALPHA = enum_NVGblendFactor.NVG_SRC_ALPHA;
pub const NVG_ONE_MINUS_SRC_ALPHA = enum_NVGblendFactor.NVG_ONE_MINUS_SRC_ALPHA;
pub const NVG_DST_ALPHA = enum_NVGblendFactor.NVG_DST_ALPHA;
pub const NVG_ONE_MINUS_DST_ALPHA = enum_NVGblendFactor.NVG_ONE_MINUS_DST_ALPHA;
pub const NVG_SRC_ALPHA_SATURATE = enum_NVGblendFactor.NVG_SRC_ALPHA_SATURATE;
pub const enum_NVGblendFactor = extern enum {
    NVG_ZERO = 1,
    NVG_ONE = 2,
    NVG_SRC_COLOR = 4,
    NVG_ONE_MINUS_SRC_COLOR = 8,
    NVG_DST_COLOR = 16,
    NVG_ONE_MINUS_DST_COLOR = 32,
    NVG_SRC_ALPHA = 64,
    NVG_ONE_MINUS_SRC_ALPHA = 128,
    NVG_DST_ALPHA = 256,
    NVG_ONE_MINUS_DST_ALPHA = 512,
    NVG_SRC_ALPHA_SATURATE = 1024,
};
pub const NVG_SOURCE_OVER = enum_NVGcompositeOperation.NVG_SOURCE_OVER;
pub const NVG_SOURCE_IN = enum_NVGcompositeOperation.NVG_SOURCE_IN;
pub const NVG_SOURCE_OUT = enum_NVGcompositeOperation.NVG_SOURCE_OUT;
pub const NVG_ATOP = enum_NVGcompositeOperation.NVG_ATOP;
pub const NVG_DESTINATION_OVER = enum_NVGcompositeOperation.NVG_DESTINATION_OVER;
pub const NVG_DESTINATION_IN = enum_NVGcompositeOperation.NVG_DESTINATION_IN;
pub const NVG_DESTINATION_OUT = enum_NVGcompositeOperation.NVG_DESTINATION_OUT;
pub const NVG_DESTINATION_ATOP = enum_NVGcompositeOperation.NVG_DESTINATION_ATOP;
pub const NVG_LIGHTER = enum_NVGcompositeOperation.NVG_LIGHTER;
pub const NVG_COPY = enum_NVGcompositeOperation.NVG_COPY;
pub const NVG_XOR = enum_NVGcompositeOperation.NVG_XOR;
pub const enum_NVGcompositeOperation = extern enum {
    NVG_SOURCE_OVER,
    NVG_SOURCE_IN,
    NVG_SOURCE_OUT,
    NVG_ATOP,
    NVG_DESTINATION_OVER,
    NVG_DESTINATION_IN,
    NVG_DESTINATION_OUT,
    NVG_DESTINATION_ATOP,
    NVG_LIGHTER,
    NVG_COPY,
    NVG_XOR,
};
pub const struct_NVGcompositeOperationState = extern struct {
    srcRGB: c_int,
    dstRGB: c_int,
    srcAlpha: c_int,
    dstAlpha: c_int,
};
pub const NVGcompositeOperationState = struct_NVGcompositeOperationState;
pub const struct_NVGglyphPosition = extern struct {
    str: ?[*]const u8,
    x: f32,
    minx: f32,
    maxx: f32,
};
pub const NVGglyphPosition = struct_NVGglyphPosition;
pub const struct_NVGtextRow = extern struct {
    start: ?[*]const u8,
    end: ?[*]const u8,
    next: ?[*]const u8,
    width: f32,
    minx: f32,
    maxx: f32,
};
pub const NVGtextRow = struct_NVGtextRow;
pub const NVG_IMAGE_GENERATE_MIPMAPS = enum_NVGimageFlags.NVG_IMAGE_GENERATE_MIPMAPS;
pub const NVG_IMAGE_REPEATX = enum_NVGimageFlags.NVG_IMAGE_REPEATX;
pub const NVG_IMAGE_REPEATY = enum_NVGimageFlags.NVG_IMAGE_REPEATY;
pub const NVG_IMAGE_FLIPY = enum_NVGimageFlags.NVG_IMAGE_FLIPY;
pub const NVG_IMAGE_PREMULTIPLIED = enum_NVGimageFlags.NVG_IMAGE_PREMULTIPLIED;
pub const NVG_IMAGE_NEAREST = enum_NVGimageFlags.NVG_IMAGE_NEAREST;
pub const enum_NVGimageFlags = extern enum {
    NVG_IMAGE_GENERATE_MIPMAPS = 1,
    NVG_IMAGE_REPEATX = 2,
    NVG_IMAGE_REPEATY = 4,
    NVG_IMAGE_FLIPY = 8,
    NVG_IMAGE_PREMULTIPLIED = 16,
    NVG_IMAGE_NEAREST = 32,
};
pub extern fn nvgBeginFrame(ctx: ?*NVGcontext, windowWidth: f32, windowHeight: f32, devicePixelRatio: f32) void;
pub extern fn nvgCancelFrame(ctx: ?*NVGcontext) void;
pub extern fn nvgEndFrame(ctx: ?*NVGcontext) void;
pub extern fn nvgGlobalCompositeOperation(ctx: ?*NVGcontext, op: c_int) void;
pub extern fn nvgGlobalCompositeBlendFunc(ctx: ?*NVGcontext, sfactor: c_int, dfactor: c_int) void;
pub extern fn nvgGlobalCompositeBlendFuncSeparate(ctx: ?*NVGcontext, srcRGB: c_int, dstRGB: c_int, srcAlpha: c_int, dstAlpha: c_int) void;
pub extern fn nvgRGB(r: u8, g: u8, b: u8) NVGcolor;
pub extern fn nvgRGBf(r: f32, g: f32, b: f32) NVGcolor;
pub extern fn nvgRGBA(r: u8, g: u8, b: u8, a: u8) NVGcolor;
pub extern fn nvgRGBAf(r: f32, g: f32, b: f32, a: f32) NVGcolor;
pub extern fn nvgLerpRGBA(c0: NVGcolor, c1: NVGcolor, u: f32) NVGcolor;
pub extern fn nvgTransRGBA(c0: NVGcolor, a: u8) NVGcolor;
pub extern fn nvgTransRGBAf(c0: NVGcolor, a: f32) NVGcolor;
pub extern fn nvgHSL(h: f32, s: f32, l: f32) NVGcolor;
pub extern fn nvgHSLA(h: f32, s: f32, l: f32, a: u8) NVGcolor;
pub extern fn nvgSave(ctx: ?*NVGcontext) void;
pub extern fn nvgRestore(ctx: ?*NVGcontext) void;
pub extern fn nvgReset(ctx: ?*NVGcontext) void;
pub extern fn nvgShapeAntiAlias(ctx: ?*NVGcontext, enabled: c_int) void;
pub extern fn nvgStrokeColor(ctx: ?*NVGcontext, color: NVGcolor) void;
pub extern fn nvgStrokePaint(ctx: ?*NVGcontext, paint: NVGpaint) void;
pub extern fn nvgFillColor(ctx: ?*NVGcontext, color: NVGcolor) void;
pub extern fn nvgFillPaint(ctx: ?*NVGcontext, paint: NVGpaint) void;
pub extern fn nvgMiterLimit(ctx: ?*NVGcontext, limit: f32) void;
pub extern fn nvgStrokeWidth(ctx: ?*NVGcontext, size: f32) void;
pub extern fn nvgLineCap(ctx: ?*NVGcontext, cap: c_int) void;
pub extern fn nvgLineJoin(ctx: ?*NVGcontext, join: c_int) void;
pub extern fn nvgGlobalAlpha(ctx: ?*NVGcontext, alpha: f32) void;
pub extern fn nvgResetTransform(ctx: ?*NVGcontext) void;
pub extern fn nvgTransform(ctx: ?*NVGcontext, a: f32, b: f32, c: f32, d: f32, e: f32, f: f32) void;
pub extern fn nvgTranslate(ctx: ?*NVGcontext, x: f32, y: f32) void;
pub extern fn nvgRotate(ctx: ?*NVGcontext, angle: f32) void;
pub extern fn nvgSkewX(ctx: ?*NVGcontext, angle: f32) void;
pub extern fn nvgSkewY(ctx: ?*NVGcontext, angle: f32) void;
pub extern fn nvgScale(ctx: ?*NVGcontext, x: f32, y: f32) void;
pub extern fn nvgCurrentTransform(ctx: ?*NVGcontext, xform: ?[*]f32) void;
pub extern fn nvgTransformIdentity(dst: ?[*]f32) void;
pub extern fn nvgTransformTranslate(dst: ?[*]f32, tx: f32, ty: f32) void;
pub extern fn nvgTransformScale(dst: ?[*]f32, sx: f32, sy: f32) void;
pub extern fn nvgTransformRotate(dst: ?[*]f32, a: f32) void;
pub extern fn nvgTransformSkewX(dst: ?[*]f32, a: f32) void;
pub extern fn nvgTransformSkewY(dst: ?[*]f32, a: f32) void;
pub extern fn nvgTransformMultiply(dst: ?[*]f32, src: ?[*]const f32) void;
pub extern fn nvgTransformPremultiply(dst: ?[*]f32, src: ?[*]const f32) void;
pub extern fn nvgTransformInverse(dst: ?[*]f32, src: ?[*]const f32) c_int;
pub extern fn nvgTransformPoint(dstx: ?[*]f32, dsty: ?[*]f32, xform: ?[*]const f32, srcx: f32, srcy: f32) void;
pub extern fn nvgDegToRad(deg: f32) f32;
pub extern fn nvgRadToDeg(rad: f32) f32;
pub extern fn nvgCreateImage(ctx: ?*NVGcontext, filename: ?[*]const u8, imageFlags: c_int) c_int;
pub extern fn nvgCreateImageMem(ctx: ?*NVGcontext, imageFlags: c_int, data: ?[*]u8, ndata: c_int) c_int;
pub extern fn nvgCreateImageRGBA(ctx: ?*NVGcontext, w: c_int, h: c_int, imageFlags: c_int, data: ?[*]const u8) c_int;
pub extern fn nvgUpdateImage(ctx: ?*NVGcontext, image: c_int, data: ?[*]const u8) void;
pub extern fn nvgImageSize(ctx: ?*NVGcontext, image: c_int, w: ?[*]c_int, h: ?[*]c_int) void;
pub extern fn nvgDeleteImage(ctx: ?*NVGcontext, image: c_int) void;
pub extern fn nvgLinearGradient(ctx: ?*NVGcontext, sx: f32, sy: f32, ex: f32, ey: f32, icol: NVGcolor, ocol: NVGcolor) NVGpaint;
pub extern fn nvgBoxGradient(ctx: ?*NVGcontext, x: f32, y: f32, w: f32, h: f32, r: f32, f: f32, icol: NVGcolor, ocol: NVGcolor) NVGpaint;
pub extern fn nvgRadialGradient(ctx: ?*NVGcontext, cx: f32, cy: f32, inr: f32, outr: f32, icol: NVGcolor, ocol: NVGcolor) NVGpaint;
pub extern fn nvgImagePattern(ctx: ?*NVGcontext, ox: f32, oy: f32, ex: f32, ey: f32, angle: f32, image: c_int, alpha: f32) NVGpaint;
pub extern fn nvgScissor(ctx: ?*NVGcontext, x: f32, y: f32, w: f32, h: f32) void;
pub extern fn nvgIntersectScissor(ctx: ?*NVGcontext, x: f32, y: f32, w: f32, h: f32) void;
pub extern fn nvgResetScissor(ctx: ?*NVGcontext) void;
pub extern fn nvgBeginPath(ctx: ?*NVGcontext) void;
pub extern fn nvgMoveTo(ctx: ?*NVGcontext, x: f32, y: f32) void;
pub extern fn nvgLineTo(ctx: ?*NVGcontext, x: f32, y: f32) void;
pub extern fn nvgBezierTo(ctx: ?*NVGcontext, c1x: f32, c1y: f32, c2x: f32, c2y: f32, x: f32, y: f32) void;
pub extern fn nvgQuadTo(ctx: ?*NVGcontext, cx: f32, cy: f32, x: f32, y: f32) void;
pub extern fn nvgArcTo(ctx: ?*NVGcontext, x1: f32, y1: f32, x2: f32, y2: f32, radius: f32) void;
pub extern fn nvgClosePath(ctx: ?*NVGcontext) void;
pub extern fn nvgPathWinding(ctx: ?*NVGcontext, dir: c_int) void;
pub extern fn nvgArc(ctx: ?*NVGcontext, cx: f32, cy: f32, r: f32, a0: f32, a1: f32, dir: c_int) void;
pub extern fn nvgRect(ctx: ?*NVGcontext, x: f32, y: f32, w: f32, h: f32) void;
pub extern fn nvgRoundedRect(ctx: ?*NVGcontext, x: f32, y: f32, w: f32, h: f32, r: f32) void;
pub extern fn nvgRoundedRectVarying(ctx: ?*NVGcontext, x: f32, y: f32, w: f32, h: f32, radTopLeft: f32, radTopRight: f32, radBottomRight: f32, radBottomLeft: f32) void;
pub extern fn nvgEllipse(ctx: ?*NVGcontext, cx: f32, cy: f32, rx: f32, ry: f32) void;
pub extern fn nvgCircle(ctx: ?*NVGcontext, cx: f32, cy: f32, r: f32) void;
pub extern fn nvgFill(ctx: ?*NVGcontext) void;
pub extern fn nvgStroke(ctx: ?*NVGcontext) void;
pub extern fn nvgCreateFont(ctx: ?*NVGcontext, name: ?[*]const u8, filename: ?[*]const u8) c_int;
pub extern fn nvgCreateFontMem(ctx: ?*NVGcontext, name: ?[*]const u8, data: ?[*]u8, ndata: c_int, freeData: c_int) c_int;
pub extern fn nvgFindFont(ctx: ?*NVGcontext, name: ?[*]const u8) c_int;
pub extern fn nvgAddFallbackFontId(ctx: ?*NVGcontext, baseFont: c_int, fallbackFont: c_int) c_int;
pub extern fn nvgAddFallbackFont(ctx: ?*NVGcontext, baseFont: ?[*]const u8, fallbackFont: ?[*]const u8) c_int;
pub extern fn nvgFontSize(ctx: ?*NVGcontext, size: f32) void;
pub extern fn nvgFontBlur(ctx: ?*NVGcontext, blur: f32) void;
pub extern fn nvgTextLetterSpacing(ctx: ?*NVGcontext, spacing: f32) void;
pub extern fn nvgTextLineHeight(ctx: ?*NVGcontext, lineHeight: f32) void;
pub extern fn nvgTextAlign(ctx: ?*NVGcontext, @"align": c_int) void;
pub extern fn nvgFontFaceId(ctx: ?*NVGcontext, font: c_int) void;
pub extern fn nvgFontFace(ctx: ?*NVGcontext, font: ?[*]const u8) void;
pub extern fn nvgText(ctx: ?*NVGcontext, x: f32, y: f32, string: ?[*]const u8, end: ?[*]const u8) f32;
pub extern fn nvgTextBox(ctx: ?*NVGcontext, x: f32, y: f32, breakRowWidth: f32, string: ?[*]const u8, end: ?[*]const u8) void;
pub extern fn nvgTextBounds(ctx: ?*NVGcontext, x: f32, y: f32, string: ?[*]const u8, end: ?[*]const u8, bounds: ?[*]f32) f32;
pub extern fn nvgTextBoxBounds(ctx: ?*NVGcontext, x: f32, y: f32, breakRowWidth: f32, string: ?[*]const u8, end: ?[*]const u8, bounds: ?[*]f32) void;
pub extern fn nvgTextGlyphPositions(ctx: ?*NVGcontext, x: f32, y: f32, string: ?[*]const u8, end: ?[*]const u8, positions: ?[*]NVGglyphPosition, maxPositions: c_int) c_int;
pub extern fn nvgTextMetrics(ctx: ?*NVGcontext, ascender: ?[*]f32, descender: ?[*]f32, lineh: ?[*]f32) void;
pub extern fn nvgTextBreakLines(ctx: ?*NVGcontext, string: ?[*]const u8, end: ?[*]const u8, breakRowWidth: f32, rows: ?[*]NVGtextRow, maxRows: c_int) c_int;
pub const NVG_TEXTURE_ALPHA = enum_NVGtexture.NVG_TEXTURE_ALPHA;
pub const NVG_TEXTURE_RGBA = enum_NVGtexture.NVG_TEXTURE_RGBA;
pub const enum_NVGtexture = extern enum {
    NVG_TEXTURE_ALPHA = 1,
    NVG_TEXTURE_RGBA = 2,
};
pub const struct_NVGscissor = extern struct {
    xform: [6]f32,
    extent: [2]f32,
};
pub const NVGscissor = struct_NVGscissor;
pub const struct_NVGvertex = extern struct {
    x: f32,
    y: f32,
    u: f32,
    v: f32,
};
pub const NVGvertex = struct_NVGvertex;
pub const struct_NVGpath = extern struct {
    first: c_int,
    count: c_int,
    closed: u8,
    nbevel: c_int,
    fill: ?[*]NVGvertex,
    nfill: c_int,
    stroke: ?[*]NVGvertex,
    nstroke: c_int,
    winding: c_int,
    convex: c_int,
};
pub const NVGpath = struct_NVGpath;
pub const struct_NVGparams = extern struct {
    userPtr: ?*c_void,
    edgeAntiAlias: c_int,
    renderCreate: ?extern fn(?*c_void) c_int,
    renderCreateTexture: ?extern fn(?*c_void, c_int, c_int, c_int, c_int, ?[*]const u8) c_int,
    renderDeleteTexture: ?extern fn(?*c_void, c_int) c_int,
    renderUpdateTexture: ?extern fn(?*c_void, c_int, c_int, c_int, c_int, c_int, ?[*]const u8) c_int,
    renderGetTextureSize: ?extern fn(?*c_void, c_int, ?[*]c_int, ?[*]c_int) c_int,
    renderViewport: ?extern fn(?*c_void, f32, f32, f32) void,
    renderCancel: ?extern fn(?*c_void) void,
    renderFlush: ?extern fn(?*c_void) void,
    renderFill: ?extern fn(?*c_void, ?[*]NVGpaint, NVGcompositeOperationState, ?[*]NVGscissor, f32, ?[*]const f32, ?[*]const NVGpath, c_int) void,
    renderStroke: ?extern fn(?*c_void, ?[*]NVGpaint, NVGcompositeOperationState, ?[*]NVGscissor, f32, f32, ?[*]const NVGpath, c_int) void,
    renderTriangles: ?extern fn(?*c_void, ?[*]NVGpaint, NVGcompositeOperationState, ?[*]NVGscissor, ?[*]const NVGvertex, c_int) void,
    renderDelete: ?extern fn(?*c_void) void,
};
pub const NVGparams = struct_NVGparams;
pub extern fn nvgCreateInternal(params: ?[*]NVGparams) ?*NVGcontext;
pub extern fn nvgDeleteInternal(ctx: ?*NVGcontext) void;
pub extern fn nvgInternalParams(ctx: ?*NVGcontext) ?[*]NVGparams;
pub extern fn nvgDebugDumpPathCache(ctx: ?*NVGcontext) void;
pub const __GCC_ATOMIC_TEST_AND_SET_TRUEVAL = 1;
pub const __FLT16_MAX_EXP__ = 15;
pub const __BIGGEST_ALIGNMENT__ = 16;
pub const __SIZEOF_FLOAT__ = 4;
pub const __INT64_FMTd__ = c"ld";
pub const __STDC_VERSION__ = c_long(201112);
pub const __INT_LEAST32_FMTi__ = c"i";
pub const __INT_LEAST8_FMTi__ = c"hhi";
pub const __LDBL_EPSILON__ = 0.000000;
pub const __INT_LEAST32_FMTd__ = c"d";
pub const __STDC_UTF_32__ = 1;
pub const __SIG_ATOMIC_WIDTH__ = 32;
pub const __UINT_FAST64_FMTX__ = c"lX";
pub const __GCC_ATOMIC_LLONG_LOCK_FREE = 2;
pub const __clang_version__ = c"7.0.0 (tags/RELEASE_700/final)";
pub const __UINT_LEAST8_FMTo__ = c"hho";
pub const __SIZEOF_DOUBLE__ = 8;
pub const __INTMAX_FMTd__ = c"ld";
pub const __CLANG_ATOMIC_CHAR_LOCK_FREE = 2;
pub const __INT_LEAST16_FMTi__ = c"hi";
pub const __GCC_ATOMIC_SHORT_LOCK_FREE = 2;
pub const __MMX__ = 1;
pub const __SIZE_FMTX__ = c"lX";
pub const __WCHAR_WIDTH__ = 32;
pub const __PTRDIFF_FMTd__ = c"ld";
pub const __DBL_MIN_EXP__ = -1021;
pub const __FLT_EVAL_METHOD__ = 0;
pub const __SSE_MATH__ = 1;
pub const __UINT_FAST8_FMTo__ = c"hho";
pub const __UINT_LEAST64_MAX__ = c_ulong(18446744073709551615);
pub const __UINT_LEAST64_FMTx__ = c"lx";
pub const __INT8_MAX__ = 127;
pub const __DBL_HAS_DENORM__ = 1;
pub const __FLOAT128__ = 1;
pub const __FLT16_HAS_QUIET_NAN__ = 1;
pub const __ATOMIC_RELAXED = 0;
pub const __DBL_DECIMAL_DIG__ = 17;
pub const __SIZEOF_SHORT__ = 2;
pub const __UINT16_FMTX__ = c"hX";
pub const __UINT_FAST16_MAX__ = 65535;
pub const __CLANG_ATOMIC_SHORT_LOCK_FREE = 2;
pub const __CONSTANT_CFSTRINGS__ = 1;
pub const __WINT_MAX__ = c_uint(4294967295);
pub const __LDBL_MAX_EXP__ = 16384;
pub const __NO_MATH_INLINES = 1;
pub const __WCHAR_TYPE__ = int;
pub const __LONG_MAX__ = c_long(9223372036854775807);
pub const __STDC_HOSTED__ = 1;
pub const __INT_FAST16_FMTi__ = c"hi";
pub const __PTRDIFF_WIDTH__ = 64;
pub const __INT_LEAST32_TYPE__ = int;
pub const __SCHAR_MAX__ = 127;
pub const __LDBL_DENORM_MIN__ = 0.000000;
pub const __FLT16_MIN_EXP__ = -14;
pub const __INT64_C_SUFFIX__ = L;
pub const __ELF__ = 1;
pub const __LDBL_MANT_DIG__ = 64;
pub const __CLANG_ATOMIC_INT_LOCK_FREE = 2;
pub const __SIZEOF_PTRDIFF_T__ = 8;
pub const __SIG_ATOMIC_MAX__ = 2147483647;
pub const __UINT64_FMTX__ = c"lX";
pub const __UINT64_MAX__ = c_ulong(18446744073709551615);
pub const __DBL_MANT_DIG__ = 53;
pub const __FLT_DECIMAL_DIG__ = 9;
pub const __INT_LEAST32_MAX__ = 2147483647;
pub const __DBL_DIG__ = 15;
pub const __ATOMIC_ACQUIRE = 2;
pub const __OPENCL_MEMORY_SCOPE_WORK_GROUP = 1;
pub const __FLT16_HAS_DENORM__ = 1;
pub const __UINT_FAST16_FMTu__ = c"hu";
pub const __INTPTR_FMTi__ = c"li";
pub const __UINT_FAST8_FMTX__ = c"hhX";
pub const __LITTLE_ENDIAN__ = 1;
pub const __SSE__ = 1;
pub const __FLT_HAS_QUIET_NAN__ = 1;
pub const __SIZEOF_SIZE_T__ = 8;
pub const __UINT_LEAST16_FMTo__ = c"ho";
pub const __UINT8_FMTo__ = c"hho";
pub const __UINT_LEAST16_FMTx__ = c"hx";
pub const __CLANG_ATOMIC_WCHAR_T_LOCK_FREE = 2;
pub const __UINT_FAST16_FMTX__ = c"hX";
pub const __VERSION__ = c"4.2.1 Compatible Clang 7.0.0 (tags/RELEASE_700/final)";
pub const __UINT_FAST32_FMTx__ = c"x";
pub const __UINTPTR_MAX__ = c_ulong(18446744073709551615);
pub const __UINT_FAST8_FMTu__ = c"hhu";
pub const __UINT_LEAST8_FMTu__ = c"hhu";
pub const __UINT_LEAST64_FMTo__ = c"lo";
pub const __UINT_LEAST8_MAX__ = 255;
pub const __SIZEOF_WCHAR_T__ = 4;
pub const __LDBL_MAX__ = inf;
pub const __UINT16_MAX__ = 65535;
pub const _LP64 = 1;
pub const __x86_64 = 1;
pub const linux = 1;
pub const __SIZEOF_WINT_T__ = 4;
pub const __UINTMAX_FMTo__ = c"lo";
pub const __FLT_DIG__ = 6;
pub const __UINT_LEAST8_FMTX__ = c"hhX";
pub const __INT16_MAX__ = 32767;
pub const __WINT_UNSIGNED__ = 1;
pub const __FLT_MAX_10_EXP__ = 38;
pub const __UINTPTR_FMTX__ = c"lX";
pub const __UINT_LEAST16_FMTu__ = c"hu";
pub const __CLANG_ATOMIC_POINTER_LOCK_FREE = 2;
pub const __WINT_WIDTH__ = 32;
pub const __SHRT_MAX__ = 32767;
pub const __GCC_ATOMIC_BOOL_LOCK_FREE = 2;
pub const __POINTER_WIDTH__ = 64;
pub const __PTRDIFF_MAX__ = c_long(9223372036854775807);
pub const __INT32_FMTd__ = c"d";
pub const __FLT16_DIG__ = 3;
pub const __DBL_MIN__ = 0.000000;
pub const __SIZEOF_LONG__ = 8;
pub const __INTPTR_WIDTH__ = 64;
pub const __FLT16_MAX_10_EXP__ = 4;
pub const __INT_FAST32_TYPE__ = int;
pub const __NO_INLINE__ = 1;
pub const __UINT_FAST32_FMTX__ = c"X";
pub const __gnu_linux__ = 1;
pub const __INT_FAST32_MAX__ = 2147483647;
pub const __UINTMAX_FMTu__ = c"lu";
pub const __FLT_RADIX__ = 2;
pub const __FLT16_HAS_INFINITY__ = 1;
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 = 1;
pub const __GCC_ATOMIC_INT_LOCK_FREE = 2;
pub const __OPENCL_MEMORY_SCOPE_ALL_SVM_DEVICES = 3;
pub const __FLT16_DECIMAL_DIG__ = 5;
pub const __PRAGMA_REDEFINE_EXTNAME = 1;
pub const __INT_FAST8_FMTd__ = c"hhd";
pub const __INT32_TYPE__ = int;
pub const __UINTMAX_WIDTH__ = 64;
pub const __FLT_MIN__ = 0.000000;
pub const __INT64_FMTi__ = c"li";
pub const __UINT_FAST64_FMTu__ = c"lu";
pub const __INT8_FMTd__ = c"hhd";
pub const __INT_FAST16_TYPE__ = short;
pub const __FLT_MAX_EXP__ = 128;
pub const __DBL_MAX_10_EXP__ = 308;
pub const __LDBL_MIN__ = 0.000000;
pub const __INT_FAST64_FMTi__ = c"li";
pub const __INT_LEAST8_FMTd__ = c"hhd";
pub const __CLANG_ATOMIC_LLONG_LOCK_FREE = 2;
pub const __UINT_LEAST32_FMTX__ = c"X";
pub const __UINTMAX_MAX__ = c_ulong(18446744073709551615);
pub const __UINT_FAST16_FMTo__ = c"ho";
pub const __LDBL_DECIMAL_DIG__ = 21;
pub const __UINT_LEAST64_FMTX__ = c"lX";
pub const __clang_minor__ = 0;
pub const __SIZEOF_FLOAT128__ = 16;
pub const __UINT_FAST64_FMTo__ = c"lo";
pub const __SIZE_FMTx__ = c"lx";
pub const __DBL_MAX__ = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878;
pub const __DBL_EPSILON__ = 0.000000;
pub const __UINT64_FMTx__ = c"lx";
pub const __CHAR_BIT__ = 8;
pub const __INT16_FMTi__ = c"hi";
pub const _DEBUG = 1;
pub const __GNUC_MINOR__ = 2;
pub const __UINT_FAST32_MAX__ = c_uint(4294967295);
pub const __UINT8_FMTX__ = c"hhX";
pub const __FLT_EPSILON__ = 0.000000;
pub const __UINTPTR_WIDTH__ = 64;
pub const __llvm__ = 1;
pub const __UINT_FAST64_MAX__ = c_ulong(18446744073709551615);
pub const __INT_FAST32_FMTi__ = c"i";
pub const __FLT_HAS_INFINITY__ = 1;
pub const __k8 = 1;
pub const __UINT8_FMTx__ = c"hhx";
pub const __INTMAX_C_SUFFIX__ = L;
pub const __ORDER_LITTLE_ENDIAN__ = 1234;
pub const __GCC_ATOMIC_CHAR16_T_LOCK_FREE = 2;
pub const __INT16_FMTd__ = c"hd";
pub const __UINT32_FMTX__ = c"X";
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 = 1;
pub const __UINT32_C_SUFFIX__ = U;
pub const __INT32_MAX__ = 2147483647;
pub const __GCC_ATOMIC_CHAR_LOCK_FREE = 2;
pub const __INTMAX_WIDTH__ = 64;
pub const __CLANG_ATOMIC_BOOL_LOCK_FREE = 2;
pub const __SIZE_FMTo__ = c"lo";
pub const __DBL_HAS_QUIET_NAN__ = 1;
pub const __INT_FAST8_FMTi__ = c"hhi";
pub const __UINT_LEAST32_FMTo__ = c"o";
pub const __STDC_UTF_16__ = 1;
pub const __UINT_LEAST32_MAX__ = c_uint(4294967295);
pub const __ATOMIC_RELEASE = 3;
pub const __UINT_FAST16_FMTx__ = c"hx";
pub const __UINTMAX_C_SUFFIX__ = UL;
pub const __FLT_MIN_EXP__ = -125;
pub const __SIZEOF_LONG_DOUBLE__ = 16;
pub const __UINT_LEAST64_FMTu__ = c"lu";
pub const __GCC_ATOMIC_LONG_LOCK_FREE = 2;
pub const __ORDER_PDP_ENDIAN__ = 3412;
pub const __INT_FAST64_FMTd__ = c"ld";
pub const __CLANG_ATOMIC_LONG_LOCK_FREE = 2;
pub const __GXX_ABI_VERSION = 1002;
pub const __INT16_TYPE__ = short;
pub const __SSE2_MATH__ = 1;
pub const __FLT_MANT_DIG__ = 24;
pub const __UINT_FAST64_FMTx__ = c"lx";
pub const __STDC__ = 1;
pub const __INT_FAST8_MAX__ = 127;
pub const __INTPTR_FMTd__ = c"ld";
pub const __GNUC_PATCHLEVEL__ = 1;
pub const __SIZE_WIDTH__ = 64;
pub const __UINT_LEAST8_FMTx__ = c"hhx";
pub const __INT_LEAST64_FMTi__ = c"li";
pub const __INT_FAST16_MAX__ = 32767;
pub const __INTPTR_MAX__ = c_long(9223372036854775807);
pub const __CLANG_ATOMIC_CHAR16_T_LOCK_FREE = 2;
pub const __UINT64_FMTu__ = c"lu";
pub const __BYTE_ORDER__ = __ORDER_LITTLE_ENDIAN__;
pub const __SSE2__ = 1;
pub const __INT_MAX__ = 2147483647;
pub const __INTMAX_FMTi__ = c"li";
pub const __DBL_DENORM_MIN__ = 0.000000;
pub const __clang_major__ = 7;
pub const __FLT16_MANT_DIG__ = 11;
pub const __GNUC__ = 4;
pub const __UINT32_MAX__ = c_uint(4294967295);
pub const __FLT_DENORM_MIN__ = 0.000000;
pub const __DBL_MAX_EXP__ = 1024;
pub const __INT8_FMTi__ = c"hhi";
pub const __UINT_LEAST16_MAX__ = 65535;
pub const __LDBL_HAS_DENORM__ = 1;
pub const __FLT16_MIN_10_EXP__ = -13;
pub const __LDBL_HAS_QUIET_NAN__ = 1;
pub const __UINT_FAST8_MAX__ = 255;
pub const __DBL_MIN_10_EXP__ = -307;
pub const __UINT8_FMTu__ = c"hhu";
pub const __INT_FAST64_MAX__ = c_long(9223372036854775807);
pub const __UINT16_FMTu__ = c"hu";
pub const __ATOMIC_SEQ_CST = 5;
pub const __SIZE_FMTu__ = c"lu";
pub const __LDBL_MIN_EXP__ = -16381;
pub const __UINT_FAST32_FMTu__ = c"u";
pub const __clang_patchlevel__ = 0;
pub const __SIZEOF_LONG_LONG__ = 8;
pub const __GNUC_STDC_INLINE__ = 1;
pub const __FXSR__ = 1;
pub const __UINT8_MAX__ = 255;
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 = 1;
pub const __UINT32_FMTx__ = c"x";
pub const __UINT16_FMTo__ = c"ho";
pub const __OPENCL_MEMORY_SCOPE_DEVICE = 2;
pub const __UINT32_FMTu__ = c"u";
pub const __SIZEOF_POINTER__ = 8;
pub const __SIZE_MAX__ = c_ulong(18446744073709551615);
pub const __unix = 1;
pub const __INT_FAST16_FMTd__ = c"hd";
pub const unix = 1;
pub const __UINT_LEAST32_FMTu__ = c"u";
pub const __FLT_MAX__ = 340282346999999984391321947108527833088.000000;
pub const __GCC_ATOMIC_WCHAR_T_LOCK_FREE = 2;
pub const __k8__ = 1;
pub const __ATOMIC_CONSUME = 1;
pub const __tune_k8__ = 1;
pub const __unix__ = 1;
pub const __x86_64__ = 1;
pub const __LDBL_HAS_INFINITY__ = 1;
pub const __UINTMAX_FMTx__ = c"lx";
pub const __UINT64_C_SUFFIX__ = UL;
pub const __FLT_MIN_10_EXP__ = -37;
pub const __INT_LEAST16_MAX__ = 32767;
pub const __UINT32_FMTo__ = c"o";
pub const __UINTPTR_FMTo__ = c"lo";
pub const __INT_LEAST16_FMTd__ = c"hd";
pub const __UINTPTR_FMTx__ = c"lx";
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 = 1;
pub const __INT_LEAST64_FMTd__ = c"ld";
pub const __INT_LEAST16_TYPE__ = short;
pub const __ORDER_BIG_ENDIAN__ = 4321;
pub const __LDBL_MIN_10_EXP__ = -4931;
pub const __INT_LEAST8_MAX__ = 127;
pub const __SIZEOF_INT__ = 4;
pub const __GCC_ATOMIC_POINTER_LOCK_FREE = 2;
pub const __amd64 = 1;
pub const __OBJC_BOOL_IS_BOOL = 0;
pub const __LDBL_MAX_10_EXP__ = 4932;
pub const __SIZEOF_INT128__ = 16;
pub const __UINT_FAST8_FMTx__ = c"hhx";
pub const __linux = 1;
pub const __UINT16_FMTx__ = c"hx";
pub const __UINTPTR_FMTu__ = c"lu";
pub const __UINT_LEAST16_FMTX__ = c"hX";
pub const __amd64__ = 1;
pub const __UINT_FAST32_FMTo__ = c"o";
pub const __linux__ = 1;
pub const __clang__ = 1;
pub const __LP64__ = 1;
pub const __PTRDIFF_FMTi__ = c"li";
pub const NVG_PI = 3.141593;
pub const __LDBL_DIG__ = 18;
pub const __GCC_ATOMIC_CHAR32_T_LOCK_FREE = 2;
pub const __UINT64_FMTo__ = c"lo";
pub const __INT_FAST32_FMTd__ = c"d";
pub const __ATOMIC_ACQ_REL = 4;
pub const __LONG_LONG_MAX__ = c_longlong(9223372036854775807);
pub const __OPENCL_MEMORY_SCOPE_SUB_GROUP = 4;
pub const __INTMAX_MAX__ = c_long(9223372036854775807);
pub const __UINT_LEAST32_FMTx__ = c"x";
pub const __WCHAR_MAX__ = 2147483647;
pub const __INT64_MAX__ = c_long(9223372036854775807);
pub const __CLANG_ATOMIC_CHAR32_T_LOCK_FREE = 2;
pub const __INT_LEAST64_MAX__ = c_long(9223372036854775807);
pub const __UINTMAX_FMTX__ = c"lX";
pub const __OPENCL_MEMORY_SCOPE_WORK_ITEM = 0;
pub const __FLT_HAS_DENORM__ = 1;
pub const __DECIMAL_DIG__ = __LDBL_DECIMAL_DIG__;
pub const __INT32_FMTi__ = c"i";
pub const __DBL_HAS_INFINITY__ = 1;
pub const __FINITE_MATH_ONLY__ = 0;
pub const NVGwinding = enum_NVGwinding;
pub const NVGsolidity = enum_NVGsolidity;
pub const NVGlineCap = enum_NVGlineCap;
pub const NVGalign = enum_NVGalign;
pub const NVGblendFactor = enum_NVGblendFactor;
pub const NVGcompositeOperation = enum_NVGcompositeOperation;
pub const NVGimageFlags = enum_NVGimageFlags;
pub const NVGtexture = enum_NVGtexture;
