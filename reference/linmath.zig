pub const float_t = f32;
pub const double_t = f64;
pub extern fn acos(__x: f64) f64;
pub extern fn __acos(__x: f64) f64;
pub extern fn asin(__x: f64) f64;
pub extern fn __asin(__x: f64) f64;
pub extern fn atan(__x: f64) f64;
pub extern fn __atan(__x: f64) f64;
pub extern fn atan2(__y: f64, __x: f64) f64;
pub extern fn __atan2(__y: f64, __x: f64) f64;
pub extern fn cos(__x: f64) f64;
pub extern fn __cos(__x: f64) f64;
pub extern fn sin(__x: f64) f64;
pub extern fn __sin(__x: f64) f64;
pub extern fn tan(__x: f64) f64;
pub extern fn __tan(__x: f64) f64;
pub extern fn cosh(__x: f64) f64;
pub extern fn __cosh(__x: f64) f64;
pub extern fn sinh(__x: f64) f64;
pub extern fn __sinh(__x: f64) f64;
pub extern fn tanh(__x: f64) f64;
pub extern fn __tanh(__x: f64) f64;
pub extern fn acosh(__x: f64) f64;
pub extern fn __acosh(__x: f64) f64;
pub extern fn asinh(__x: f64) f64;
pub extern fn __asinh(__x: f64) f64;
pub extern fn atanh(__x: f64) f64;
pub extern fn __atanh(__x: f64) f64;
pub extern fn exp(__x: f64) f64;
pub extern fn __exp(__x: f64) f64;
pub extern fn frexp(__x: f64, __exponent: ?[*]c_int) f64;
pub extern fn __frexp(__x: f64, __exponent: ?[*]c_int) f64;
pub extern fn ldexp(__x: f64, __exponent: c_int) f64;
pub extern fn __ldexp(__x: f64, __exponent: c_int) f64;
pub extern fn log(__x: f64) f64;
pub extern fn __log(__x: f64) f64;
pub extern fn log10(__x: f64) f64;
pub extern fn __log10(__x: f64) f64;
pub extern fn modf(__x: f64, __iptr: ?[*]f64) f64;
pub extern fn __modf(__x: f64, __iptr: ?[*]f64) f64;
pub extern fn expm1(__x: f64) f64;
pub extern fn __expm1(__x: f64) f64;
pub extern fn log1p(__x: f64) f64;
pub extern fn __log1p(__x: f64) f64;
pub extern fn logb(__x: f64) f64;
pub extern fn __logb(__x: f64) f64;
pub extern fn exp2(__x: f64) f64;
pub extern fn __exp2(__x: f64) f64;
pub extern fn log2(__x: f64) f64;
pub extern fn __log2(__x: f64) f64;
pub extern fn pow(__x: f64, __y: f64) f64;
pub extern fn __pow(__x: f64, __y: f64) f64;
pub extern fn sqrt(__x: f64) f64;
pub extern fn __sqrt(__x: f64) f64;
pub extern fn hypot(__x: f64, __y: f64) f64;
pub extern fn __hypot(__x: f64, __y: f64) f64;
pub extern fn cbrt(__x: f64) f64;
pub extern fn __cbrt(__x: f64) f64;
pub extern fn ceil(__x: f64) f64;
pub extern fn __ceil(__x: f64) f64;
pub extern fn fabs(__x: f64) f64;
pub extern fn __fabs(__x: f64) f64;
pub extern fn floor(__x: f64) f64;
pub extern fn __floor(__x: f64) f64;
pub extern fn fmod(__x: f64, __y: f64) f64;
pub extern fn __fmod(__x: f64, __y: f64) f64;
pub extern fn __isinf(__value: f64) c_int;
pub extern fn __finite(__value: f64) c_int;
pub extern fn isinf(__value: f64) c_int;
pub extern fn finite(__value: f64) c_int;
pub extern fn drem(__x: f64, __y: f64) f64;
pub extern fn __drem(__x: f64, __y: f64) f64;
pub extern fn significand(__x: f64) f64;
pub extern fn __significand(__x: f64) f64;
pub extern fn copysign(__x: f64, __y: f64) f64;
pub extern fn __copysign(__x: f64, __y: f64) f64;
pub extern fn nan(__tagb: ?[*]const u8) f64;
pub extern fn __nan(__tagb: ?[*]const u8) f64;
pub extern fn __isnan(__value: f64) c_int;
pub extern fn isnan(__value: f64) c_int;
pub extern fn j0(arg0: f64) f64;
pub extern fn __j0(arg0: f64) f64;
pub extern fn j1(arg0: f64) f64;
pub extern fn __j1(arg0: f64) f64;
pub extern fn jn(arg0: c_int, arg1: f64) f64;
pub extern fn __jn(arg0: c_int, arg1: f64) f64;
pub extern fn y0(arg0: f64) f64;
pub extern fn __y0(arg0: f64) f64;
pub extern fn y1(arg0: f64) f64;
pub extern fn __y1(arg0: f64) f64;
pub extern fn yn(arg0: c_int, arg1: f64) f64;
pub extern fn __yn(arg0: c_int, arg1: f64) f64;
pub extern fn erf(arg0: f64) f64;
pub extern fn __erf(arg0: f64) f64;
pub extern fn erfc(arg0: f64) f64;
pub extern fn __erfc(arg0: f64) f64;
pub extern fn lgamma(arg0: f64) f64;
pub extern fn __lgamma(arg0: f64) f64;
pub extern fn tgamma(arg0: f64) f64;
pub extern fn __tgamma(arg0: f64) f64;
pub extern fn gamma(arg0: f64) f64;
pub extern fn __gamma(arg0: f64) f64;
pub extern fn lgamma_r(arg0: f64, __signgamp: ?[*]c_int) f64;
pub extern fn __lgamma_r(arg0: f64, __signgamp: ?[*]c_int) f64;
pub extern fn rint(__x: f64) f64;
pub extern fn __rint(__x: f64) f64;
pub extern fn nextafter(__x: f64, __y: f64) f64;
pub extern fn __nextafter(__x: f64, __y: f64) f64;
pub extern fn nexttoward(__x: f64, __y: c_longdouble) f64;
pub extern fn __nexttoward(__x: f64, __y: c_longdouble) f64;
pub extern fn remainder(__x: f64, __y: f64) f64;
pub extern fn __remainder(__x: f64, __y: f64) f64;
pub extern fn scalbn(__x: f64, __n: c_int) f64;
pub extern fn __scalbn(__x: f64, __n: c_int) f64;
pub extern fn ilogb(__x: f64) c_int;
pub extern fn __ilogb(__x: f64) c_int;
pub extern fn scalbln(__x: f64, __n: c_long) f64;
pub extern fn __scalbln(__x: f64, __n: c_long) f64;
pub extern fn nearbyint(__x: f64) f64;
pub extern fn __nearbyint(__x: f64) f64;
pub extern fn round(__x: f64) f64;
pub extern fn __round(__x: f64) f64;
pub extern fn trunc(__x: f64) f64;
pub extern fn __trunc(__x: f64) f64;
pub extern fn remquo(__x: f64, __y: f64, __quo: ?[*]c_int) f64;
pub extern fn __remquo(__x: f64, __y: f64, __quo: ?[*]c_int) f64;
pub extern fn lrint(__x: f64) c_long;
pub extern fn __lrint(__x: f64) c_long;
pub extern fn llrint(__x: f64) c_longlong;
pub extern fn __llrint(__x: f64) c_longlong;
pub extern fn lround(__x: f64) c_long;
pub extern fn __lround(__x: f64) c_long;
pub extern fn llround(__x: f64) c_longlong;
pub extern fn __llround(__x: f64) c_longlong;
pub extern fn fdim(__x: f64, __y: f64) f64;
pub extern fn __fdim(__x: f64, __y: f64) f64;
pub extern fn fmax(__x: f64, __y: f64) f64;
pub extern fn __fmax(__x: f64, __y: f64) f64;
pub extern fn fmin(__x: f64, __y: f64) f64;
pub extern fn __fmin(__x: f64, __y: f64) f64;
pub extern fn __fpclassify(__value: f64) c_int;
pub extern fn __signbit(__value: f64) c_int;
pub extern fn fma(__x: f64, __y: f64, __z: f64) f64;
pub extern fn __fma(__x: f64, __y: f64, __z: f64) f64;
pub extern fn scalb(__x: f64, __n: f64) f64;
pub extern fn __scalb(__x: f64, __n: f64) f64;
pub extern fn acosf(__x: f32) f32;
pub extern fn __acosf(__x: f32) f32;
pub extern fn asinf(__x: f32) f32;
pub extern fn __asinf(__x: f32) f32;
pub extern fn atanf(__x: f32) f32;
pub extern fn __atanf(__x: f32) f32;
pub extern fn atan2f(__y: f32, __x: f32) f32;
pub extern fn __atan2f(__y: f32, __x: f32) f32;
pub extern fn cosf(__x: f32) f32;
pub extern fn __cosf(__x: f32) f32;
pub extern fn sinf(__x: f32) f32;
pub extern fn __sinf(__x: f32) f32;
pub extern fn tanf(__x: f32) f32;
pub extern fn __tanf(__x: f32) f32;
pub extern fn coshf(__x: f32) f32;
pub extern fn __coshf(__x: f32) f32;
pub extern fn sinhf(__x: f32) f32;
pub extern fn __sinhf(__x: f32) f32;
pub extern fn tanhf(__x: f32) f32;
pub extern fn __tanhf(__x: f32) f32;
pub extern fn acoshf(__x: f32) f32;
pub extern fn __acoshf(__x: f32) f32;
pub extern fn asinhf(__x: f32) f32;
pub extern fn __asinhf(__x: f32) f32;
pub extern fn atanhf(__x: f32) f32;
pub extern fn __atanhf(__x: f32) f32;
pub extern fn expf(__x: f32) f32;
pub extern fn __expf(__x: f32) f32;
pub extern fn frexpf(__x: f32, __exponent: ?[*]c_int) f32;
pub extern fn __frexpf(__x: f32, __exponent: ?[*]c_int) f32;
pub extern fn ldexpf(__x: f32, __exponent: c_int) f32;
pub extern fn __ldexpf(__x: f32, __exponent: c_int) f32;
pub extern fn logf(__x: f32) f32;
pub extern fn __logf(__x: f32) f32;
pub extern fn log10f(__x: f32) f32;
pub extern fn __log10f(__x: f32) f32;
pub extern fn modff(__x: f32, __iptr: ?[*]f32) f32;
pub extern fn __modff(__x: f32, __iptr: ?[*]f32) f32;
pub extern fn expm1f(__x: f32) f32;
pub extern fn __expm1f(__x: f32) f32;
pub extern fn log1pf(__x: f32) f32;
pub extern fn __log1pf(__x: f32) f32;
pub extern fn logbf(__x: f32) f32;
pub extern fn __logbf(__x: f32) f32;
pub extern fn exp2f(__x: f32) f32;
pub extern fn __exp2f(__x: f32) f32;
pub extern fn log2f(__x: f32) f32;
pub extern fn __log2f(__x: f32) f32;
pub extern fn powf(__x: f32, __y: f32) f32;
pub extern fn __powf(__x: f32, __y: f32) f32;
pub extern fn sqrtf(__x: f32) f32;
pub extern fn __sqrtf(__x: f32) f32;
pub extern fn hypotf(__x: f32, __y: f32) f32;
pub extern fn __hypotf(__x: f32, __y: f32) f32;
pub extern fn cbrtf(__x: f32) f32;
pub extern fn __cbrtf(__x: f32) f32;
pub extern fn ceilf(__x: f32) f32;
pub extern fn __ceilf(__x: f32) f32;
pub extern fn fabsf(__x: f32) f32;
pub extern fn __fabsf(__x: f32) f32;
pub extern fn floorf(__x: f32) f32;
pub extern fn __floorf(__x: f32) f32;
pub extern fn fmodf(__x: f32, __y: f32) f32;
pub extern fn __fmodf(__x: f32, __y: f32) f32;
pub extern fn __isinff(__value: f32) c_int;
pub extern fn __finitef(__value: f32) c_int;
pub extern fn isinff(__value: f32) c_int;
pub extern fn finitef(__value: f32) c_int;
pub extern fn dremf(__x: f32, __y: f32) f32;
pub extern fn __dremf(__x: f32, __y: f32) f32;
pub extern fn significandf(__x: f32) f32;
pub extern fn __significandf(__x: f32) f32;
pub extern fn copysignf(__x: f32, __y: f32) f32;
pub extern fn __copysignf(__x: f32, __y: f32) f32;
pub extern fn nanf(__tagb: ?[*]const u8) f32;
pub extern fn __nanf(__tagb: ?[*]const u8) f32;
pub extern fn __isnanf(__value: f32) c_int;
pub extern fn isnanf(__value: f32) c_int;
pub extern fn j0f(arg0: f32) f32;
pub extern fn __j0f(arg0: f32) f32;
pub extern fn j1f(arg0: f32) f32;
pub extern fn __j1f(arg0: f32) f32;
pub extern fn jnf(arg0: c_int, arg1: f32) f32;
pub extern fn __jnf(arg0: c_int, arg1: f32) f32;
pub extern fn y0f(arg0: f32) f32;
pub extern fn __y0f(arg0: f32) f32;
pub extern fn y1f(arg0: f32) f32;
pub extern fn __y1f(arg0: f32) f32;
pub extern fn ynf(arg0: c_int, arg1: f32) f32;
pub extern fn __ynf(arg0: c_int, arg1: f32) f32;
pub extern fn erff(arg0: f32) f32;
pub extern fn __erff(arg0: f32) f32;
pub extern fn erfcf(arg0: f32) f32;
pub extern fn __erfcf(arg0: f32) f32;
pub extern fn lgammaf(arg0: f32) f32;
pub extern fn __lgammaf(arg0: f32) f32;
pub extern fn tgammaf(arg0: f32) f32;
pub extern fn __tgammaf(arg0: f32) f32;
pub extern fn gammaf(arg0: f32) f32;
pub extern fn __gammaf(arg0: f32) f32;
pub extern fn lgammaf_r(arg0: f32, __signgamp: ?[*]c_int) f32;
pub extern fn __lgammaf_r(arg0: f32, __signgamp: ?[*]c_int) f32;
pub extern fn rintf(__x: f32) f32;
pub extern fn __rintf(__x: f32) f32;
pub extern fn nextafterf(__x: f32, __y: f32) f32;
pub extern fn __nextafterf(__x: f32, __y: f32) f32;
pub extern fn nexttowardf(__x: f32, __y: c_longdouble) f32;
pub extern fn __nexttowardf(__x: f32, __y: c_longdouble) f32;
pub extern fn remainderf(__x: f32, __y: f32) f32;
pub extern fn __remainderf(__x: f32, __y: f32) f32;
pub extern fn scalbnf(__x: f32, __n: c_int) f32;
pub extern fn __scalbnf(__x: f32, __n: c_int) f32;
pub extern fn ilogbf(__x: f32) c_int;
pub extern fn __ilogbf(__x: f32) c_int;
pub extern fn scalblnf(__x: f32, __n: c_long) f32;
pub extern fn __scalblnf(__x: f32, __n: c_long) f32;
pub extern fn nearbyintf(__x: f32) f32;
pub extern fn __nearbyintf(__x: f32) f32;
pub extern fn roundf(__x: f32) f32;
pub extern fn __roundf(__x: f32) f32;
pub extern fn truncf(__x: f32) f32;
pub extern fn __truncf(__x: f32) f32;
pub extern fn remquof(__x: f32, __y: f32, __quo: ?[*]c_int) f32;
pub extern fn __remquof(__x: f32, __y: f32, __quo: ?[*]c_int) f32;
pub extern fn lrintf(__x: f32) c_long;
pub extern fn __lrintf(__x: f32) c_long;
pub extern fn llrintf(__x: f32) c_longlong;
pub extern fn __llrintf(__x: f32) c_longlong;
pub extern fn lroundf(__x: f32) c_long;
pub extern fn __lroundf(__x: f32) c_long;
pub extern fn llroundf(__x: f32) c_longlong;
pub extern fn __llroundf(__x: f32) c_longlong;
pub extern fn fdimf(__x: f32, __y: f32) f32;
pub extern fn __fdimf(__x: f32, __y: f32) f32;
pub extern fn fmaxf(__x: f32, __y: f32) f32;
pub extern fn __fmaxf(__x: f32, __y: f32) f32;
pub extern fn fminf(__x: f32, __y: f32) f32;
pub extern fn __fminf(__x: f32, __y: f32) f32;
pub extern fn __fpclassifyf(__value: f32) c_int;
pub extern fn __signbitf(__value: f32) c_int;
pub extern fn fmaf(__x: f32, __y: f32, __z: f32) f32;
pub extern fn __fmaf(__x: f32, __y: f32, __z: f32) f32;
pub extern fn scalbf(__x: f32, __n: f32) f32;
pub extern fn __scalbf(__x: f32, __n: f32) f32;
pub extern fn acosl(__x: c_longdouble) c_longdouble;
pub extern fn __acosl(__x: c_longdouble) c_longdouble;
pub extern fn asinl(__x: c_longdouble) c_longdouble;
pub extern fn __asinl(__x: c_longdouble) c_longdouble;
pub extern fn atanl(__x: c_longdouble) c_longdouble;
pub extern fn __atanl(__x: c_longdouble) c_longdouble;
pub extern fn atan2l(__y: c_longdouble, __x: c_longdouble) c_longdouble;
pub extern fn __atan2l(__y: c_longdouble, __x: c_longdouble) c_longdouble;
pub extern fn cosl(__x: c_longdouble) c_longdouble;
pub extern fn __cosl(__x: c_longdouble) c_longdouble;
pub extern fn sinl(__x: c_longdouble) c_longdouble;
pub extern fn __sinl(__x: c_longdouble) c_longdouble;
pub extern fn tanl(__x: c_longdouble) c_longdouble;
pub extern fn __tanl(__x: c_longdouble) c_longdouble;
pub extern fn coshl(__x: c_longdouble) c_longdouble;
pub extern fn __coshl(__x: c_longdouble) c_longdouble;
pub extern fn sinhl(__x: c_longdouble) c_longdouble;
pub extern fn __sinhl(__x: c_longdouble) c_longdouble;
pub extern fn tanhl(__x: c_longdouble) c_longdouble;
pub extern fn __tanhl(__x: c_longdouble) c_longdouble;
pub extern fn acoshl(__x: c_longdouble) c_longdouble;
pub extern fn __acoshl(__x: c_longdouble) c_longdouble;
pub extern fn asinhl(__x: c_longdouble) c_longdouble;
pub extern fn __asinhl(__x: c_longdouble) c_longdouble;
pub extern fn atanhl(__x: c_longdouble) c_longdouble;
pub extern fn __atanhl(__x: c_longdouble) c_longdouble;
pub extern fn expl(__x: c_longdouble) c_longdouble;
pub extern fn __expl(__x: c_longdouble) c_longdouble;
pub extern fn frexpl(__x: c_longdouble, __exponent: ?[*]c_int) c_longdouble;
pub extern fn __frexpl(__x: c_longdouble, __exponent: ?[*]c_int) c_longdouble;
pub extern fn ldexpl(__x: c_longdouble, __exponent: c_int) c_longdouble;
pub extern fn __ldexpl(__x: c_longdouble, __exponent: c_int) c_longdouble;
pub extern fn logl(__x: c_longdouble) c_longdouble;
pub extern fn __logl(__x: c_longdouble) c_longdouble;
pub extern fn log10l(__x: c_longdouble) c_longdouble;
pub extern fn __log10l(__x: c_longdouble) c_longdouble;
pub extern fn modfl(__x: c_longdouble, __iptr: ?[*]c_longdouble) c_longdouble;
pub extern fn __modfl(__x: c_longdouble, __iptr: ?[*]c_longdouble) c_longdouble;
pub extern fn expm1l(__x: c_longdouble) c_longdouble;
pub extern fn __expm1l(__x: c_longdouble) c_longdouble;
pub extern fn log1pl(__x: c_longdouble) c_longdouble;
pub extern fn __log1pl(__x: c_longdouble) c_longdouble;
pub extern fn logbl(__x: c_longdouble) c_longdouble;
pub extern fn __logbl(__x: c_longdouble) c_longdouble;
pub extern fn exp2l(__x: c_longdouble) c_longdouble;
pub extern fn __exp2l(__x: c_longdouble) c_longdouble;
pub extern fn log2l(__x: c_longdouble) c_longdouble;
pub extern fn __log2l(__x: c_longdouble) c_longdouble;
pub extern fn powl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __powl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn sqrtl(__x: c_longdouble) c_longdouble;
pub extern fn __sqrtl(__x: c_longdouble) c_longdouble;
pub extern fn hypotl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __hypotl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn cbrtl(__x: c_longdouble) c_longdouble;
pub extern fn __cbrtl(__x: c_longdouble) c_longdouble;
pub extern fn ceill(__x: c_longdouble) c_longdouble;
pub extern fn __ceill(__x: c_longdouble) c_longdouble;
pub extern fn fabsl(__x: c_longdouble) c_longdouble;
pub extern fn __fabsl(__x: c_longdouble) c_longdouble;
pub extern fn floorl(__x: c_longdouble) c_longdouble;
pub extern fn __floorl(__x: c_longdouble) c_longdouble;
pub extern fn fmodl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __fmodl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __isinfl(__value: c_longdouble) c_int;
pub extern fn __finitel(__value: c_longdouble) c_int;
pub extern fn isinfl(__value: c_longdouble) c_int;
pub extern fn finitel(__value: c_longdouble) c_int;
pub extern fn dreml(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __dreml(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn significandl(__x: c_longdouble) c_longdouble;
pub extern fn __significandl(__x: c_longdouble) c_longdouble;
pub extern fn copysignl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __copysignl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn nanl(__tagb: ?[*]const u8) c_longdouble;
pub extern fn __nanl(__tagb: ?[*]const u8) c_longdouble;
pub extern fn __isnanl(__value: c_longdouble) c_int;
pub extern fn isnanl(__value: c_longdouble) c_int;
pub extern fn j0l(arg0: c_longdouble) c_longdouble;
pub extern fn __j0l(arg0: c_longdouble) c_longdouble;
pub extern fn j1l(arg0: c_longdouble) c_longdouble;
pub extern fn __j1l(arg0: c_longdouble) c_longdouble;
pub extern fn jnl(arg0: c_int, arg1: c_longdouble) c_longdouble;
pub extern fn __jnl(arg0: c_int, arg1: c_longdouble) c_longdouble;
pub extern fn y0l(arg0: c_longdouble) c_longdouble;
pub extern fn __y0l(arg0: c_longdouble) c_longdouble;
pub extern fn y1l(arg0: c_longdouble) c_longdouble;
pub extern fn __y1l(arg0: c_longdouble) c_longdouble;
pub extern fn ynl(arg0: c_int, arg1: c_longdouble) c_longdouble;
pub extern fn __ynl(arg0: c_int, arg1: c_longdouble) c_longdouble;
pub extern fn erfl(arg0: c_longdouble) c_longdouble;
pub extern fn __erfl(arg0: c_longdouble) c_longdouble;
pub extern fn erfcl(arg0: c_longdouble) c_longdouble;
pub extern fn __erfcl(arg0: c_longdouble) c_longdouble;
pub extern fn lgammal(arg0: c_longdouble) c_longdouble;
pub extern fn __lgammal(arg0: c_longdouble) c_longdouble;
pub extern fn tgammal(arg0: c_longdouble) c_longdouble;
pub extern fn __tgammal(arg0: c_longdouble) c_longdouble;
pub extern fn gammal(arg0: c_longdouble) c_longdouble;
pub extern fn __gammal(arg0: c_longdouble) c_longdouble;
pub extern fn lgammal_r(arg0: c_longdouble, __signgamp: ?[*]c_int) c_longdouble;
pub extern fn __lgammal_r(arg0: c_longdouble, __signgamp: ?[*]c_int) c_longdouble;
pub extern fn rintl(__x: c_longdouble) c_longdouble;
pub extern fn __rintl(__x: c_longdouble) c_longdouble;
pub extern fn nextafterl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __nextafterl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn nexttowardl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __nexttowardl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn remainderl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __remainderl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn scalbnl(__x: c_longdouble, __n: c_int) c_longdouble;
pub extern fn __scalbnl(__x: c_longdouble, __n: c_int) c_longdouble;
pub extern fn ilogbl(__x: c_longdouble) c_int;
pub extern fn __ilogbl(__x: c_longdouble) c_int;
pub extern fn scalblnl(__x: c_longdouble, __n: c_long) c_longdouble;
pub extern fn __scalblnl(__x: c_longdouble, __n: c_long) c_longdouble;
pub extern fn nearbyintl(__x: c_longdouble) c_longdouble;
pub extern fn __nearbyintl(__x: c_longdouble) c_longdouble;
pub extern fn roundl(__x: c_longdouble) c_longdouble;
pub extern fn __roundl(__x: c_longdouble) c_longdouble;
pub extern fn truncl(__x: c_longdouble) c_longdouble;
pub extern fn __truncl(__x: c_longdouble) c_longdouble;
pub extern fn remquol(__x: c_longdouble, __y: c_longdouble, __quo: ?[*]c_int) c_longdouble;
pub extern fn __remquol(__x: c_longdouble, __y: c_longdouble, __quo: ?[*]c_int) c_longdouble;
pub extern fn lrintl(__x: c_longdouble) c_long;
pub extern fn __lrintl(__x: c_longdouble) c_long;
pub extern fn llrintl(__x: c_longdouble) c_longlong;
pub extern fn __llrintl(__x: c_longdouble) c_longlong;
pub extern fn lroundl(__x: c_longdouble) c_long;
pub extern fn __lroundl(__x: c_longdouble) c_long;
pub extern fn llroundl(__x: c_longdouble) c_longlong;
pub extern fn __llroundl(__x: c_longdouble) c_longlong;
pub extern fn fdiml(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __fdiml(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn fmaxl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __fmaxl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn fminl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __fminl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __fpclassifyl(__value: c_longdouble) c_int;
pub extern fn __signbitl(__value: c_longdouble) c_int;
pub extern fn fmal(__x: c_longdouble, __y: c_longdouble, __z: c_longdouble) c_longdouble;
pub extern fn __fmal(__x: c_longdouble, __y: c_longdouble, __z: c_longdouble) c_longdouble;
pub extern fn scalbl(__x: c_longdouble, __n: c_longdouble) c_longdouble;
pub extern fn __scalbl(__x: c_longdouble, __n: c_longdouble) c_longdouble;
pub extern var signgam: c_int;
pub const FP_NAN = 0;
pub const FP_INFINITE = 1;
pub const FP_ZERO = 2;
pub const FP_SUBNORMAL = 3;
pub const FP_NORMAL = 4;
pub const _IEEE_ = -1;
pub const _SVID_ = 0;
pub const _XOPEN_ = 1;
pub const _POSIX_ = 2;
pub const _ISOC_ = 3;
pub const _LIB_VERSION_TYPE = extern enum {
    _IEEE_ = -1,
    _SVID_ = 0,
    _XOPEN_ = 1,
    _POSIX_ = 2,
    _ISOC_ = 3,
};
pub extern var _LIB_VERSION: _LIB_VERSION_TYPE;
pub const struct_exception = extern struct {
    type: c_int,
    name: ?[*]u8,
    arg1: f64,
    arg2: f64,
    retval: f64,
};
pub extern fn matherr(__exc: ?[*]struct_exception) c_int;
pub const vec2 = [2]f32;
pub fn vec2_add(r: ?[*]f32, a: ?[*]const f32, b: ?[*]const f32) void {
    var i: c_int = undefined;
    {
        i = 0;
        while (i < 2) : (i += 1) r[i] = (a[i] + b[i]);
    }
}
pub fn vec2_sub(r: ?[*]f32, a: ?[*]const f32, b: ?[*]const f32) void {
    var i: c_int = undefined;
    {
        i = 0;
        while (i < 2) : (i += 1) r[i] = (a[i] - b[i]);
    }
}
pub fn vec2_scale(r: ?[*]f32, v: ?[*]const f32, s: f32) void {
    var i: c_int = undefined;
    {
        i = 0;
        while (i < 2) : (i += 1) r[i] = (v[i] * s);
    }
}
pub fn vec2_len(v: ?[*]const f32) f32 {
    return sqrtf(vec2_mul_inner(v, v));
}
pub fn vec2_min(r: ?[*]f32, a: ?[*]f32, b: ?[*]f32) void {
    var i: c_int = undefined;
    {
        i = 0;
        while (i < 2) : (i += 1) r[i] = if (a[i] < b[i]) a[i] else b[i];
    }
}
pub fn vec2_max(r: ?[*]f32, a: ?[*]f32, b: ?[*]f32) void {
    var i: c_int = undefined;
    {
        i = 0;
        while (i < 2) : (i += 1) r[i] = if (a[i] > b[i]) a[i] else b[i];
    }
}
pub const vec3 = [3]f32;
pub fn vec3_add(r: ?[*]f32, a: ?[*]const f32, b: ?[*]const f32) void {
    var i: c_int = undefined;
    {
        i = 0;
        while (i < 3) : (i += 1) r[i] = (a[i] + b[i]);
    }
}
pub fn vec3_sub(r: ?[*]f32, a: ?[*]const f32, b: ?[*]const f32) void {
    var i: c_int = undefined;
    {
        i = 0;
        while (i < 3) : (i += 1) r[i] = (a[i] - b[i]);
    }
}
pub fn vec3_scale(r: ?[*]f32, v: ?[*]const f32, s: f32) void {
    var i: c_int = undefined;
    {
        i = 0;
        while (i < 3) : (i += 1) r[i] = (v[i] * s);
    }
}
pub fn vec3_len(v: ?[*]const f32) f32 {
    return sqrtf(vec3_mul_inner(v, v));
}
pub fn vec3_min(r: ?[*]f32, a: ?[*]f32, b: ?[*]f32) void {
    var i: c_int = undefined;
    {
        i = 0;
        while (i < 3) : (i += 1) r[i] = if (a[i] < b[i]) a[i] else b[i];
    }
}
pub fn vec3_max(r: ?[*]f32, a: ?[*]f32, b: ?[*]f32) void {
    var i: c_int = undefined;
    {
        i = 0;
        while (i < 3) : (i += 1) r[i] = if (a[i] > b[i]) a[i] else b[i];
    }
}
pub const vec4 = [4]f32;
pub fn vec4_add(r: ?[*]f32, a: ?[*]const f32, b: ?[*]const f32) void {
    var i: c_int = undefined;
    {
        i = 0;
        while (i < 4) : (i += 1) r[i] = (a[i] + b[i]);
    }
}
pub fn vec4_sub(r: ?[*]f32, a: ?[*]const f32, b: ?[*]const f32) void {
    var i: c_int = undefined;
    {
        i = 0;
        while (i < 4) : (i += 1) r[i] = (a[i] - b[i]);
    }
}
pub fn vec4_scale(r: ?[*]f32, v: ?[*]const f32, s: f32) void {
    var i: c_int = undefined;
    {
        i = 0;
        while (i < 4) : (i += 1) r[i] = (v[i] * s);
    }
}
pub fn vec4_len(v: ?[*]const f32) f32 {
    return sqrtf(vec4_mul_inner(v, v));
}
pub fn vec4_min(r: ?[*]f32, a: ?[*]f32, b: ?[*]f32) void {
    var i: c_int = undefined;
    {
        i = 0;
        while (i < 4) : (i += 1) r[i] = if (a[i] < b[i]) a[i] else b[i];
    }
}
pub fn vec4_max(r: ?[*]f32, a: ?[*]f32, b: ?[*]f32) void {
    var i: c_int = undefined;
    {
        i = 0;
        while (i < 4) : (i += 1) r[i] = if (a[i] > b[i]) a[i] else b[i];
    }
}
pub fn vec3_mul_cross(r: ?[*]f32, a: ?[*]const f32, b: ?[*]const f32) void {
    r[0] = ((a[1] * b[2]) - (a[2] * b[1]));
    r[1] = ((a[2] * b[0]) - (a[0] * b[2]));
    r[2] = ((a[0] * b[1]) - (a[1] * b[0]));
}
pub const mat4x4 = [4]vec4;
pub fn mat4x4_dup(M: ?[*]vec4, N: ?[*]vec4) void {
    var i: c_int = undefined;
    var j: c_int = undefined;
    {
        i = 0;
        while (i < 4) : (i += 1) {
            j = 0;
            while (j < 4) : (j += 1) M[i][j] = N[i][j];
        }
    }
}
pub fn mat4x4_row(r: ?[*]f32, M: ?[*]vec4, i: c_int) void {
    var k: c_int = undefined;
    {
        k = 0;
        while (k < 4) : (k += 1) r[k] = M[k][i];
    }
}
pub fn mat4x4_col(r: ?[*]f32, M: ?[*]vec4, i: c_int) void {
    var k: c_int = undefined;
    {
        k = 0;
        while (k < 4) : (k += 1) r[k] = M[i][k];
    }
}
pub fn mat4x4_transpose(M: ?[*]vec4, N: ?[*]vec4) void {
    var i: c_int = undefined;
    var j: c_int = undefined;
    {
        j = 0;
        while (j < 4) : (j += 1) {
            i = 0;
            while (i < 4) : (i += 1) M[i][j] = N[j][i];
        }
    }
}
pub fn mat4x4_add(M: ?[*]vec4, a: ?[*]vec4, b: ?[*]vec4) void {
    var i: c_int = undefined;
    {
        i = 0;
        while (i < 4) : (i += 1) vec4_add(M[i], @ptrCast(?[*]const f32, a[i]), @ptrCast(?[*]const f32, b[i]));
    }
}
pub fn mat4x4_sub(M: ?[*]vec4, a: ?[*]vec4, b: ?[*]vec4) void {
    var i: c_int = undefined;
    {
        i = 0;
        while (i < 4) : (i += 1) vec4_sub(M[i], @ptrCast(?[*]const f32, a[i]), @ptrCast(?[*]const f32, b[i]));
    }
}
pub fn mat4x4_scale(M: ?[*]vec4, a: ?[*]vec4, k: f32) void {
    var i: c_int = undefined;
    {
        i = 0;
        while (i < 4) : (i += 1) vec4_scale(M[i], @ptrCast(?[*]const f32, a[i]), k);
    }
}
pub fn mat4x4_scale_aniso(M: ?[*]vec4, a: ?[*]vec4, x: f32, y: f32, z: f32) void {
    var i: c_int = undefined;
    vec4_scale(M[0], @ptrCast(?[*]const f32, a[0]), x);
    vec4_scale(M[1], @ptrCast(?[*]const f32, a[1]), y);
    vec4_scale(M[2], @ptrCast(?[*]const f32, a[2]), z);
    {
        i = 0;
        while (i < 4) : (i += 1) {
            M[3][i] = a[3][i];
        }
    }
}
pub fn mat4x4_translate(T: ?[*]vec4, x: f32, y: f32, z: f32) void {
    mat4x4_identity(T);
    T[3][0] = x;
    T[3][1] = y;
    T[3][2] = z;
}
pub const quat = [4]f32;
pub fn quat_add(r: ?[*]f32, a: ?[*]f32, b: ?[*]f32) void {
    var i: c_int = undefined;
    {
        i = 0;
        while (i < 4) : (i += 1) r[i] = (a[i] + b[i]);
    }
}
pub fn quat_sub(r: ?[*]f32, a: ?[*]f32, b: ?[*]f32) void {
    var i: c_int = undefined;
    {
        i = 0;
        while (i < 4) : (i += 1) r[i] = (a[i] - b[i]);
    }
}
pub fn quat_mul(r: ?[*]f32, p: ?[*]f32, q: ?[*]f32) void {
    var w: vec3 = undefined;
    vec3_mul_cross(r, @ptrCast(?[*]const f32, p), @ptrCast(?[*]const f32, q));
    vec3_scale(w, @ptrCast(?[*]const f32, p), q[3]);
    vec3_add(r, @ptrCast(?[*]const f32, r), @ptrCast(?[*]const f32, w));
    vec3_scale(w, @ptrCast(?[*]const f32, q), p[3]);
    vec3_add(r, @ptrCast(?[*]const f32, r), @ptrCast(?[*]const f32, w));
    r[3] = ((p[3] * q[3]) - vec3_mul_inner(@ptrCast(?[*]const f32, p), @ptrCast(?[*]const f32, q)));
}
pub fn quat_scale(r: ?[*]f32, v: ?[*]f32, s: f32) void {
    var i: c_int = undefined;
    {
        i = 0;
        while (i < 4) : (i += 1) r[i] = (v[i] * s);
    }
}
pub fn quat_conj(r: ?[*]f32, q: ?[*]f32) void {
    var i: c_int = undefined;
    {
        i = 0;
        while (i < 3) : (i += 1) r[i] = (-q[i]);
    }
    r[3] = q[3];
}
pub const __GCC_ATOMIC_TEST_AND_SET_TRUEVAL = 1;
pub const _STDC_PREDEF_H = 1;
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
pub const _MATH_H = 1;
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
pub const M_PI_2 = 1.570796;
pub const __USING_NAMESPACE_C99 = name;
pub const __ptr_t = [*]void;
pub const __WCHAR_WIDTH__ = 32;
pub const M_LOG10E = 0.434294;
pub const __STDC_IEC_559_COMPLEX__ = 1;
pub const __USE_MISC = 1;
pub const __PTRDIFF_FMTd__ = c"ld";
pub const __DBL_MIN_EXP__ = -1021;
pub const __FLT_EVAL_METHOD__ = 0;
pub const __SSE_MATH__ = 1;
pub const __UINT_FAST8_FMTo__ = c"hho";
pub const _Mdouble_BEGIN_NAMESPACE = __BEGIN_NAMESPACE_STD;
pub const __UINT_LEAST64_MAX__ = c_ulong(18446744073709551615);
pub const M_1_PI = 0.318310;
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
pub const _SYS_CDEFS_H = 1;
pub const _ATFILE_SOURCE = 1;
pub const __WINT_MAX__ = c_uint(4294967295);
pub const __LDBL_MAX_EXP__ = 16384;
pub const __USE_POSIX199309 = 1;
pub const __STDC_ISO_10646__ = c_long(201605);
pub const __NO_MATH_INLINES = 1;
pub const __WCHAR_TYPE__ = int;
pub const __LONG_MAX__ = c_long(9223372036854775807);
pub const __STDC_HOSTED__ = 1;
pub const __INT_FAST16_FMTi__ = c"hi";
pub const __PTRDIFF_WIDTH__ = 64;
pub const __INT_LEAST32_TYPE__ = int;
pub const __SCHAR_MAX__ = 127;
pub const __USE_POSIX2 = 1;
pub const __LDBL_DENORM_MIN__ = 0.000000;
pub const __FLT16_MIN_EXP__ = -14;
pub const __USE_XOPEN2K = 1;
pub const __USE_FORTIFY_LEVEL = 0;
pub const __INT64_C_SUFFIX__ = L;
pub const __ELF__ = 1;
pub const __LDBL_MANT_DIG__ = 64;
pub const M_LOG2E = 1.442695;
pub const __USE_XOPEN2K8 = 1;
pub const __CLANG_ATOMIC_INT_LOCK_FREE = 2;
pub const __SIZEOF_PTRDIFF_T__ = 8;
pub const __SIG_ATOMIC_MAX__ = 2147483647;
pub const __USE_ATFILE = 1;
pub const __UINT64_FMTX__ = c"lX";
pub const __UINT64_MAX__ = c_ulong(18446744073709551615);
pub const __DBL_MANT_DIG__ = 53;
pub const __FLT_DECIMAL_DIG__ = 9;
pub const __INT_LEAST32_MAX__ = 2147483647;
pub const __DBL_DIG__ = 15;
pub const __ATOMIC_ACQUIRE = 2;
pub const M_SQRT1_2 = 0.707107;
pub const __OPENCL_MEMORY_SCOPE_WORK_GROUP = 1;
pub const __USE_ISOC95 = 1;
pub const SING = 2;
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
pub const _BITS_LIBM_SIMD_DECL_STUBS_H = 1;
pub const __UINT_FAST8_FMTu__ = c"hhu";
pub const __UINT_LEAST8_FMTu__ = c"hhu";
pub const __UINT_LEAST64_FMTo__ = c"lo";
pub const __UINT_LEAST8_MAX__ = 255;
pub const __warnattr = msg;
pub const __SIZEOF_WCHAR_T__ = 4;
pub const __LDBL_MAX__ = inf;
pub const __UINT16_MAX__ = 65535;
pub const M_2_SQRTPI = 1.128379;
pub const _LP64 = 1;
pub const M_PI_4 = 0.785398;
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
pub const _POSIX_SOURCE = 1;
pub const __gnu_linux__ = 1;
pub const __INT_FAST32_MAX__ = 2147483647;
pub const __UINTMAX_FMTu__ = c"lu";
pub const __FLT_RADIX__ = 2;
pub const __GLIBC_MINOR__ = 24;
pub const __FLT16_HAS_INFINITY__ = 1;
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 = 1;
pub const __GCC_ATOMIC_INT_LOCK_FREE = 2;
pub const __OPENCL_MEMORY_SCOPE_ALL_SVM_DEVICES = 3;
pub const __FLT16_DECIMAL_DIG__ = 5;
pub const __PRAGMA_REDEFINE_EXTNAME = 1;
pub const __INT_FAST8_FMTd__ = c"hhd";
pub const __INT32_TYPE__ = int;
pub const __USE_POSIX199506 = 1;
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
pub const _DEFAULT_SOURCE = 1;
pub const __LDBL_DECIMAL_DIG__ = 21;
pub const __UINT_LEAST64_FMTX__ = c"lX";
pub const __clang_minor__ = 0;
pub const __LDBL_REDIR_DECL = name;
pub const __SIZEOF_FLOAT128__ = 16;
pub const M_2_PI = 0.636620;
pub const __UINT_FAST64_FMTo__ = c"lo";
pub const __SIZE_FMTx__ = c"lx";
pub const __DBL_MAX__ = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878;
pub const __DBL_EPSILON__ = 0.000000;
pub const __UINT64_FMTx__ = c"lx";
pub const PLOSS = 6;
pub const __CHAR_BIT__ = 8;
pub const __INT16_FMTi__ = c"hi";
pub const _DEBUG = 1;
pub const __GNUC_MINOR__ = 2;
pub const __restrict_arr = __restrict;
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
pub const FP_ILOGBNAN = if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Pointer) @ptrCast(-2147483647, -1) else if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Int) @intToPtr(-2147483647, -1) else (-2147483647)(-1);
pub const _Mdouble_ = double;
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 = 1;
pub const M_LN2 = 0.693147;
pub const __UINT32_C_SUFFIX__ = U;
pub const __INT32_MAX__ = 2147483647;
pub const __GCC_ATOMIC_CHAR_LOCK_FREE = 2;
pub const __INTMAX_WIDTH__ = 64;
pub const __CLANG_ATOMIC_BOOL_LOCK_FREE = 2;
pub const __USE_POSIX = 1;
pub const __SIZE_FMTo__ = c"lo";
pub const __DBL_HAS_QUIET_NAN__ = 1;
pub const __INT_FAST8_FMTi__ = c"hhi";
pub const __UINT_LEAST32_FMTo__ = c"o";
pub const MATH_ERRNO = 1;
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
pub const __MATH_DECLARING_DOUBLE = 1;
pub const __STDC_NO_THREADS__ = 1;
pub const __CLANG_ATOMIC_LONG_LOCK_FREE = 2;
pub const __USING_NAMESPACE_STD = name;
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
pub const __STDC_IEC_559__ = 1;
pub const M_LN10 = 2.302585;
pub const __INT_FAST16_MAX__ = 32767;
pub const __USE_ISOC99 = 1;
pub const __INTPTR_MAX__ = c_long(9223372036854775807);
pub const __CLANG_ATOMIC_CHAR16_T_LOCK_FREE = 2;
pub const __UINT64_FMTu__ = c"lu";
pub const __BYTE_ORDER__ = __ORDER_LITTLE_ENDIAN__;
pub const __SSE2__ = 1;
pub const __INT_MAX__ = 2147483647;
pub const UNDERFLOW = 4;
pub const __INTMAX_FMTi__ = c"li";
pub const __DBL_DENORM_MIN__ = 0.000000;
pub const __clang_major__ = 7;
pub const __FLT16_MANT_DIG__ = 11;
pub const __GNUC__ = 4;
pub const __UINT32_MAX__ = c_uint(4294967295);
pub const DOMAIN = 1;
pub const _POSIX_C_SOURCE = c_long(200809);
pub const __FLT_DENORM_MIN__ = 0.000000;
pub const __DBL_MAX_EXP__ = 1024;
pub const __INT8_FMTi__ = c"hhi";
pub const __UINT_LEAST16_MAX__ = 65535;
pub const X_TLOSS = 14148475504056880.000000;
pub const __LDBL_HAS_DENORM__ = 1;
pub const __FLT16_MIN_10_EXP__ = -13;
pub const __LDBL_HAS_QUIET_NAN__ = 1;
pub const __UINT_FAST8_MAX__ = 255;
pub const __DBL_MIN_10_EXP__ = -307;
pub const FP_ILOGB0 = if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Pointer) @ptrCast(-2147483647, -1) else if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Int) @intToPtr(-2147483647, -1) else (-2147483647)(-1);
pub const __UINT8_FMTu__ = c"hhu";
pub const MATH_ERREXCEPT = 2;
pub const NAN = if (@typeId(@typeOf(c"")) == @import("builtin").TypeId.Pointer) @ptrCast(__builtin_nanf, c"") else if (@typeId(@typeOf(c"")) == @import("builtin").TypeId.Int) @intToPtr(__builtin_nanf, c"") else __builtin_nanf(c"");
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
pub const M_SQRT2 = 1.414214;
pub const __UINT8_MAX__ = 255;
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 = 1;
pub const __UINT32_FMTx__ = c"x";
pub const __UINT16_FMTo__ = c"ho";
pub const __OPENCL_MEMORY_SCOPE_DEVICE = 2;
pub const __UINT32_FMTu__ = c"u";
pub const __SIZEOF_POINTER__ = 8;
pub const __SIZE_MAX__ = c_ulong(18446744073709551615);
pub const __unix = 1;
pub const _MATH_H_MATHDEF = 1;
pub const __INT_FAST16_FMTd__ = c"hd";
pub const unix = 1;
pub const __UINT_LEAST32_FMTu__ = c"u";
pub const __FLT_MAX__ = 340282346999999984391321947108527833088.000000;
pub const __USE_ISOC11 = 1;
pub const __GCC_ATOMIC_WCHAR_T_LOCK_FREE = 2;
pub const __k8__ = 1;
pub const __ATOMIC_CONSUME = 1;
pub const __tune_k8__ = 1;
pub const __unix__ = 1;
pub const __x86_64__ = 1;
pub const __LDBL_HAS_INFINITY__ = 1;
pub const __WORDSIZE_TIME64_COMPAT32 = 1;
pub const __UINTMAX_FMTx__ = c"lx";
pub const __UINT64_C_SUFFIX__ = UL;
pub const __GNU_LIBRARY__ = 6;
pub const __FLT_MIN_10_EXP__ = -37;
pub const __INT_LEAST16_MAX__ = 32767;
pub const __UINT32_FMTo__ = c"o";
pub const __UINTPTR_FMTo__ = c"lo";
pub const __INT_LEAST16_FMTd__ = c"hd";
pub const __UINTPTR_FMTx__ = c"lx";
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 = 1;
pub const __INT_LEAST64_FMTd__ = c"ld";
pub const __INT_LEAST16_TYPE__ = short;
pub const __attribute_alloc_size__ = params;
pub const __ORDER_BIG_ENDIAN__ = 4321;
pub const __LDBL_MIN_10_EXP__ = -4931;
pub const __INT_LEAST8_MAX__ = 127;
pub const quat_norm = vec4_norm;
pub const __SIZEOF_INT__ = 4;
pub const OVERFLOW = 3;
pub const __USE_POSIX_IMPLICITLY = 1;
pub const __GCC_ATOMIC_POINTER_LOCK_FREE = 2;
pub const __amd64 = 1;
pub const __OBJC_BOOL_IS_BOOL = 0;
pub const M_E = 2.718282;
pub const __LDBL_MAX_10_EXP__ = 4932;
pub const __SIZEOF_INT128__ = 16;
pub const __UINT_FAST8_FMTx__ = c"hhx";
pub const __linux = 1;
pub const __UINT16_FMTx__ = c"hx";
pub const __UINTPTR_FMTu__ = c"lu";
pub const __UINT_LEAST16_FMTX__ = c"hX";
pub const _Mfloat_ = float;
pub const __amd64__ = 1;
pub const __UINT_FAST32_FMTo__ = c"o";
pub const __linux__ = 1;
pub const __clang__ = 1;
pub const HUGE = 340282346999999984391321947108527833088.000000;
pub const __LP64__ = 1;
pub const TLOSS = 5;
pub const __SYSCALL_WORDSIZE = 64;
pub const __PTRDIFF_FMTi__ = c"li";
pub const _Mdouble_END_NAMESPACE = __END_NAMESPACE_STD;
pub const __LDBL_DIG__ = 18;
pub const __GCC_ATOMIC_CHAR32_T_LOCK_FREE = 2;
pub const M_PI = 3.141593;
pub const __UINT64_FMTo__ = c"lo";
pub const __INT_FAST32_FMTd__ = c"d";
pub const __ATOMIC_ACQ_REL = 4;
pub const __LONG_LONG_MAX__ = c_longlong(9223372036854775807);
pub const __OPENCL_MEMORY_SCOPE_SUB_GROUP = 4;
pub const __MATH_DECLARE_LDOUBLE = 1;
pub const __GLIBC__ = 2;
pub const __INTMAX_MAX__ = c_long(9223372036854775807);
pub const __UINT_LEAST32_FMTx__ = c"x";
pub const __WORDSIZE = 64;
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
pub const exception = struct_exception;
