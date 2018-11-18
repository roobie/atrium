pub extern fn SDL_GetPlatform() ?[*]const u8;
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
pub const u_char = __u_char;
pub const u_short = __u_short;
pub const u_int = __u_int;
pub const u_long = __u_long;
pub const quad_t = __quad_t;
pub const u_quad_t = __u_quad_t;
pub const fsid_t = __fsid_t;
pub const loff_t = __loff_t;
pub const ino_t = __ino_t;
pub const dev_t = __dev_t;
pub const gid_t = __gid_t;
pub const mode_t = __mode_t;
pub const nlink_t = __nlink_t;
pub const uid_t = __uid_t;
pub const off_t = __off_t;
pub const pid_t = __pid_t;
pub const id_t = __id_t;
pub const daddr_t = __daddr_t;
pub const caddr_t = __caddr_t;
pub const key_t = __key_t;
pub const clock_t = __clock_t;
pub const time_t = __time_t;
pub const clockid_t = __clockid_t;
pub const timer_t = __timer_t;
pub const ulong = c_ulong;
pub const ushort = c_ushort;
pub const uint = c_uint;
pub const u_int8_t = u8;
pub const u_int16_t = c_ushort;
pub const u_int32_t = c_uint;
pub const u_int64_t = c_ulong;
pub const register_t = c_long;
pub const __sig_atomic_t = c_int;
pub const __sigset_t = extern struct {
    __val: [16]c_ulong,
};
pub const sigset_t = __sigset_t;
pub const struct_timespec = extern struct {
    tv_sec: __time_t,
    tv_nsec: __syscall_slong_t,
};
pub const struct_timeval = extern struct {
    tv_sec: __time_t,
    tv_usec: __suseconds_t,
};
pub const suseconds_t = __suseconds_t;
pub const __fd_mask = c_long;
pub const fd_set = extern struct {
    __fds_bits: [16]__fd_mask,
};
pub const fd_mask = __fd_mask;
pub extern fn select(__nfds: c_int, noalias __readfds: ?[*]fd_set, noalias __writefds: ?[*]fd_set, noalias __exceptfds: ?[*]fd_set, noalias __timeout: ?[*]struct_timeval) c_int;
pub extern fn pselect(__nfds: c_int, noalias __readfds: ?[*]fd_set, noalias __writefds: ?[*]fd_set, noalias __exceptfds: ?[*]fd_set, noalias __timeout: ?[*]const struct_timespec, noalias __sigmask: ?[*]const __sigset_t) c_int;
pub extern fn gnu_dev_major(__dev: c_ulonglong) c_uint;
pub extern fn gnu_dev_minor(__dev: c_ulonglong) c_uint;
pub extern fn gnu_dev_makedev(__major: c_uint, __minor: c_uint) c_ulonglong;
pub const blksize_t = __blksize_t;
pub const blkcnt_t = __blkcnt_t;
pub const fsblkcnt_t = __fsblkcnt_t;
pub const fsfilcnt_t = __fsfilcnt_t;
pub const pthread_t = c_ulong;
pub const union_pthread_attr_t = extern union {
    __size: [56]u8,
    __align: c_long,
};
pub const pthread_attr_t = union_pthread_attr_t;
pub const struct___pthread_internal_list = extern struct {
    __prev: ?[*]struct___pthread_internal_list,
    __next: ?[*]struct___pthread_internal_list,
};
pub const __pthread_list_t = struct___pthread_internal_list;
pub const struct___pthread_mutex_s = extern struct {
    __lock: c_int,
    __count: c_uint,
    __owner: c_int,
    __nusers: c_uint,
    __kind: c_int,
    __spins: c_short,
    __elision: c_short,
    __list: __pthread_list_t,
};
pub const pthread_mutex_t = extern union {
    __data: struct___pthread_mutex_s,
    __size: [40]u8,
    __align: c_long,
};
pub const pthread_mutexattr_t = extern union {
    __size: [4]u8,
    __align: c_int,
};
pub const pthread_cond_t = extern union {
    __data: extern struct {
        __lock: c_int,
        __futex: c_uint,
        __total_seq: c_ulonglong,
        __wakeup_seq: c_ulonglong,
        __woken_seq: c_ulonglong,
        __mutex: ?*c_void,
        __nwaiters: c_uint,
        __broadcast_seq: c_uint,
    },
    __size: [48]u8,
    __align: c_longlong,
};
pub const pthread_condattr_t = extern union {
    __size: [4]u8,
    __align: c_int,
};
pub const pthread_key_t = c_uint;
pub const pthread_once_t = c_int;
pub const pthread_rwlock_t = extern union {
    __data: extern struct {
        __lock: c_int,
        __nr_readers: c_uint,
        __readers_wakeup: c_uint,
        __writer_wakeup: c_uint,
        __nr_readers_queued: c_uint,
        __nr_writers_queued: c_uint,
        __writer: c_int,
        __shared: c_int,
        __rwelision: i8,
        __pad1: [7]u8,
        __pad2: c_ulong,
        __flags: c_uint,
    },
    __size: [56]u8,
    __align: c_long,
};
pub const pthread_rwlockattr_t = extern union {
    __size: [8]u8,
    __align: c_long,
};
pub const pthread_spinlock_t = c_int;
pub const pthread_barrier_t = extern union {
    __size: [32]u8,
    __align: c_long,
};
pub const pthread_barrierattr_t = extern union {
    __size: [4]u8,
    __align: c_int,
};
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
pub const wchar_t = c_int;
pub const P_ALL = 0;
pub const P_PID = 1;
pub const P_PGID = 2;
pub const idtype_t = extern enum {
    P_ALL = 0,
    P_PID = 1,
    P_PGID = 2,
};
pub const div_t = extern struct {
    quot: c_int,
    rem: c_int,
};
pub const ldiv_t = extern struct {
    quot: c_long,
    rem: c_long,
};
pub const lldiv_t = extern struct {
    quot: c_longlong,
    rem: c_longlong,
};
pub extern fn __ctype_get_mb_cur_max() usize;
pub extern fn atof(__nptr: ?[*]const u8) f64;
pub extern fn atoi(__nptr: ?[*]const u8) c_int;
pub extern fn atol(__nptr: ?[*]const u8) c_long;
pub extern fn atoll(__nptr: ?[*]const u8) c_longlong;
pub extern fn strtod(__nptr: ?[*]const u8, __endptr: ?[*](?[*]u8)) f64;
pub extern fn strtof(__nptr: ?[*]const u8, __endptr: ?[*](?[*]u8)) f32;
pub extern fn strtold(__nptr: ?[*]const u8, __endptr: ?[*](?[*]u8)) c_longdouble;
pub extern fn strtol(__nptr: ?[*]const u8, __endptr: ?[*](?[*]u8), __base: c_int) c_long;
pub extern fn strtoul(__nptr: ?[*]const u8, __endptr: ?[*](?[*]u8), __base: c_int) c_ulong;
pub extern fn strtoq(noalias __nptr: ?[*]const u8, noalias __endptr: ?[*](?[*]u8), __base: c_int) c_longlong;
pub extern fn strtouq(noalias __nptr: ?[*]const u8, noalias __endptr: ?[*](?[*]u8), __base: c_int) c_ulonglong;
pub extern fn strtoll(__nptr: ?[*]const u8, __endptr: ?[*](?[*]u8), __base: c_int) c_longlong;
pub extern fn strtoull(__nptr: ?[*]const u8, __endptr: ?[*](?[*]u8), __base: c_int) c_ulonglong;
pub extern fn l64a(__n: c_long) ?[*]u8;
pub extern fn a64l(__s: ?[*]const u8) c_long;
pub extern fn random() c_long;
pub extern fn srandom(__seed: c_uint) void;
pub extern fn initstate(__seed: c_uint, __statebuf: ?[*]u8, __statelen: usize) ?[*]u8;
pub extern fn setstate(__statebuf: ?[*]u8) ?[*]u8;
pub const struct_random_data = extern struct {
    fptr: ?[*]i32,
    rptr: ?[*]i32,
    state: ?[*]i32,
    rand_type: c_int,
    rand_deg: c_int,
    rand_sep: c_int,
    end_ptr: ?[*]i32,
};
pub extern fn random_r(noalias __buf: ?[*]struct_random_data, noalias __result: ?[*]i32) c_int;
pub extern fn srandom_r(__seed: c_uint, __buf: ?[*]struct_random_data) c_int;
pub extern fn initstate_r(__seed: c_uint, noalias __statebuf: ?[*]u8, __statelen: usize, noalias __buf: ?[*]struct_random_data) c_int;
pub extern fn setstate_r(noalias __statebuf: ?[*]u8, noalias __buf: ?[*]struct_random_data) c_int;
pub extern fn rand() c_int;
pub extern fn srand(__seed: c_uint) void;
pub extern fn rand_r(__seed: ?[*]c_uint) c_int;
pub extern fn drand48() f64;
pub extern fn erand48(__xsubi: ?[*]c_ushort) f64;
pub extern fn lrand48() c_long;
pub extern fn nrand48(__xsubi: ?[*]c_ushort) c_long;
pub extern fn mrand48() c_long;
pub extern fn jrand48(__xsubi: ?[*]c_ushort) c_long;
pub extern fn srand48(__seedval: c_long) void;
pub extern fn seed48(__seed16v: ?[*]c_ushort) ?[*]c_ushort;
pub extern fn lcong48(__param: ?[*]c_ushort) void;
pub const struct_drand48_data = extern struct {
    __x: [3]c_ushort,
    __old_x: [3]c_ushort,
    __c: c_ushort,
    __init: c_ushort,
    __a: c_ulonglong,
};
pub extern fn drand48_r(noalias __buffer: ?[*]struct_drand48_data, noalias __result: ?[*]f64) c_int;
pub extern fn erand48_r(__xsubi: ?[*]c_ushort, noalias __buffer: ?[*]struct_drand48_data, noalias __result: ?[*]f64) c_int;
pub extern fn lrand48_r(noalias __buffer: ?[*]struct_drand48_data, noalias __result: ?[*]c_long) c_int;
pub extern fn nrand48_r(__xsubi: ?[*]c_ushort, noalias __buffer: ?[*]struct_drand48_data, noalias __result: ?[*]c_long) c_int;
pub extern fn mrand48_r(noalias __buffer: ?[*]struct_drand48_data, noalias __result: ?[*]c_long) c_int;
pub extern fn jrand48_r(__xsubi: ?[*]c_ushort, noalias __buffer: ?[*]struct_drand48_data, noalias __result: ?[*]c_long) c_int;
pub extern fn srand48_r(__seedval: c_long, __buffer: ?[*]struct_drand48_data) c_int;
pub extern fn seed48_r(__seed16v: ?[*]c_ushort, __buffer: ?[*]struct_drand48_data) c_int;
pub extern fn lcong48_r(__param: ?[*]c_ushort, __buffer: ?[*]struct_drand48_data) c_int;
pub extern fn malloc(__size: c_ulong) ?*c_void;
pub extern fn calloc(__nmemb: c_ulong, __size: c_ulong) ?*c_void;
pub extern fn realloc(__ptr: ?*c_void, __size: c_ulong) ?*c_void;
pub extern fn free(__ptr: ?*c_void) void;
pub extern fn cfree(__ptr: ?*c_void) void;
pub extern fn alloca(__size: c_ulong) ?*c_void;
pub extern fn valloc(__size: usize) ?*c_void;
pub extern fn posix_memalign(__memptr: ?[*](?*c_void), __alignment: usize, __size: usize) c_int;
pub extern fn aligned_alloc(__alignment: usize, __size: usize) ?*c_void;
pub extern fn abort() noreturn;
pub extern fn atexit(__func: ?extern fn() void) c_int;
pub extern fn at_quick_exit(__func: ?extern fn() void) c_int;
pub extern fn on_exit(__func: ?extern fn(c_int, ?*c_void) void, __arg: ?*c_void) c_int;
pub extern fn exit(__status: c_int) noreturn;
pub extern fn quick_exit(__status: c_int) noreturn;
pub extern fn _Exit(__status: c_int) noreturn;
pub extern fn getenv(__name: ?[*]const u8) ?[*]u8;
pub extern fn putenv(__string: ?[*]u8) c_int;
pub extern fn setenv(__name: ?[*]const u8, __value: ?[*]const u8, __replace: c_int) c_int;
pub extern fn unsetenv(__name: ?[*]const u8) c_int;
pub extern fn clearenv() c_int;
pub extern fn mktemp(__template: ?[*]u8) ?[*]u8;
pub extern fn mkstemp(__template: ?[*]u8) c_int;
pub extern fn mkstemps(__template: ?[*]u8, __suffixlen: c_int) c_int;
pub extern fn mkdtemp(__template: ?[*]u8) ?[*]u8;
pub extern fn system(__command: ?[*]const u8) c_int;
pub extern fn realpath(noalias __name: ?[*]const u8, noalias __resolved: ?[*]u8) ?[*]u8;
pub const __compar_fn_t = ?extern fn(?*const c_void, ?*const c_void) c_int;
pub extern fn bsearch(__key: ?*const c_void, __base: ?*const c_void, __nmemb: usize, __size: usize, __compar: __compar_fn_t) ?*c_void;
pub extern fn qsort(__base: ?*c_void, __nmemb: usize, __size: usize, __compar: __compar_fn_t) void;
pub extern fn abs(__x: c_int) c_int;
pub extern fn labs(__x: c_long) c_long;
pub extern fn llabs(__x: c_longlong) c_longlong;
pub extern fn div(__numer: c_int, __denom: c_int) div_t;
pub extern fn ldiv(__numer: c_long, __denom: c_long) ldiv_t;
pub extern fn lldiv(__numer: c_longlong, __denom: c_longlong) lldiv_t;
pub extern fn ecvt(__value: f64, __ndigit: c_int, noalias __decpt: ?[*]c_int, noalias __sign: ?[*]c_int) ?[*]u8;
pub extern fn fcvt(__value: f64, __ndigit: c_int, noalias __decpt: ?[*]c_int, noalias __sign: ?[*]c_int) ?[*]u8;
pub extern fn gcvt(__value: f64, __ndigit: c_int, __buf: ?[*]u8) ?[*]u8;
pub extern fn qecvt(__value: c_longdouble, __ndigit: c_int, noalias __decpt: ?[*]c_int, noalias __sign: ?[*]c_int) ?[*]u8;
pub extern fn qfcvt(__value: c_longdouble, __ndigit: c_int, noalias __decpt: ?[*]c_int, noalias __sign: ?[*]c_int) ?[*]u8;
pub extern fn qgcvt(__value: c_longdouble, __ndigit: c_int, __buf: ?[*]u8) ?[*]u8;
pub extern fn ecvt_r(__value: f64, __ndigit: c_int, noalias __decpt: ?[*]c_int, noalias __sign: ?[*]c_int, noalias __buf: ?[*]u8, __len: usize) c_int;
pub extern fn fcvt_r(__value: f64, __ndigit: c_int, noalias __decpt: ?[*]c_int, noalias __sign: ?[*]c_int, noalias __buf: ?[*]u8, __len: usize) c_int;
pub extern fn qecvt_r(__value: c_longdouble, __ndigit: c_int, noalias __decpt: ?[*]c_int, noalias __sign: ?[*]c_int, noalias __buf: ?[*]u8, __len: usize) c_int;
pub extern fn qfcvt_r(__value: c_longdouble, __ndigit: c_int, noalias __decpt: ?[*]c_int, noalias __sign: ?[*]c_int, noalias __buf: ?[*]u8, __len: usize) c_int;
pub extern fn mblen(__s: ?[*]const u8, __n: usize) c_int;
pub extern fn mbtowc(noalias __pwc: ?[*]wchar_t, noalias __s: ?[*]const u8, __n: usize) c_int;
pub extern fn wctomb(__s: ?[*]u8, __wchar: wchar_t) c_int;
pub extern fn mbstowcs(noalias __pwcs: ?[*]wchar_t, noalias __s: ?[*]const u8, __n: usize) usize;
pub extern fn wcstombs(noalias __s: ?[*]u8, noalias __pwcs: ?[*]const wchar_t, __n: usize) usize;
pub extern fn rpmatch(__response: ?[*]const u8) c_int;
pub extern fn getsubopt(noalias __optionp: ?[*](?[*]u8), noalias __tokens: ?[*]const (?[*]u8), noalias __valuep: ?[*](?[*]u8)) c_int;
pub extern fn getloadavg(__loadavg: ?[*]f64, __nelem: c_int) c_int;
pub const ptrdiff_t = c_long;
pub const max_align_t = extern struct {
    __clang_max_align_nonce1: c_longlong,
    __clang_max_align_nonce2: c_longdouble,
};
pub extern fn memcpy(__dest: ?*c_void, __src: ?*const c_void, __n: c_ulong) ?*c_void;
pub extern fn memmove(__dest: ?*c_void, __src: ?*const c_void, __n: c_ulong) ?*c_void;
pub extern fn memccpy(noalias __dest: ?*c_void, noalias __src: ?*const c_void, __c: c_int, __n: usize) ?*c_void;
pub extern fn memset(__s: ?*c_void, __c: c_int, __n: c_ulong) ?*c_void;
pub extern fn memcmp(__s1: ?*const c_void, __s2: ?*const c_void, __n: c_ulong) c_int;
pub extern fn memchr(__s: ?*const c_void, __c: c_int, __n: c_ulong) ?*c_void;
pub extern fn strcpy(__dest: ?[*]u8, __src: ?[*]const u8) ?[*]u8;
pub extern fn strncpy(__dest: ?[*]u8, __src: ?[*]const u8, __n: c_ulong) ?[*]u8;
pub extern fn strcat(__dest: ?[*]u8, __src: ?[*]const u8) ?[*]u8;
pub extern fn strncat(__dest: ?[*]u8, __src: ?[*]const u8, __n: c_ulong) ?[*]u8;
pub extern fn strcmp(__s1: ?[*]const u8, __s2: ?[*]const u8) c_int;
pub extern fn strncmp(__s1: ?[*]const u8, __s2: ?[*]const u8, __n: c_ulong) c_int;
pub extern fn strcoll(__s1: ?[*]const u8, __s2: ?[*]const u8) c_int;
pub extern fn strxfrm(__dest: ?[*]u8, __src: ?[*]const u8, __n: c_ulong) c_ulong;
pub const struct___locale_data = @OpaqueType();
pub const struct___locale_struct = extern struct {
    __locales: [13](?*struct___locale_data),
    __ctype_b: ?[*]const c_ushort,
    __ctype_tolower: ?[*]const c_int,
    __ctype_toupper: ?[*]const c_int,
    __names: [13](?[*]const u8),
};
pub const __locale_t = ?[*]struct___locale_struct;
pub const locale_t = __locale_t;
pub extern fn strcoll_l(__s1: ?[*]const u8, __s2: ?[*]const u8, __l: __locale_t) c_int;
pub extern fn strxfrm_l(__dest: ?[*]u8, __src: ?[*]const u8, __n: usize, __l: __locale_t) usize;
pub extern fn strdup(__s: ?[*]const u8) ?[*]u8;
pub extern fn strndup(__string: ?[*]const u8, __n: c_ulong) ?[*]u8;
pub extern fn strchr(__s: ?[*]const u8, __c: c_int) ?[*]u8;
pub extern fn strrchr(__s: ?[*]const u8, __c: c_int) ?[*]u8;
pub extern fn strcspn(__s: ?[*]const u8, __reject: ?[*]const u8) c_ulong;
pub extern fn strspn(__s: ?[*]const u8, __accept: ?[*]const u8) c_ulong;
pub extern fn strpbrk(__s: ?[*]const u8, __accept: ?[*]const u8) ?[*]u8;
pub extern fn strstr(__haystack: ?[*]const u8, __needle: ?[*]const u8) ?[*]u8;
pub extern fn strtok(__s: ?[*]u8, __delim: ?[*]const u8) ?[*]u8;
pub extern fn __strtok_r(noalias __s: ?[*]u8, noalias __delim: ?[*]const u8, noalias __save_ptr: ?[*](?[*]u8)) ?[*]u8;
pub extern fn strtok_r(noalias __s: ?[*]u8, noalias __delim: ?[*]const u8, noalias __save_ptr: ?[*](?[*]u8)) ?[*]u8;
pub extern fn strlen(__s: ?[*]const u8) c_ulong;
pub extern fn strnlen(__string: ?[*]const u8, __maxlen: usize) usize;
pub extern fn strerror(__errnum: c_int) ?[*]u8;
pub extern fn strerror_r(__errnum: c_int, __buf: ?[*]u8, __buflen: usize) c_int;
pub extern fn strerror_l(__errnum: c_int, __l: __locale_t) ?[*]u8;
pub extern fn __bzero(__s: ?*c_void, __n: usize) void;
pub extern fn bcopy(__src: ?*const c_void, __dest: ?*c_void, __n: usize) void;
pub extern fn bzero(__s: ?*c_void, __n: c_ulong) void;
pub extern fn bcmp(__s1: ?*const c_void, __s2: ?*const c_void, __n: usize) c_int;
pub extern fn index(__s: ?[*]const u8, __c: c_int) ?[*]u8;
pub extern fn rindex(__s: ?[*]const u8, __c: c_int) ?[*]u8;
pub extern fn ffs(__i: c_int) c_int;
pub extern fn strcasecmp(__s1: ?[*]const u8, __s2: ?[*]const u8) c_int;
pub extern fn strncasecmp(__s1: ?[*]const u8, __s2: ?[*]const u8, __n: c_ulong) c_int;
pub extern fn strsep(noalias __stringp: ?[*](?[*]u8), noalias __delim: ?[*]const u8) ?[*]u8;
pub extern fn strsignal(__sig: c_int) ?[*]u8;
pub extern fn __stpcpy(noalias __dest: ?[*]u8, noalias __src: ?[*]const u8) ?[*]u8;
pub extern fn stpcpy(__dest: ?[*]u8, __src: ?[*]const u8) ?[*]u8;
pub extern fn __stpncpy(noalias __dest: ?[*]u8, noalias __src: ?[*]const u8, __n: usize) ?[*]u8;
pub extern fn stpncpy(__dest: ?[*]u8, __src: ?[*]const u8, __n: c_ulong) ?[*]u8;
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
pub const __gwchar_t = c_int;
pub const imaxdiv_t = extern struct {
    quot: c_long,
    rem: c_long,
};
pub extern fn imaxabs(__n: intmax_t) intmax_t;
pub extern fn imaxdiv(__numer: intmax_t, __denom: intmax_t) imaxdiv_t;
pub extern fn strtoimax(noalias __nptr: ?[*]const u8, noalias __endptr: ?[*](?[*]u8), __base: c_int) intmax_t;
pub extern fn strtoumax(noalias __nptr: ?[*]const u8, noalias __endptr: ?[*](?[*]u8), __base: c_int) uintmax_t;
pub extern fn wcstoimax(noalias __nptr: ?[*]const __gwchar_t, noalias __endptr: ?[*](?[*]__gwchar_t), __base: c_int) intmax_t;
pub extern fn wcstoumax(noalias __nptr: ?[*]const __gwchar_t, noalias __endptr: ?[*](?[*]__gwchar_t), __base: c_int) uintmax_t;
pub const _ISupper = 256;
pub const _ISlower = 512;
pub const _ISalpha = 1024;
pub const _ISdigit = 2048;
pub const _ISxdigit = 4096;
pub const _ISspace = 8192;
pub const _ISprint = 16384;
pub const _ISgraph = 32768;
pub const _ISblank = 1;
pub const _IScntrl = 2;
pub const _ISpunct = 4;
pub const _ISalnum = 8;
pub extern fn __ctype_b_loc() ?[*](?[*]const c_ushort);
pub extern fn __ctype_tolower_loc() ?[*](?[*]const __int32_t);
pub extern fn __ctype_toupper_loc() ?[*](?[*]const __int32_t);
pub extern fn isalnum(arg0: c_int) c_int;
pub extern fn isalpha(arg0: c_int) c_int;
pub extern fn iscntrl(arg0: c_int) c_int;
pub extern fn isdigit(arg0: c_int) c_int;
pub extern fn islower(arg0: c_int) c_int;
pub extern fn isgraph(arg0: c_int) c_int;
pub extern fn isprint(arg0: c_int) c_int;
pub extern fn ispunct(arg0: c_int) c_int;
pub extern fn isspace(arg0: c_int) c_int;
pub extern fn isupper(arg0: c_int) c_int;
pub extern fn isxdigit(arg0: c_int) c_int;
pub extern fn tolower(__c: c_int) c_int;
pub extern fn toupper(__c: c_int) c_int;
pub extern fn isblank(arg0: c_int) c_int;
pub extern fn isascii(__c: c_int) c_int;
pub extern fn toascii(__c: c_int) c_int;
pub extern fn _toupper(arg0: c_int) c_int;
pub extern fn _tolower(arg0: c_int) c_int;
pub extern fn isalnum_l(arg0: c_int, arg1: __locale_t) c_int;
pub extern fn isalpha_l(arg0: c_int, arg1: __locale_t) c_int;
pub extern fn iscntrl_l(arg0: c_int, arg1: __locale_t) c_int;
pub extern fn isdigit_l(arg0: c_int, arg1: __locale_t) c_int;
pub extern fn islower_l(arg0: c_int, arg1: __locale_t) c_int;
pub extern fn isgraph_l(arg0: c_int, arg1: __locale_t) c_int;
pub extern fn isprint_l(arg0: c_int, arg1: __locale_t) c_int;
pub extern fn ispunct_l(arg0: c_int, arg1: __locale_t) c_int;
pub extern fn isspace_l(arg0: c_int, arg1: __locale_t) c_int;
pub extern fn isupper_l(arg0: c_int, arg1: __locale_t) c_int;
pub extern fn isxdigit_l(arg0: c_int, arg1: __locale_t) c_int;
pub extern fn isblank_l(arg0: c_int, arg1: __locale_t) c_int;
pub extern fn __tolower_l(__c: c_int, __l: __locale_t) c_int;
pub extern fn tolower_l(__c: c_int, __l: __locale_t) c_int;
pub extern fn __toupper_l(__c: c_int, __l: __locale_t) c_int;
pub extern fn toupper_l(__c: c_int, __l: __locale_t) c_int;
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
pub const SDL_FALSE = 0;
pub const SDL_TRUE = 1;
pub const SDL_bool = extern enum {
    SDL_FALSE = 0,
    SDL_TRUE = 1,
};
pub const Sint8 = i8;
pub const Uint8 = u8;
pub const Sint16 = i16;
pub const Uint16 = u16;
pub const Sint32 = i32;
pub const Uint32 = u32;
pub const Sint64 = i64;
pub const Uint64 = u64;
pub const SDL_dummy_uint8 = [1]c_int;
pub const SDL_dummy_sint8 = [1]c_int;
pub const SDL_dummy_uint16 = [1]c_int;
pub const SDL_dummy_sint16 = [1]c_int;
pub const SDL_dummy_uint32 = [1]c_int;
pub const SDL_dummy_sint32 = [1]c_int;
pub const SDL_dummy_uint64 = [1]c_int;
pub const SDL_dummy_sint64 = [1]c_int;
pub const DUMMY_ENUM_VALUE = 0;
pub const SDL_DUMMY_ENUM = extern enum {
    DUMMY_ENUM_VALUE = 0,
};
pub const SDL_dummy_enum = [1]c_int;
pub extern fn SDL_malloc(size: usize) ?*c_void;
pub extern fn SDL_calloc(nmemb: usize, size: usize) ?*c_void;
pub extern fn SDL_realloc(mem: ?*c_void, size: usize) ?*c_void;
pub extern fn SDL_free(mem: ?*c_void) void;
pub extern fn SDL_getenv(name: ?[*]const u8) ?[*]u8;
pub extern fn SDL_setenv(name: ?[*]const u8, value: ?[*]const u8, overwrite: c_int) c_int;
pub extern fn SDL_qsort(base: ?*c_void, nmemb: usize, size: usize, compare: ?extern fn(?*const c_void, ?*const c_void) c_int) void;
pub extern fn SDL_abs(x: c_int) c_int;
pub extern fn SDL_isdigit(x: c_int) c_int;
pub extern fn SDL_isspace(x: c_int) c_int;
pub extern fn SDL_toupper(x: c_int) c_int;
pub extern fn SDL_tolower(x: c_int) c_int;
pub extern fn SDL_memset(dst: ?*c_void, c: c_int, len: usize) ?*c_void;
pub fn SDL_memset4(dst: ?*c_void, val: Uint32, dwords: usize) void {
    var _n: usize = (dwords +% c_ulong(3)) / c_ulong(4);
    var _p: ?[*]Uint32 = @ptrCast(?[*]Uint32, dst);
    var _val: Uint32 = val;
    if (dwords == c_ulong(0)) return;
    __switch: {
        __case_0: {
            switch (dwords % c_ulong(4)) {
                c_ulong(0) => break :__case_0,
                c_ulong(3) => break :__case_1,
                c_ulong(2) => break :__case_2,
                c_ulong(1) => break :__case_3,
                else => break :__switch,
            }
        }
        while (true) {
            __case_3: {
                __case_2: {
                    __case_1: {
                        x: {
                            const _ref = &_p;
                            const _tmp = _ref.*;
                            _ref.* +%= 1;
                            break :x _tmp;
                        }.?.* = _val;
                    }
                    x: {
                        const _ref = &_p;
                        const _tmp = _ref.*;
                        _ref.* +%= 1;
                        break :x _tmp;
                    }.?.* = _val;
                }
                x: {
                    const _ref = &_p;
                    const _tmp = _ref.*;
                    _ref.* +%= 1;
                    break :x _tmp;
                }.?.* = _val;
            }
            x: {
                const _ref = &_p;
                const _tmp = _ref.*;
                _ref.* +%= 1;
                break :x _tmp;
            }.?.* = _val;
            if (!x: {
                const _ref = &_n;
                _ref.* -%= 1;
                break :x _ref.*;
            }) break;
        }
    }
}
pub extern fn SDL_memcpy(dst: ?*c_void, src: ?*const c_void, len: usize) ?*c_void;
pub extern fn SDL_memmove(dst: ?*c_void, src: ?*const c_void, len: usize) ?*c_void;
pub extern fn SDL_memcmp(s1: ?*const c_void, s2: ?*const c_void, len: usize) c_int;
pub extern fn SDL_wcslen(wstr: ?[*]const wchar_t) usize;
pub extern fn SDL_wcslcpy(dst: ?[*]wchar_t, src: ?[*]const wchar_t, maxlen: usize) usize;
pub extern fn SDL_wcslcat(dst: ?[*]wchar_t, src: ?[*]const wchar_t, maxlen: usize) usize;
pub extern fn SDL_strlen(str: ?[*]const u8) usize;
pub extern fn SDL_strlcpy(dst: ?[*]u8, src: ?[*]const u8, maxlen: usize) usize;
pub extern fn SDL_utf8strlcpy(dst: ?[*]u8, src: ?[*]const u8, dst_bytes: usize) usize;
pub extern fn SDL_strlcat(dst: ?[*]u8, src: ?[*]const u8, maxlen: usize) usize;
pub extern fn SDL_strdup(str: ?[*]const u8) ?[*]u8;
pub extern fn SDL_strrev(str: ?[*]u8) ?[*]u8;
pub extern fn SDL_strupr(str: ?[*]u8) ?[*]u8;
pub extern fn SDL_strlwr(str: ?[*]u8) ?[*]u8;
pub extern fn SDL_strchr(str: ?[*]const u8, c: c_int) ?[*]u8;
pub extern fn SDL_strrchr(str: ?[*]const u8, c: c_int) ?[*]u8;
pub extern fn SDL_strstr(haystack: ?[*]const u8, needle: ?[*]const u8) ?[*]u8;
pub extern fn SDL_itoa(value: c_int, str: ?[*]u8, radix: c_int) ?[*]u8;
pub extern fn SDL_uitoa(value: c_uint, str: ?[*]u8, radix: c_int) ?[*]u8;
pub extern fn SDL_ltoa(value: c_long, str: ?[*]u8, radix: c_int) ?[*]u8;
pub extern fn SDL_ultoa(value: c_ulong, str: ?[*]u8, radix: c_int) ?[*]u8;
pub extern fn SDL_lltoa(value: Sint64, str: ?[*]u8, radix: c_int) ?[*]u8;
pub extern fn SDL_ulltoa(value: Uint64, str: ?[*]u8, radix: c_int) ?[*]u8;
pub extern fn SDL_atoi(str: ?[*]const u8) c_int;
pub extern fn SDL_atof(str: ?[*]const u8) f64;
pub extern fn SDL_strtol(str: ?[*]const u8, endp: ?[*](?[*]u8), base: c_int) c_long;
pub extern fn SDL_strtoul(str: ?[*]const u8, endp: ?[*](?[*]u8), base: c_int) c_ulong;
pub extern fn SDL_strtoll(str: ?[*]const u8, endp: ?[*](?[*]u8), base: c_int) Sint64;
pub extern fn SDL_strtoull(str: ?[*]const u8, endp: ?[*](?[*]u8), base: c_int) Uint64;
pub extern fn SDL_strtod(str: ?[*]const u8, endp: ?[*](?[*]u8)) f64;
pub extern fn SDL_strcmp(str1: ?[*]const u8, str2: ?[*]const u8) c_int;
pub extern fn SDL_strncmp(str1: ?[*]const u8, str2: ?[*]const u8, maxlen: usize) c_int;
pub extern fn SDL_strcasecmp(str1: ?[*]const u8, str2: ?[*]const u8) c_int;
pub extern fn SDL_strncasecmp(str1: ?[*]const u8, str2: ?[*]const u8, len: usize) c_int;
pub extern fn SDL_sscanf(text: ?[*]const u8, fmt: ?[*]const u8) c_int;
pub extern fn SDL_vsscanf(text: ?[*]const u8, fmt: ?[*]const u8, ap: ?[*]struct___va_list_tag) c_int;
pub extern fn SDL_snprintf(text: ?[*]u8, maxlen: usize, fmt: ?[*]const u8) c_int;
pub extern fn SDL_vsnprintf(text: ?[*]u8, maxlen: usize, fmt: ?[*]const u8, ap: ?[*]struct___va_list_tag) c_int;
pub extern fn SDL_acos(x: f64) f64;
pub extern fn SDL_asin(x: f64) f64;
pub extern fn SDL_atan(x: f64) f64;
pub extern fn SDL_atan2(x: f64, y: f64) f64;
pub extern fn SDL_ceil(x: f64) f64;
pub extern fn SDL_copysign(x: f64, y: f64) f64;
pub extern fn SDL_cos(x: f64) f64;
pub extern fn SDL_cosf(x: f32) f32;
pub extern fn SDL_fabs(x: f64) f64;
pub extern fn SDL_floor(x: f64) f64;
pub extern fn SDL_log(x: f64) f64;
pub extern fn SDL_pow(x: f64, y: f64) f64;
pub extern fn SDL_scalbn(x: f64, n: c_int) f64;
pub extern fn SDL_sin(x: f64) f64;
pub extern fn SDL_sinf(x: f32) f32;
pub extern fn SDL_sqrt(x: f64) f64;
pub extern fn SDL_sqrtf(x: f32) f32;
pub extern fn SDL_tan(x: f64) f64;
pub extern fn SDL_tanf(x: f32) f32;
pub const struct__SDL_iconv_t = @OpaqueType();
pub const SDL_iconv_t = ?*struct__SDL_iconv_t;
pub extern fn SDL_iconv_open(tocode: ?[*]const u8, fromcode: ?[*]const u8) SDL_iconv_t;
pub extern fn SDL_iconv_close(cd: SDL_iconv_t) c_int;
pub extern fn SDL_iconv(cd: SDL_iconv_t, inbuf: ?[*](?[*]const u8), inbytesleft: ?[*]usize, outbuf: ?[*](?[*]u8), outbytesleft: ?[*]usize) usize;
pub extern fn SDL_iconv_string(tocode: ?[*]const u8, fromcode: ?[*]const u8, inbuf: ?[*]const u8, inbytesleft: usize) ?[*]u8;
pub fn SDL_memcpy4(dst: ?*c_void, src: ?*const c_void, dwords: usize) ?*c_void {
    return SDL_memcpy(dst, src, dwords *% c_ulong(4));
}
pub const SDL_VIDEO_DRIVER_X11_HAS_XKBKEYCODETOKEYSYM = 1;
pub const __BIGGEST_ALIGNMENT__ = 16;
pub const _IO_USER_LOCK = 32768;
pub const __STDC_VERSION__ = c_long(201112);
pub const __INT64_FMTd__ = c"ld";
pub const HAVE_ALLOCA_H = 1;
pub const __INT_LEAST8_FMTi__ = c"hhi";
pub const _IO_LINKED = 128;
pub const _IO_RIGHT = 4;
pub const _IO_LINE_BUF = 512;
pub const _MATH_H = 1;
pub const __GCC_ATOMIC_LLONG_LOCK_FREE = 2;
pub const PRIoLEAST16 = c"o";
pub const __clang_version__ = c"7.0.0 (tags/RELEASE_700/final)";
pub const __UINT_LEAST8_FMTo__ = c"hho";
pub const PRIo8 = c"o";
pub const _IO_MAGIC = 4222418944;
pub const __INTMAX_FMTd__ = c"ld";
pub const __CLANG_ATOMIC_CHAR_LOCK_FREE = 2;
pub const __INT_LEAST16_FMTi__ = c"hi";
pub const UINTMAX_MAX = if (@typeId(@typeOf(18446744073709551615)) == @import("builtin").TypeId.Pointer) @ptrCast(__UINT64_C, 18446744073709551615) else if (@typeId(@typeOf(18446744073709551615)) == @import("builtin").TypeId.Int) @intToPtr(__UINT64_C, 18446744073709551615) else __UINT64_C(18446744073709551615);
pub const INT_LEAST64_MAX = if (@typeId(@typeOf(9223372036854775807)) == @import("builtin").TypeId.Pointer) @ptrCast(__INT64_C, 9223372036854775807) else if (@typeId(@typeOf(9223372036854775807)) == @import("builtin").TypeId.Int) @intToPtr(__INT64_C, 9223372036854775807) else __INT64_C(9223372036854775807);
pub const WINT_MIN = if (@typeId(@typeOf(u)) == @import("builtin").TypeId.Pointer) @ptrCast(0, u) else if (@typeId(@typeOf(u)) == @import("builtin").TypeId.Int) @intToPtr(0, u) else 0(u);
pub const __MMX__ = 1;
pub const PRId8 = c"d";
pub const INTPTR_MAX = c_long(9223372036854775807);
pub const PRIxLEAST32 = c"x";
pub const _G_IO_IO_FILE_VERSION = 131073;
pub const HAVE_COPYSIGN = 1;
pub const __INO_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const HAVE_ICONV_H = 1;
pub const __FSBLKCNT_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const SCNd16 = c"hd";
pub const __ptr_t = [*]void;
pub const __WCHAR_WIDTH__ = 32;
pub const M_LOG10E = 0.434294;
pub const __USE_MISC = 1;
pub const __SIZEOF_PTHREAD_ATTR_T = 56;
pub const __PTRDIFF_FMTd__ = c"ld";
pub const __FLT_EVAL_METHOD__ = 0;
pub const __SSE_MATH__ = 1;
pub const HAVE_PTHREAD_SETNAME_NP = 1;
pub const HAVE_ATAN2 = 1;
pub const __UINT_FAST8_FMTo__ = c"hho";
pub const __UINT_LEAST64_MAX__ = c_ulong(18446744073709551615);
pub const PRIi32 = c"i";
pub const SDL_POWER_LINUX = 1;
pub const M_1_PI = 0.318310;
pub const __UINT_LEAST64_FMTx__ = c"lx";
pub const __INT8_MAX__ = 127;
pub const __NLINK_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const _IO_UNBUFFERED = 2;
pub const __DBL_DECIMAL_DIG__ = 17;
pub const HAVE_STDARG_H = 1;
pub const __PTHREAD_MUTEX_HAVE_PREV = 1;
pub const SCNiFAST8 = c"hhi";
pub const _IO_SKIPWS = 1;
pub const __CONSTANT_CFSTRINGS__ = 1;
pub const _SYS_CDEFS_H = 1;
pub const HAVE_ASIN = 1;
pub const _ATFILE_SOURCE = 1;
pub const __RLIM_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __LDBL_MAX_EXP__ = 16384;
pub const __USE_POSIX199309 = 1;
pub const __NO_MATH_INLINES = 1;
pub const __WCHAR_TYPE__ = int;
pub const HAVE_LOG = 1;
pub const __LONG_MAX__ = c_long(9223372036854775807);
pub const __WCHAR_MIN = if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Pointer) @ptrCast(-__WCHAR_MAX, -1) else if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Int) @intToPtr(-__WCHAR_MAX, -1) else (-__WCHAR_MAX)(-1);
pub const __INT_FAST16_FMTi__ = c"hi";
pub const __PTRDIFF_WIDTH__ = 64;
pub const __LDBL_DENORM_MIN__ = 0.000000;
pub const RAND_MAX = 2147483647;
pub const __FLOAT_WORD_ORDER = __BYTE_ORDER;
pub const _IOFBF = 0;
pub const __INT64_C_SUFFIX__ = L;
pub const __FSFILCNT_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const PRIx8 = c"x";
pub const SDL_FILESYSTEM_UNIX = 1;
pub const M_LOG2E = 1.442695;
pub const SDL_AUDIO_DRIVER_OSS = 1;
pub const __SSIZE_T_TYPE = __SWORD_TYPE;
pub const PRIu32 = c"u";
pub const __SIZEOF_PTRDIFF_T__ = 8;
pub const __SIG_ATOMIC_MAX__ = 2147483647;
pub const HAVE_SCALBN = 1;
pub const _IO_EOF_SEEN = 16;
pub const SCNoLEAST8 = c"hho";
pub const __USE_ATFILE = 1;
pub const HAVE_STRTOD = 1;
pub const __WALL = 1073741824;
pub const __UINT64_MAX__ = c_ulong(18446744073709551615);
pub const __FLT_DECIMAL_DIG__ = 9;
pub const HAVE_STDIO_H = 1;
pub const __DBL_DIG__ = 15;
pub const SDL_VIDEO_RENDER_OGL = 1;
pub const __ATOMIC_ACQUIRE = 2;
pub const M_SQRT1_2 = 0.707107;
pub const HAVE_STDINT_H = 1;
pub const PRIXLEAST32 = c"X";
pub const SCNoLEAST16 = c"ho";
pub const SING = 2;
pub const __FLT16_HAS_DENORM__ = 1;
pub const __UINT_FAST16_FMTu__ = c"hu";
pub const _IOS_ATEND = 4;
pub const __INTPTR_FMTi__ = c"li";
pub const _BITS_WCHAR_H = 1;
pub const __UINT_FAST8_FMTX__ = c"hhX";
pub const __UINT8_FMTo__ = c"hho";
pub const UINT_LEAST64_MAX = if (@typeId(@typeOf(18446744073709551615)) == @import("builtin").TypeId.Pointer) @ptrCast(__UINT64_C, 18446744073709551615) else if (@typeId(@typeOf(18446744073709551615)) == @import("builtin").TypeId.Int) @intToPtr(__UINT64_C, 18446744073709551615) else __UINT64_C(18446744073709551615);
pub const HAVE_MALLOC_H = 1;
pub const __UINT_LEAST16_FMTx__ = c"hx";
pub const _IO_off64_t = __off64_t;
pub const __UINT_FAST16_FMTX__ = c"hX";
pub const HAVE_COSF = 1;
pub const __VERSION__ = c"4.2.1 Compatible Clang 7.0.0 (tags/RELEASE_700/final)";
pub const __UINT_FAST32_FMTx__ = c"x";
pub const _BITS_LIBM_SIMD_DECL_STUBS_H = 1;
pub const __UINT_FAST8_FMTu__ = c"hhu";
pub const __UINT_LEAST64_FMTo__ = c"lo";
pub const __clockid_t_defined = 1;
pub const __UINT_LEAST8_MAX__ = 255;
pub const SDL_OUT_Z_BYTECAP = x;
pub const SCNiLEAST16 = c"hi";
pub const UINT8_MAX = 255;
pub const PRIX8 = c"X";
pub const PRIiLEAST16 = c"i";
pub const SDL_INLINE = __inline__;
pub const __UINT16_MAX__ = 65535;
pub const __CLOCK_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const M_PI_4 = 0.785398;
pub const __x86_64 = 1;
pub const __PTHREAD_RWLOCK_INT_FLAGS_SHARED = 1;
pub const __SIZEOF_WINT_T__ = 4;
pub const __UINTMAX_FMTo__ = c"lo";
pub const __UINT_LEAST8_FMTX__ = c"hhX";
pub const __WINT_UNSIGNED__ = 1;
pub const SDL_VIDEO_DRIVER_X11_XINPUT2 = 1;
pub const HAVE_ACOS = 1;
pub const SIG_ATOMIC_MAX = 2147483647;
pub const PRIu8 = c"u";
pub const SCNdFAST8 = c"hhd";
pub const __SIZEOF_PTHREAD_RWLOCKATTR_T = 8;
pub const _IO_SCIENTIFIC = 2048;
pub const __POINTER_WIDTH__ = 64;
pub const PTRDIFF_MIN = if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Pointer) @ptrCast(-c_long(9223372036854775807), -1) else if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Int) @intToPtr(-c_long(9223372036854775807), -1) else (-c_long(9223372036854775807))(-1);
pub const SCNo8 = c"hho";
pub const __PTRDIFF_MAX__ = c_long(9223372036854775807);
pub const __FLT16_DIG__ = 3;
pub const __SIZEOF_LONG__ = 8;
pub const SDL_LOADSO_DISABLED = 1;
pub const __TIME_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const PRIuLEAST8 = c"u";
pub const SDL_JOYSTICK_LINUX = 1;
pub const __W_CONTINUED = 65535;
pub const __NO_INLINE__ = 1;
pub const __INT_FAST32_MAX__ = 2147483647;
pub const __UINTMAX_FMTu__ = c"lu";
pub const _IO_iconv_t = _G_iconv_t;
pub const SCNdLEAST32 = c"d";
pub const INT_FAST8_MAX = 127;
pub const PRIdLEAST32 = c"d";
pub const __FLT_RADIX__ = 2;
pub const __GLIBC_MINOR__ = 24;
pub const _IO_STDIO = 16384;
pub const _STDINT_H = 1;
pub const _BITS_BYTESWAP_H = 1;
pub const SDL_AUDIO_DRIVER_DISK = 1;
pub const __FLT16_DECIMAL_DIG__ = 5;
pub const __PRAGMA_REDEFINE_EXTNAME = 1;
pub const HAVE_STDLIB_H = 1;
pub const __CPU_MASK_TYPE = __SYSCALL_ULONG_TYPE;
pub const FOPEN_MAX = 16;
pub const __UINTMAX_WIDTH__ = 64;
pub const HAVE_STRCASECMP = 1;
pub const __INT64_FMTi__ = c"li";
pub const HAVE_TANF = 1;
pub const __UINT_FAST64_FMTu__ = c"lu";
pub const SCNuLEAST8 = c"hhu";
pub const INT_LEAST16_MIN = if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Pointer) @ptrCast(-32767, -1) else if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Int) @intToPtr(-32767, -1) else (-32767)(-1);
pub const __INT_FAST16_TYPE__ = short;
pub const SDL_ASSEMBLY_ROUTINES = 1;
pub const __DBL_MAX_10_EXP__ = 308;
pub const __LDBL_MIN__ = 0.000000;
pub const PRIoLEAST32 = c"o";
pub const __CLANG_ATOMIC_LLONG_LOCK_FREE = 2;
pub const __FSFILCNT64_T_TYPE = __UQUAD_TYPE;
pub const __GID_T_TYPE = __U32_TYPE;
pub const HAVE_LIBC = 1;
pub const SDL_TIMER_UNIX = 1;
pub const _DEFAULT_SOURCE = 1;
pub const __FD_SETSIZE = 1024;
pub const __LDBL_DECIMAL_DIG__ = 21;
pub const _STRUCT_TIMEVAL = 1;
pub const __UINT_LEAST64_FMTX__ = c"lX";
pub const __clang_minor__ = 0;
pub const _IO_MAGIC_MASK = 4294901760;
pub const INTMAX_MAX = if (@typeId(@typeOf(9223372036854775807)) == @import("builtin").TypeId.Pointer) @ptrCast(__INT64_C, 9223372036854775807) else if (@typeId(@typeOf(9223372036854775807)) == @import("builtin").TypeId.Int) @intToPtr(__INT64_C, 9223372036854775807) else __INT64_C(9223372036854775807);
pub const __SIZEOF_FLOAT128__ = 16;
pub const __CLOCKID_T_TYPE = __S32_TYPE;
pub const __UINT_FAST64_FMTo__ = c"lo";
pub const INT_FAST16_MIN = if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Pointer) @ptrCast(-c_long(9223372036854775807), -1) else if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Int) @intToPtr(-c_long(9223372036854775807), -1) else (-c_long(9223372036854775807))(-1);
pub const __DBL_MAX__ = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878;
pub const __UINT64_FMTx__ = c"lx";
pub const P_tmpdir = c"/tmp";
pub const SDL_HAPTIC_LINUX = 1;
pub const HAVE_CALLOC = 1;
pub const SDL_PRIx64 = PRIx64;
pub const SCNd8 = c"hhd";
pub const __WCOREFLAG = 128;
pub const SEEK_END = 2;
pub const __SLONG32_TYPE = int;
pub const PRIoLEAST8 = c"o";
pub const _DEBUG = 1;
pub const INT32_MIN = if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Pointer) @ptrCast(-2147483647, -1) else if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Int) @intToPtr(-2147483647, -1) else (-2147483647)(-1);
pub const __restrict_arr = __restrict;
pub const HAVE_CTYPE_H = 1;
pub const __UINT8_FMTX__ = c"hhX";
pub const HAVE_VSSCANF = 1;
pub const UINT_FAST8_MAX = 255;
pub const __UINTPTR_WIDTH__ = 64;
pub const _IO_off_t = __off_t;
pub const HAVE_ATAN = 1;
pub const __time_t_defined = 1;
pub const __WNOTHREAD = 536870912;
pub const HAVE_ABS = 1;
pub const SCNi8 = c"hhi";
pub const SDL_INPUT_LINUXEV = 1;
pub const __k8 = 1;
pub const __DADDR_T_TYPE = __S32_TYPE;
pub const __UINT8_FMTx__ = c"hhx";
pub const __INTMAX_C_SUFFIX__ = L;
pub const __ORDER_LITTLE_ENDIAN__ = 1234;
pub const __INT16_FMTd__ = c"hd";
pub const __SUSECONDS_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 = 1;
pub const M_LN2 = 0.693147;
pub const __INTMAX_WIDTH__ = 64;
pub const __INO64_T_TYPE = __UQUAD_TYPE;
pub const __CLANG_ATOMIC_BOOL_LOCK_FREE = 2;
pub const EXIT_FAILURE = 1;
pub const __USE_POSIX = 1;
pub const PRIX16 = c"X";
pub const __SIZE_FMTo__ = c"lo";
pub const __PDP_ENDIAN = 3412;
pub const PRIiFAST8 = c"i";
pub const __INT_FAST8_FMTi__ = c"hhi";
pub const SDL_THREAD_PTHREAD_RECURSIVE_MUTEX = 1;
pub const __UINT_LEAST32_FMTo__ = c"o";
pub const MATH_ERRNO = 1;
pub const __UINT_FAST16_FMTx__ = c"hx";
pub const __FLT_MIN_EXP__ = -125;
pub const _SIGSET_H_types = 1;
pub const _IO_NO_WRITES = 8;
pub const __UINT_LEAST64_FMTu__ = c"lu";
pub const __GCC_ATOMIC_LONG_LOCK_FREE = 2;
pub const HAVE_STRNCASECMP = 1;
pub const SDL_OUT_BYTECAP = x;
pub const __INT_FAST64_FMTd__ = c"ld";
pub const __MATH_DECLARING_DOUBLE = 1;
pub const SDL_VIDEO_OPENGL_EGL = 1;
pub const INT_LEAST8_MIN = -128;
pub const __STDC_NO_THREADS__ = 1;
pub const __CLANG_ATOMIC_LONG_LOCK_FREE = 2;
pub const __USING_NAMESPACE_STD = name;
pub const __GXX_ABI_VERSION = 1002;
pub const INTPTR_MIN = if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Pointer) @ptrCast(-c_long(9223372036854775807), -1) else if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Int) @intToPtr(-c_long(9223372036854775807), -1) else (-c_long(9223372036854775807))(-1);
pub const __FLT_MANT_DIG__ = 24;
pub const __UINT_FAST64_FMTx__ = c"lx";
pub const __STDC__ = 1;
pub const __INTPTR_FMTd__ = c"ld";
pub const __GNUC_PATCHLEVEL__ = 1;
pub const __SIZE_WIDTH__ = 64;
pub const __UINT_LEAST8_FMTx__ = c"hhx";
pub const __INT_LEAST64_FMTi__ = c"li";
pub const HAVE_MPROTECT = 1;
pub const SCNu8 = c"hhu";
pub const HAVE_SEM_TIMEDWAIT = 1;
pub const M_LN10 = 2.302585;
pub const __INT_FAST16_MAX__ = 32767;
pub const __CLANG_ATOMIC_CHAR16_T_LOCK_FREE = 2;
pub const HAVE_SA_SIGACTION = 1;
pub const HAVE_STRRCHR = 1;
pub const __have_pthread_attr_t = 1;
pub const _IO_SHOWPOINT = 256;
pub const __INT_MAX__ = 2147483647;
pub const SDL_VIDEO_DRIVER_X11_XCURSOR = 1;
pub const __BLKSIZE_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __DBL_DENORM_MIN__ = 0.000000;
pub const __clang_major__ = 7;
pub const __FLT16_MANT_DIG__ = 11;
pub const _IO_fpos_t = _G_fpos_t;
pub const UINTPTR_MAX = c_ulong(18446744073709551615);
pub const DOMAIN = 1;
pub const HAVE_PUTENV = 1;
pub const _G_BUFSIZ = 8192;
pub const SDL_VIDEO_DRIVER_X11_XRANDR = 1;
pub const __FLT_DENORM_MIN__ = 0.000000;
pub const PRIXFAST8 = c"X";
pub const __BIG_ENDIAN = 4321;
pub const __UINT_LEAST16_MAX__ = 65535;
pub const SIG_ATOMIC_MIN = if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Pointer) @ptrCast(-2147483647, -1) else if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Int) @intToPtr(-2147483647, -1) else (-2147483647)(-1);
pub const X_TLOSS = 14148475504056880.000000;
pub const __LDBL_HAS_DENORM__ = 1;
pub const __LDBL_HAS_QUIET_NAN__ = 1;
pub const TMP_MAX = 238328;
pub const HAVE_STRCMP = 1;
pub const __UINT_FAST8_MAX__ = 255;
pub const __DBL_MIN_10_EXP__ = -307;
pub const __SIZEOF_PTHREAD_MUTEX_T = 40;
pub const __PRI64_PREFIX = c"l";
pub const FP_ILOGB0 = if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Pointer) @ptrCast(-2147483647, -1) else if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Int) @intToPtr(-2147483647, -1) else (-2147483647)(-1);
pub const __UINT8_FMTu__ = c"hhu";
pub const __OFF_T_MATCHES_OFF64_T = 1;
pub const __RLIM64_T_TYPE = __UQUAD_TYPE;
pub const _IO_UNITBUF = 8192;
pub const _IO_UPPERCASE = 512;
pub const __UINT16_FMTu__ = c"hu";
pub const HAVE_GETENV = 1;
pub const __SIZE_FMTu__ = c"lu";
pub const __LDBL_MIN_EXP__ = -16381;
pub const __UINT_FAST32_FMTu__ = c"u";
pub const SIZE_MAX = c_ulong(18446744073709551615);
pub const __BYTE_ORDER = __LITTLE_ENDIAN;
pub const __clang_patchlevel__ = 0;
pub const _IOS_OUTPUT = 2;
pub const PRId16 = c"d";
pub const PRIuLEAST32 = c"u";
pub const __LINUX__ = 1;
pub const EOF = -1;
pub const __FXSR__ = 1;
pub const SDL_PRIu64 = PRIu64;
pub const _IOLBF = 1;
pub const SCNx8 = c"hhx";
pub const __UINT32_FMTx__ = c"x";
pub const HAVE_ALLOCA = 1;
pub const _IO_file_flags = _flags;
pub const PRIuLEAST16 = c"u";
pub const __UINT32_FMTu__ = c"u";
pub const _IO_IN_BACKUP = 256;
pub const PRIX32 = c"X";
pub const WNOHANG = 1;
pub const __SIZEOF_PTHREAD_COND_T = 48;
pub const _IO_uid_t = __uid_t;
pub const __SIZE_MAX__ = c_ulong(18446744073709551615);
pub const SCNxLEAST32 = c"x";
pub const _IOS_TRUNC = 16;
pub const __USE_ISOC11 = 1;
pub const __tune_k8__ = 1;
pub const UINT32_MAX = c_uint(4294967295);
pub const __x86_64__ = 1;
pub const __WORDSIZE_TIME64_COMPAT32 = 1;
pub const __UINT64_C_SUFFIX__ = UL;
pub const __UINTMAX_FMTx__ = c"lx";
pub const __INT_LEAST16_MAX__ = 32767;
pub const __clock_t_defined = 1;
pub const _IO_FLAGS2_NOTCANCEL = 2;
pub const __UINT32_FMTo__ = c"o";
pub const _SYS_SELECT_H = 1;
pub const _IONBF = 2;
pub const _SYS_TYPES_H = 1;
pub const UINT64_MAX = if (@typeId(@typeOf(18446744073709551615)) == @import("builtin").TypeId.Pointer) @ptrCast(__UINT64_C, 18446744073709551615) else if (@typeId(@typeOf(18446744073709551615)) == @import("builtin").TypeId.Int) @intToPtr(__UINT64_C, 18446744073709551615) else __UINT64_C(18446744073709551615);
pub const __INT_LEAST16_TYPE__ = short;
pub const SCNi16 = c"hi";
pub const HAVE_STRTOLL = 1;
pub const _IO_DONT_CLOSE = 32768;
pub const HAVE_IBUS_IBUS_H = 1;
pub const __ORDER_BIG_ENDIAN__ = 4321;
pub const __LDBL_MIN_10_EXP__ = -4931;
pub const __SIZEOF_INT__ = 4;
pub const __USE_POSIX_IMPLICITLY = 1;
pub const INT8_MIN = -128;
pub const WCHAR_MAX = __WCHAR_MAX;
pub const _IO_ERR_SEEN = 32;
pub const _IO_size_t = size_t;
pub const __amd64 = 1;
pub const __OBJC_BOOL_IS_BOOL = 0;
pub const M_E = 2.718282;
pub const __LDBL_MAX_10_EXP__ = 4932;
pub const __SIZEOF_INT128__ = 16;
pub const HAVE_ATOF = 1;
pub const HAVE_SETJMP = 1;
pub const _IO_IS_FILEBUF = 8192;
pub const HAVE_STRNCMP = 1;
pub const __linux = 1;
pub const HAVE_LIBUDEV_H = 1;
pub const __SIZEOF_PTHREAD_MUTEXATTR_T = 4;
pub const WCHAR_MIN = __WCHAR_MIN;
pub const _Mfloat_ = float;
pub const __clang__ = 1;
pub const INT_FAST16_MAX = c_long(9223372036854775807);
pub const TLOSS = 5;
pub const _Mdouble_END_NAMESPACE = __END_NAMESPACE_STD;
pub const _CTYPE_H = 1;
pub const __LDBL_DIG__ = 18;
pub const __GCC_ATOMIC_CHAR32_T_LOCK_FREE = 2;
pub const M_PI = 3.141593;
pub const __UINT64_FMTo__ = c"lo";
pub const __INT_FAST32_FMTd__ = c"d";
pub const BIG_ENDIAN = __BIG_ENDIAN;
pub const __ATOMIC_ACQ_REL = 4;
pub const SDL_VIDEO_RENDER_OGL_ES2 = 1;
pub const _OLD_STDIO_MAGIC = 4206624768;
pub const SCNxFAST8 = c"hhx";
pub const HAVE_COS = 1;
pub const __OPENCL_MEMORY_SCOPE_SUB_GROUP = 4;
pub const _ENDIAN_H = 1;
pub const ____mbstate_t_defined = 1;
pub const __MATH_DECLARE_LDOUBLE = 1;
pub const __GLIBC__ = 2;
pub const UINT_FAST64_MAX = if (@typeId(@typeOf(18446744073709551615)) == @import("builtin").TypeId.Pointer) @ptrCast(__UINT64_C, 18446744073709551615) else if (@typeId(@typeOf(18446744073709551615)) == @import("builtin").TypeId.Int) @intToPtr(__UINT64_C, 18446744073709551615) else __UINT64_C(18446744073709551615);
pub const _IO_HAVE_ST_BLKSIZE = _G_HAVE_ST_BLKSIZE;
pub const __WORDSIZE = 64;
pub const __INT64_MAX__ = c_long(9223372036854775807);
pub const HAVE_SQRTF = 1;
pub const __INT_LEAST64_MAX__ = c_long(9223372036854775807);
pub const HAVE_INTTYPES_H = 1;
pub const __OPENCL_MEMORY_SCOPE_WORK_ITEM = 0;
pub const __FLT_HAS_DENORM__ = 1;
pub const __DECIMAL_DIG__ = __LDBL_DECIMAL_DIG__;
pub const __SYSCALL_SLONG_TYPE = __SLONGWORD_TYPE;
pub const __DEV_T_TYPE = __UQUAD_TYPE;
pub const __INT32_FMTi__ = c"i";
pub const __DBL_HAS_INFINITY__ = 1;
pub const __FINITE_MATH_ONLY__ = 0;
pub const _IO_BUFSIZ = _G_BUFSIZ;
pub const __GCC_ATOMIC_TEST_AND_SET_TRUEVAL = 1;
pub const _STDC_PREDEF_H = 1;
pub const __FLT16_MAX_EXP__ = 15;
pub const SDL_VIDEO_DRIVER_X11_XINPUT2_SUPPORTS_MULTITOUCH = 1;
pub const __GNUC_VA_LIST = 1;
pub const EXIT_SUCCESS = 0;
pub const __SIZEOF_FLOAT__ = 4;
pub const SCNuLEAST16 = c"hu";
pub const INT_FAST64_MAX = if (@typeId(@typeOf(9223372036854775807)) == @import("builtin").TypeId.Pointer) @ptrCast(__INT64_C, 9223372036854775807) else if (@typeId(@typeOf(9223372036854775807)) == @import("builtin").TypeId.Int) @intToPtr(__INT64_C, 9223372036854775807) else __INT64_C(9223372036854775807);
pub const __INT_LEAST32_FMTi__ = c"i";
pub const __LDBL_EPSILON__ = 0.000000;
pub const __STDC_UTF_32__ = 1;
pub const __INT_LEAST32_FMTd__ = c"d";
pub const HAVE_STRDUP = 1;
pub const __SIG_ATOMIC_WIDTH__ = 32;
pub const __FD_ZERO_STOS = c"stosq";
pub const __UINT_FAST64_FMTX__ = c"lX";
pub const _IO_wint_t = wint_t;
pub const __SIZEOF_DOUBLE__ = 8;
pub const LITTLE_ENDIAN = __LITTLE_ENDIAN;
pub const __GCC_ATOMIC_SHORT_LOCK_FREE = 2;
pub const SDL_AUDIO_DRIVER_ALSA = 1;
pub const _STDLIB_H = 1;
pub const SDL_AUDIO_DRIVER_SNDIO = 1;
pub const SIZEOF_VOIDP = 8;
pub const BYTE_ORDER = __BYTE_ORDER;
pub const __SIZE_FMTX__ = c"lX";
pub const SCNuFAST8 = c"hhu";
pub const __ID_T_TYPE = __U32_TYPE;
pub const SDL_INOUT_Z_CAP = x;
pub const M_PI_2 = 1.570796;
pub const __USING_NAMESPACE_C99 = name;
pub const HAVE_MATH_H = 1;
pub const _BITS_TYPES_H = 1;
pub const _SYS_SYSMACROS_H = 1;
pub const SDL_THREAD_PTHREAD = 1;
pub const __STDC_IEC_559_COMPLEX__ = 1;
pub const __FSBLKCNT64_T_TYPE = __UQUAD_TYPE;
pub const SCNoLEAST32 = c"o";
pub const __DBL_MIN_EXP__ = -1021;
pub const __lldiv_t_defined = 1;
pub const __USECONDS_T_TYPE = __U32_TYPE;
pub const __PID_T_TYPE = __S32_TYPE;
pub const _Mdouble_BEGIN_NAMESPACE = __BEGIN_NAMESPACE_STD;
pub const _ALLOCA_H = 1;
pub const _IO_USER_BUF = 1;
pub const __DBL_HAS_DENORM__ = 1;
pub const __FLOAT128__ = 1;
pub const __FLT16_HAS_QUIET_NAN__ = 1;
pub const __ATOMIC_RELAXED = 0;
pub const __SIZEOF_SHORT__ = 2;
pub const ____FILE_defined = 1;
pub const __UINT16_FMTX__ = c"hX";
pub const __UINT_FAST16_MAX__ = 65535;
pub const __CLANG_ATOMIC_SHORT_LOCK_FREE = 2;
pub const PRIxLEAST8 = c"x";
pub const WEXITED = 4;
pub const __MODE_T_TYPE = __U32_TYPE;
pub const HAVE_SIGACTION = 1;
pub const PTRDIFF_MAX = c_long(9223372036854775807);
pub const __WINT_MAX__ = c_uint(4294967295);
pub const _STDIO_H = 1;
pub const __STDC_ISO_10646__ = c_long(201605);
pub const __BLKCNT64_T_TYPE = __SQUAD_TYPE;
pub const __STDC_HOSTED__ = 1;
pub const SDL_VIDEO_DRIVER_WAYLAND = 1;
pub const __INT_LEAST32_TYPE__ = int;
pub const __SCHAR_MAX__ = 127;
pub const __USE_POSIX2 = 1;
pub const HAVE_TAN = 1;
pub const __FLT16_MIN_EXP__ = -14;
pub const __USE_XOPEN2K = 1;
pub const __USE_FORTIFY_LEVEL = 0;
pub const __ELF__ = 1;
pub const SCNxLEAST16 = c"hx";
pub const HAVE_STRSTR = 1;
pub const __LDBL_MANT_DIG__ = 64;
pub const SDL_VIDEO_DRIVER_X11_CONST_PARAM_XEXTADDDISPLAY = 1;
pub const __USE_XOPEN2K8 = 1;
pub const __CLANG_ATOMIC_INT_LOCK_FREE = 2;
pub const INT16_MIN = if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Pointer) @ptrCast(-32767, -1) else if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Int) @intToPtr(-32767, -1) else (-32767)(-1);
pub const PRIoFAST8 = c"o";
pub const __UINT64_FMTX__ = c"lX";
pub const HAVE_MEMCPY = 1;
pub const __DBL_MANT_DIG__ = 53;
pub const HAVE_QSORT = 1;
pub const __INT_LEAST32_MAX__ = 2147483647;
pub const _IO_BAD_SEEN = 16384;
pub const _STRING_H = 1;
pub const __OPENCL_MEMORY_SCOPE_WORK_GROUP = 1;
pub const __USE_ISOC95 = 1;
pub const PRIuFAST8 = c"u";
pub const _IOS_NOCREATE = 32;
pub const __UID_T_TYPE = __U32_TYPE;
pub const HAVE_UNSETENV = 1;
pub const __timespec_defined = 1;
pub const __LITTLE_ENDIAN__ = 1;
pub const SCNiLEAST8 = c"hhi";
pub const HAVE_FLOOR = 1;
pub const _IO_LEFT = 2;
pub const PRIi16 = c"i";
pub const __SSE__ = 1;
pub const __FLT_HAS_QUIET_NAN__ = 1;
pub const __SIZEOF_SIZE_T__ = 8;
pub const HAVE_SYSCONF = 1;
pub const __UINT_LEAST16_FMTo__ = c"ho";
pub const SCNxLEAST8 = c"hhx";
pub const SCNdLEAST8 = c"hhd";
pub const __CLANG_ATOMIC_WCHAR_T_LOCK_FREE = 2;
pub const _IO_IS_APPENDING = 4096;
pub const _IO_BOOLALPHA = 65536;
pub const __PRIPTR_PREFIX = c"l";
pub const __UINTPTR_MAX__ = c_ulong(18446744073709551615);
pub const _BITS_PTHREADTYPES_H = 1;
pub const UINT16_MAX = 65535;
pub const __UINT_LEAST8_FMTu__ = c"hhu";
pub const PRIo32 = c"o";
pub const SDL_INPUT_LINUXKD = 1;
pub const _IO_CURRENTLY_PUTTING = 2048;
pub const HAVE_FSEEKO = 1;
pub const __SYSCALL_ULONG_TYPE = __ULONGWORD_TYPE;
pub const __warnattr = msg;
pub const _IO_SHOWPOS = 1024;
pub const __STD_TYPE = typedef;
pub const SDL_VIDEO_DRIVER_DUMMY = 1;
pub const __SIZEOF_WCHAR_T__ = 4;
pub const PRIo16 = c"o";
pub const __LDBL_MAX__ = inf;
pub const M_2_SQRTPI = 1.128379;
pub const _LP64 = 1;
pub const PRIdFAST8 = c"d";
pub const _IO_UNIFIED_JUMPTABLES = 1;
pub const FD_SETSIZE = __FD_SETSIZE;
pub const linux = 1;
pub const PRIXLEAST8 = c"X";
pub const __FLT_DIG__ = 6;
pub const __INT16_MAX__ = 32767;
pub const __FLT_MAX_10_EXP__ = 38;
pub const _FEATURES_H = 1;
pub const __UINT_LEAST16_FMTu__ = c"hu";
pub const __CLANG_ATOMIC_POINTER_LOCK_FREE = 2;
pub const __UINTPTR_FMTX__ = c"lX";
pub const __WINT_WIDTH__ = 32;
pub const SCNdLEAST16 = c"hd";
pub const HAVE_SIGNAL_H = 1;
pub const HAVE_BCOPY = 1;
pub const __SHRT_MAX__ = 32767;
pub const __GCC_ATOMIC_BOOL_LOCK_FREE = 2;
pub const SCNd32 = c"d";
pub const __INT32_FMTd__ = c"d";
pub const __DBL_MIN__ = 0.000000;
pub const HAVE_SIN = 1;
pub const HAVE_FSEEKO64 = 1;
pub const __S32_TYPE = int;
pub const __INTPTR_WIDTH__ = 64;
pub const PRIiLEAST32 = c"i";
pub const __FLT16_MAX_10_EXP__ = 4;
pub const __INT_FAST32_TYPE__ = int;
pub const _IOS_BIN = 128;
pub const HAVE_DBUS_DBUS_H = 1;
pub const PRIiLEAST8 = c"i";
pub const SDL_VIDEO_OPENGL = 1;
pub const __UINT_FAST32_FMTX__ = c"X";
pub const _POSIX_SOURCE = 1;
pub const __LITTLE_ENDIAN = 1234;
pub const __gnu_linux__ = 1;
pub const HAVE_STRTOL = 1;
pub const __FILE_defined = 1;
pub const _G_HAVE_MMAP = 1;
pub const _IO_OCT = 32;
pub const __timer_t_defined = 1;
pub const __FLT16_HAS_INFINITY__ = 1;
pub const SDL_AUDIO_DRIVER_PULSEAUDIO = 1;
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 = 1;
pub const INT_FAST8_MIN = -128;
pub const __GCC_ATOMIC_INT_LOCK_FREE = 2;
pub const _IO_NO_READS = 4;
pub const _INTTYPES_H = 1;
pub const __OPENCL_MEMORY_SCOPE_ALL_SVM_DEVICES = 3;
pub const __INT_FAST8_FMTd__ = c"hhd";
pub const __KEY_T_TYPE = __S32_TYPE;
pub const SEEK_SET = 0;
pub const __USE_POSIX199506 = 1;
pub const __INT32_TYPE__ = int;
pub const SCNiLEAST32 = c"i";
pub const __FLT_MIN__ = 0.000000;
pub const __INT8_FMTd__ = c"hhd";
pub const _IO_FIXED = 4096;
pub const INT64_MAX = if (@typeId(@typeOf(9223372036854775807)) == @import("builtin").TypeId.Pointer) @ptrCast(__INT64_C, 9223372036854775807) else if (@typeId(@typeOf(9223372036854775807)) == @import("builtin").TypeId.Int) @intToPtr(__INT64_C, 9223372036854775807) else __INT64_C(9223372036854775807);
pub const __FLT_MAX_EXP__ = 128;
pub const __INT_FAST64_FMTi__ = c"li";
pub const SDL_VIDEO_OPENGL_GLX = 1;
pub const __INT_LEAST8_FMTd__ = c"hhd";
pub const SDL_VIDEO_DRIVER_X11_XDBE = 1;
pub const __UINT_LEAST32_FMTX__ = c"X";
pub const __UINTMAX_MAX__ = c_ulong(18446744073709551615);
pub const _IO_ssize_t = __ssize_t;
pub const __UINT_FAST16_FMTo__ = c"ho";
pub const SDL_VIDEO_DRIVER_X11_XSHAPE = 1;
pub const PRIdLEAST8 = c"d";
pub const __LDBL_REDIR_DECL = name;
pub const __OFF64_T_TYPE = __SQUAD_TYPE;
pub const _G_HAVE_MREMAP = 1;
pub const M_2_PI = 0.636620;
pub const __SIZE_FMTx__ = c"lx";
pub const _G_va_list = __gnuc_va_list;
pub const __DBL_EPSILON__ = 0.000000;
pub const INT_FAST32_MIN = if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Pointer) @ptrCast(-c_long(9223372036854775807), -1) else if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Int) @intToPtr(-c_long(9223372036854775807), -1) else (-c_long(9223372036854775807))(-1);
pub const _IO_DEC = 16;
pub const SDL_VIDEO_DRIVER_X11_XVIDMODE = 1;
pub const INT32_MAX = 2147483647;
pub const __BLKCNT_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const PLOSS = 6;
pub const __CHAR_BIT__ = 8;
pub const HAVE_STRINGS_H = 1;
pub const __INT16_FMTi__ = c"hi";
pub const SEEK_CUR = 1;
pub const __GNUC_MINOR__ = 2;
pub const INT_LEAST32_MIN = if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Pointer) @ptrCast(-2147483647, -1) else if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Int) @intToPtr(-2147483647, -1) else (-2147483647)(-1);
pub const __UINT_FAST32_MAX__ = c_uint(4294967295);
pub const _IO_DELETE_DONT_CLOSE = 64;
pub const NFDBITS = __NFDBITS;
pub const __FLT_EPSILON__ = 0.000000;
pub const INT_FAST32_MAX = c_long(9223372036854775807);
pub const __llvm__ = 1;
pub const HAVE_GCC_ATOMICS = 1;
pub const __UINT_FAST64_MAX__ = c_ulong(18446744073709551615);
pub const __INT_FAST32_FMTi__ = c"i";
pub const HAVE_MALLOC = 1;
pub const INT16_MAX = 32767;
pub const __FLT_HAS_INFINITY__ = 1;
pub const __FSWORD_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const NULL = if (@typeId(@typeOf(0)) == @import("builtin").TypeId.Pointer) @ptrCast([*]void, 0) else if (@typeId(@typeOf(0)) == @import("builtin").TypeId.Int) @intToPtr([*]void, 0) else ([*]void)(0);
pub const __OFF_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const _IO_cleanup_region_end = _Doit;
pub const __GCC_ATOMIC_CHAR16_T_LOCK_FREE = 2;
pub const __UINT32_FMTX__ = c"X";
pub const FP_ILOGBNAN = if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Pointer) @ptrCast(-2147483647, -1) else if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Int) @intToPtr(-2147483647, -1) else (-2147483647)(-1);
pub const _Mdouble_ = double;
pub const UINT_LEAST8_MAX = 255;
pub const _IO_fpos64_t = _G_fpos64_t;
pub const __UINT32_C_SUFFIX__ = U;
pub const __INT32_MAX__ = 2147483647;
pub const __GCC_ATOMIC_CHAR_LOCK_FREE = 2;
pub const _IO_FLAGS2_MMAP = 1;
pub const SDL_VIDEO_OPENGL_ES2 = 1;
pub const __BIT_TYPES_DEFINED__ = 1;
pub const __DBL_HAS_QUIET_NAN__ = 1;
pub const HAVE_VSNPRINTF = 1;
pub const __STDC_UTF_16__ = 1;
pub const __UINT_LEAST32_MAX__ = c_uint(4294967295);
pub const __ATOMIC_RELEASE = 3;
pub const __UINTMAX_C_SUFFIX__ = UL;
pub const __WCHAR_MAX = __WCHAR_MAX__;
pub const SCNuLEAST32 = c"u";
pub const HAVE_NANOSLEEP = 1;
pub const __SIZEOF_LONG_DOUBLE__ = 16;
pub const HAVE_CLOCK_GETTIME = 1;
pub const __ldiv_t_defined = 1;
pub const __ORDER_PDP_ENDIAN__ = 3412;
pub const __SIZEOF_PTHREAD_BARRIER_T = 32;
pub const PRIdLEAST16 = c"d";
pub const FILENAME_MAX = 4096;
pub const PRIx16 = c"x";
pub const __INT16_TYPE__ = short;
pub const HAVE_SQRT = 1;
pub const SDL_VIDEO_DRIVER_X11_XSCRNSAVER = 1;
pub const __SSE2_MATH__ = 1;
pub const UINT_LEAST16_MAX = 65535;
pub const UINT_LEAST32_MAX = c_uint(4294967295);
pub const __INT_FAST8_MAX__ = 127;
pub const _IO_va_list = _G_va_list;
pub const PRIXLEAST16 = c"X";
pub const __STDC_IEC_559__ = 1;
pub const __USE_ISOC99 = 1;
pub const __INTPTR_MAX__ = c_long(9223372036854775807);
pub const HAVE_ATOI = 1;
pub const PRIi8 = c"i";
pub const __UINT64_FMTu__ = c"lu";
pub const __SSE2__ = 1;
pub const __BYTE_ORDER__ = __ORDER_LITTLE_ENDIAN__;
pub const SCNo32 = c"o";
pub const UNDERFLOW = 4;
pub const __INTMAX_FMTi__ = c"li";
pub const SDL_AUDIO_DRIVER_DUMMY = 1;
pub const HAVE_SETENV = 1;
pub const __GNUC__ = 4;
pub const _G_config_h = 1;
pub const __UINT32_MAX__ = c_uint(4294967295);
pub const _IOS_INPUT = 1;
pub const _POSIX_C_SOURCE = c_long(200809);
pub const _XLOCALE_H = 1;
pub const __DBL_MAX_EXP__ = 1024;
pub const __INT8_FMTi__ = c"hhi";
pub const L_tmpnam = 20;
pub const SDL_OUT_Z_CAP = x;
pub const __FLT16_MIN_10_EXP__ = -13;
pub const SCNu16 = c"hu";
pub const SDL_OUT_CAP = x;
pub const _IOS_NOREPLACE = 64;
pub const WINT_MAX = c_uint(4294967295);
pub const ____gwchar_t_defined = 1;
pub const MATH_ERREXCEPT = 2;
pub const NAN = if (@typeId(@typeOf(c"")) == @import("builtin").TypeId.Pointer) @ptrCast(__builtin_nanf, c"") else if (@typeId(@typeOf(c"")) == @import("builtin").TypeId.Int) @intToPtr(__builtin_nanf, c"") else __builtin_nanf(c"");
pub const SDL_USE_IME = 1;
pub const UINT_FAST16_MAX = c_ulong(18446744073709551615);
pub const _IOS_APPEND = 8;
pub const __INT_FAST64_MAX__ = c_long(9223372036854775807);
pub const HAVE_MEMORY_H = 1;
pub const __ATOMIC_SEQ_CST = 5;
pub const SDL_LOADSO_DLOPEN = 1;
pub const __SIZEOF_LONG_LONG__ = 8;
pub const HAVE_SINF = 1;
pub const SDL_stack_free = data;
pub const __GNUC_STDC_INLINE__ = 1;
pub const M_SQRT2 = 1.414214;
pub const __UINT8_MAX__ = 255;
pub const _STRINGS_H = 1;
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 = 1;
pub const __UINT16_FMTo__ = c"ho";
pub const __OPENCL_MEMORY_SCOPE_DEVICE = 2;
pub const __SIZEOF_PTHREAD_CONDATTR_T = 4;
pub const INT_LEAST8_MAX = 127;
pub const HAVE_SYS_TYPES_H = 1;
pub const __SIZEOF_POINTER__ = 8;
pub const __TIMER_T_TYPE = [*]void;
pub const __unix = 1;
pub const HAVE_STRTOUL = 1;
pub const HAVE_MEMCMP = 1;
pub const _MATH_H_MATHDEF = 1;
pub const __INT_FAST16_FMTd__ = c"hd";
pub const unix = 1;
pub const __UINT_LEAST32_FMTu__ = c"u";
pub const PRIu16 = c"u";
pub const __ENUM_IDTYPE_T = 1;
pub const PRId32 = c"d";
pub const __FLT_MAX__ = 340282346999999984391321947108527833088.000000;
pub const BUFSIZ = _IO_BUFSIZ;
pub const HAVE_ICONV = 1;
pub const __GCC_ATOMIC_WCHAR_T_LOCK_FREE = 2;
pub const __k8__ = 1;
pub const _IO_pid_t = __pid_t;
pub const PRIx32 = c"x";
pub const SCNoFAST8 = c"hho";
pub const __ATOMIC_CONSUME = 1;
pub const __unix__ = 1;
pub const __LDBL_HAS_INFINITY__ = 1;
pub const HAVE_POW = 1;
pub const __GNU_LIBRARY__ = 6;
pub const __FLT_MIN_10_EXP__ = -37;
pub const __UINTPTR_FMTo__ = c"lo";
pub const HAVE_FABS = 1;
pub const __INT_LEAST16_FMTd__ = c"hd";
pub const __UINTPTR_FMTx__ = c"lx";
pub const SDL_VIDEO_DRIVER_X11 = 1;
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 = 1;
pub const __INT_LEAST64_FMTd__ = c"ld";
pub const __attribute_alloc_size__ = params;
pub const PRIxFAST8 = c"x";
pub const __INT_LEAST8_MAX__ = 127;
pub const _IO_INTERNAL = 8;
pub const SCNo16 = c"ho";
pub const HAVE_MEMSET = 1;
pub const OVERFLOW = 3;
pub const PRIxLEAST16 = c"x";
pub const __GCC_ATOMIC_POINTER_LOCK_FREE = 2;
pub const INT8_MAX = 127;
pub const HAVE_FREE = 1;
pub const L_ctermid = 9;
pub const HAVE_STRCHR = 1;
pub const SCNx16 = c"hx";
pub const __UINT_FAST8_FMTx__ = c"hhx";
pub const HAVE_STRLEN = 1;
pub const SCNi32 = c"i";
pub const SDL_VIDEO_DRIVER_WAYLAND_QT_TOUCH = 1;
pub const UINT_FAST32_MAX = c_ulong(18446744073709551615);
pub const __SIZEOF_PTHREAD_RWLOCK_T = 56;
pub const SDL_PRIX64 = PRIX64;
pub const __UINT16_FMTx__ = c"hx";
pub const SCNu32 = c"u";
pub const __UINTPTR_FMTu__ = c"lu";
pub const __UINT_LEAST16_FMTX__ = c"hX";
pub const SCNx32 = c"x";
pub const __amd64__ = 1;
pub const __UINT_FAST32_FMTo__ = c"o";
pub const HAVE_REALLOC = 1;
pub const __linux__ = 1;
pub const HUGE = 340282346999999984391321947108527833088.000000;
pub const __LP64__ = 1;
pub const __SYSCALL_WORDSIZE = 64;
pub const __PTRDIFF_FMTi__ = c"li";
pub const HAVE_STRTOULL = 1;
pub const _BITS_TYPESIZES_H = 1;
pub const HAVE_CEIL = 1;
pub const WCONTINUED = 8;
pub const PDP_ENDIAN = __PDP_ENDIAN;
pub const __SIZEOF_PTHREAD_BARRIERATTR_T = 4;
pub const _IO_HEX = 64;
pub const __LONG_LONG_MAX__ = c_longlong(9223372036854775807);
pub const SDL_VIDEO_DRIVER_X11_XINERAMA = 1;
pub const SDL_IN_BYTECAP = x;
pub const __INO_T_MATCHES_INO64_T = 1;
pub const INT_LEAST16_MAX = 32767;
pub const _IO_SHOWBASE = 128;
pub const WUNTRACED = 2;
pub const INT_LEAST32_MAX = 2147483647;
pub const __INTMAX_MAX__ = c_long(9223372036854775807);
pub const __UINT_LEAST32_FMTx__ = c"x";
pub const __WCHAR_MAX__ = 2147483647;
pub const _IO_TIED_PUT_GET = 1024;
pub const HAVE_STRING_H = 1;
pub const WSTOPPED = 2;
pub const __CLANG_ATOMIC_CHAR32_T_LOCK_FREE = 2;
pub const WNOWAIT = 16777216;
pub const __UINTMAX_FMTX__ = c"lX";
pub const STDC_HEADERS = 1;
pub const HAVE_MEMMOVE = 1;
pub const _IO_FLAGS2_USER_WBUF = 8;
pub const __WCLONE = 2147483648;
pub const SDL_VIDEO_DRIVER_X11_SUPPORTS_GENERIC_EVENTS = 1;
pub const SDL_PRIs64 = c"ld";
pub const timespec = struct_timespec;
pub const timeval = struct_timeval;
pub const __pthread_internal_list = struct___pthread_internal_list;
pub const __pthread_mutex_s = struct___pthread_mutex_s;
pub const _IO_marker = struct__IO_marker;
pub const __va_list_tag = struct___va_list_tag;
pub const _IO_jump_t = struct__IO_jump_t;
pub const __codecvt_result = enum___codecvt_result;
pub const _IO_FILE_plus = struct__IO_FILE_plus;
pub const random_data = struct_random_data;
pub const drand48_data = struct_drand48_data;
pub const __locale_data = struct___locale_data;
pub const __locale_struct = struct___locale_struct;
pub const exception = struct_exception;
pub const _SDL_iconv_t = struct__SDL_iconv_t;
