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
pub extern fn SDL_main(argc: c_int, argv: ?[*](?[*]u8)) c_int;
pub extern fn SDL_SetMainReady() void;
pub const SDL_ASSERTION_RETRY = 0;
pub const SDL_ASSERTION_BREAK = 1;
pub const SDL_ASSERTION_ABORT = 2;
pub const SDL_ASSERTION_IGNORE = 3;
pub const SDL_ASSERTION_ALWAYS_IGNORE = 4;
pub const SDL_AssertState = extern enum {
    SDL_ASSERTION_RETRY = 0,
    SDL_ASSERTION_BREAK = 1,
    SDL_ASSERTION_ABORT = 2,
    SDL_ASSERTION_IGNORE = 3,
    SDL_ASSERTION_ALWAYS_IGNORE = 4,
};
pub const struct_SDL_AssertData = extern struct {
    always_ignore: c_int,
    trigger_count: c_uint,
    condition: ?[*]const u8,
    filename: ?[*]const u8,
    linenum: c_int,
    function: ?[*]const u8,
    next: ?[*]const struct_SDL_AssertData,
};
pub const SDL_AssertData = struct_SDL_AssertData;
pub extern fn SDL_ReportAssertion(arg0: ?[*]SDL_AssertData, arg1: ?[*]const u8, arg2: ?[*]const u8, arg3: c_int) SDL_AssertState;
pub const SDL_AssertionHandler = ?extern fn(?[*]const SDL_AssertData, ?*c_void) SDL_AssertState;
pub extern fn SDL_SetAssertionHandler(handler: SDL_AssertionHandler, userdata: ?*c_void) void;
pub extern fn SDL_GetDefaultAssertionHandler() SDL_AssertionHandler;
pub extern fn SDL_GetAssertionHandler(puserdata: ?[*](?*c_void)) SDL_AssertionHandler;
pub extern fn SDL_GetAssertionReport() ?[*]const SDL_AssertData;
pub extern fn SDL_ResetAssertionReport() void;
pub const SDL_SpinLock = c_int;
pub extern fn SDL_AtomicTryLock(lock: ?[*]SDL_SpinLock) SDL_bool;
pub extern fn SDL_AtomicLock(lock: ?[*]SDL_SpinLock) void;
pub extern fn SDL_AtomicUnlock(lock: ?[*]SDL_SpinLock) void;
pub const SDL_atomic_t = extern struct {
    value: c_int,
};
pub extern fn SDL_AtomicCAS(a: ?[*]SDL_atomic_t, oldval: c_int, newval: c_int) SDL_bool;
pub extern fn SDL_AtomicSet(a: ?[*]SDL_atomic_t, v: c_int) c_int;
pub extern fn SDL_AtomicGet(a: ?[*]SDL_atomic_t) c_int;
pub extern fn SDL_AtomicAdd(a: ?[*]SDL_atomic_t, v: c_int) c_int;
pub extern fn SDL_AtomicCASPtr(a: ?[*](?*c_void), oldval: ?*c_void, newval: ?*c_void) SDL_bool;
pub extern fn SDL_AtomicSetPtr(a: ?[*](?*c_void), v: ?*c_void) ?*c_void;
pub extern fn SDL_AtomicGetPtr(a: ?[*](?*c_void)) ?*c_void;
pub extern fn SDL_SetError(fmt: ?[*]const u8) c_int;
pub extern fn SDL_GetError() ?[*]const u8;
pub extern fn SDL_ClearError() void;
pub const SDL_ENOMEM = 0;
pub const SDL_EFREAD = 1;
pub const SDL_EFWRITE = 2;
pub const SDL_EFSEEK = 3;
pub const SDL_UNSUPPORTED = 4;
pub const SDL_LASTERROR = 5;
pub const SDL_errorcode = extern enum {
    SDL_ENOMEM = 0,
    SDL_EFREAD = 1,
    SDL_EFWRITE = 2,
    SDL_EFSEEK = 3,
    SDL_UNSUPPORTED = 4,
    SDL_LASTERROR = 5,
};
pub extern fn SDL_Error(code: SDL_errorcode) c_int;
pub const struct_SDL_mutex = @OpaqueType();
pub const SDL_mutex = struct_SDL_mutex;
pub extern fn SDL_CreateMutex() ?*SDL_mutex;
pub extern fn SDL_LockMutex(mutex: ?*SDL_mutex) c_int;
pub extern fn SDL_TryLockMutex(mutex: ?*SDL_mutex) c_int;
pub extern fn SDL_UnlockMutex(mutex: ?*SDL_mutex) c_int;
pub extern fn SDL_DestroyMutex(mutex: ?*SDL_mutex) void;
pub const struct_SDL_semaphore = @OpaqueType();
pub const SDL_sem = struct_SDL_semaphore;
pub extern fn SDL_CreateSemaphore(initial_value: Uint32) ?*SDL_sem;
pub extern fn SDL_DestroySemaphore(sem: ?*SDL_sem) void;
pub extern fn SDL_SemWait(sem: ?*SDL_sem) c_int;
pub extern fn SDL_SemTryWait(sem: ?*SDL_sem) c_int;
pub extern fn SDL_SemWaitTimeout(sem: ?*SDL_sem, ms: Uint32) c_int;
pub extern fn SDL_SemPost(sem: ?*SDL_sem) c_int;
pub extern fn SDL_SemValue(sem: ?*SDL_sem) Uint32;
pub const struct_SDL_cond = @OpaqueType();
pub const SDL_cond = struct_SDL_cond;
pub extern fn SDL_CreateCond() ?*SDL_cond;
pub extern fn SDL_DestroyCond(cond: ?*SDL_cond) void;
pub extern fn SDL_CondSignal(cond: ?*SDL_cond) c_int;
pub extern fn SDL_CondBroadcast(cond: ?*SDL_cond) c_int;
pub extern fn SDL_CondWait(cond: ?*SDL_cond, mutex: ?*SDL_mutex) c_int;
pub extern fn SDL_CondWaitTimeout(cond: ?*SDL_cond, mutex: ?*SDL_mutex, ms: Uint32) c_int;
pub const struct_SDL_Thread = @OpaqueType();
pub const SDL_Thread = struct_SDL_Thread;
pub const SDL_threadID = c_ulong;
pub const SDL_TLSID = c_uint;
pub const SDL_THREAD_PRIORITY_LOW = 0;
pub const SDL_THREAD_PRIORITY_NORMAL = 1;
pub const SDL_THREAD_PRIORITY_HIGH = 2;
pub const SDL_ThreadPriority = extern enum {
    SDL_THREAD_PRIORITY_LOW = 0,
    SDL_THREAD_PRIORITY_NORMAL = 1,
    SDL_THREAD_PRIORITY_HIGH = 2,
};
pub const SDL_ThreadFunction = ?extern fn(?*c_void) c_int;
pub extern fn SDL_CreateThread(@"fn": SDL_ThreadFunction, name: ?[*]const u8, data: ?*c_void) ?*SDL_Thread;
pub extern fn SDL_GetThreadName(thread: ?*SDL_Thread) ?[*]const u8;
pub extern fn SDL_ThreadID() SDL_threadID;
pub extern fn SDL_GetThreadID(thread: ?*SDL_Thread) SDL_threadID;
pub extern fn SDL_SetThreadPriority(priority: SDL_ThreadPriority) c_int;
pub extern fn SDL_WaitThread(thread: ?*SDL_Thread, status: ?[*]c_int) void;
pub extern fn SDL_DetachThread(thread: ?*SDL_Thread) void;
pub extern fn SDL_TLSCreate() SDL_TLSID;
pub extern fn SDL_TLSGet(id: SDL_TLSID) ?*c_void;
pub extern fn SDL_TLSSet(id: SDL_TLSID, value: ?*const c_void, destructor: ?extern fn(?*c_void) void) c_int;
pub const struct_SDL_RWops = extern struct {
    size: ?extern fn(?[*]struct_SDL_RWops) Sint64,
    seek: ?extern fn(?[*]struct_SDL_RWops, Sint64, c_int) Sint64,
    read: ?extern fn(?[*]struct_SDL_RWops, ?*c_void, usize, usize) usize,
    write: ?extern fn(?[*]struct_SDL_RWops, ?*const c_void, usize, usize) usize,
    close: ?extern fn(?[*]struct_SDL_RWops) c_int,
    type: Uint32,
    hidden: extern union {
        stdio: extern struct {
            autoclose: SDL_bool,
            fp: ?[*]FILE,
        },
        mem: extern struct {
            base: ?[*]Uint8,
            here: ?[*]Uint8,
            stop: ?[*]Uint8,
        },
        unknown: extern struct {
            data1: ?*c_void,
            data2: ?*c_void,
        },
    },
};
pub const SDL_RWops = struct_SDL_RWops;
pub extern fn SDL_RWFromFile(file: ?[*]const u8, mode: ?[*]const u8) ?[*]SDL_RWops;
pub extern fn SDL_RWFromFP(fp: ?[*]FILE, autoclose: SDL_bool) ?[*]SDL_RWops;
pub extern fn SDL_RWFromMem(mem: ?*c_void, size: c_int) ?[*]SDL_RWops;
pub extern fn SDL_RWFromConstMem(mem: ?*const c_void, size: c_int) ?[*]SDL_RWops;
pub extern fn SDL_AllocRW() ?[*]SDL_RWops;
pub extern fn SDL_FreeRW(area: ?[*]SDL_RWops) void;
pub extern fn SDL_ReadU8(src: ?[*]SDL_RWops) Uint8;
pub extern fn SDL_ReadLE16(src: ?[*]SDL_RWops) Uint16;
pub extern fn SDL_ReadBE16(src: ?[*]SDL_RWops) Uint16;
pub extern fn SDL_ReadLE32(src: ?[*]SDL_RWops) Uint32;
pub extern fn SDL_ReadBE32(src: ?[*]SDL_RWops) Uint32;
pub extern fn SDL_ReadLE64(src: ?[*]SDL_RWops) Uint64;
pub extern fn SDL_ReadBE64(src: ?[*]SDL_RWops) Uint64;
pub extern fn SDL_WriteU8(dst: ?[*]SDL_RWops, value: Uint8) usize;
pub extern fn SDL_WriteLE16(dst: ?[*]SDL_RWops, value: Uint16) usize;
pub extern fn SDL_WriteBE16(dst: ?[*]SDL_RWops, value: Uint16) usize;
pub extern fn SDL_WriteLE32(dst: ?[*]SDL_RWops, value: Uint32) usize;
pub extern fn SDL_WriteBE32(dst: ?[*]SDL_RWops, value: Uint32) usize;
pub extern fn SDL_WriteLE64(dst: ?[*]SDL_RWops, value: Uint64) usize;
pub extern fn SDL_WriteBE64(dst: ?[*]SDL_RWops, value: Uint64) usize;
pub const SDL_AudioFormat = Uint16;
pub const SDL_AudioCallback = ?extern fn(?*c_void, ?[*]Uint8, c_int) void;
pub const struct_SDL_AudioSpec = extern struct {
    freq: c_int,
    format: SDL_AudioFormat,
    channels: Uint8,
    silence: Uint8,
    samples: Uint16,
    padding: Uint16,
    size: Uint32,
    callback: SDL_AudioCallback,
    userdata: ?*c_void,
};
pub const SDL_AudioSpec = struct_SDL_AudioSpec;
pub const SDL_AudioFilter = ?extern fn(?[*]struct_SDL_AudioCVT, SDL_AudioFormat) void;
pub const struct_SDL_AudioCVT = extern struct {
    needed: c_int,
    src_format: SDL_AudioFormat,
    dst_format: SDL_AudioFormat,
    rate_incr: f64,
    buf: ?[*]Uint8,
    len: c_int,
    len_cvt: c_int,
    len_mult: c_int,
    len_ratio: f64,
    filters: [10]SDL_AudioFilter,
    filter_index: c_int,
};
pub const SDL_AudioCVT = struct_SDL_AudioCVT;
pub extern fn SDL_GetNumAudioDrivers() c_int;
pub extern fn SDL_GetAudioDriver(index_0: c_int) ?[*]const u8;
pub extern fn SDL_AudioInit(driver_name: ?[*]const u8) c_int;
pub extern fn SDL_AudioQuit() void;
pub extern fn SDL_GetCurrentAudioDriver() ?[*]const u8;
pub extern fn SDL_OpenAudio(desired: ?[*]SDL_AudioSpec, obtained: ?[*]SDL_AudioSpec) c_int;
pub const SDL_AudioDeviceID = Uint32;
pub extern fn SDL_GetNumAudioDevices(iscapture: c_int) c_int;
pub extern fn SDL_GetAudioDeviceName(index_0: c_int, iscapture: c_int) ?[*]const u8;
pub extern fn SDL_OpenAudioDevice(device: ?[*]const u8, iscapture: c_int, desired: ?[*]const SDL_AudioSpec, obtained: ?[*]SDL_AudioSpec, allowed_changes: c_int) SDL_AudioDeviceID;
pub const SDL_AUDIO_STOPPED = 0;
pub const SDL_AUDIO_PLAYING = 1;
pub const SDL_AUDIO_PAUSED = 2;
pub const SDL_AudioStatus = extern enum {
    SDL_AUDIO_STOPPED = 0,
    SDL_AUDIO_PLAYING = 1,
    SDL_AUDIO_PAUSED = 2,
};
pub extern fn SDL_GetAudioStatus() SDL_AudioStatus;
pub extern fn SDL_GetAudioDeviceStatus(dev: SDL_AudioDeviceID) SDL_AudioStatus;
pub extern fn SDL_PauseAudio(pause_on: c_int) void;
pub extern fn SDL_PauseAudioDevice(dev: SDL_AudioDeviceID, pause_on: c_int) void;
pub extern fn SDL_LoadWAV_RW(src: ?[*]SDL_RWops, freesrc: c_int, spec: ?[*]SDL_AudioSpec, audio_buf: ?[*](?[*]Uint8), audio_len: ?[*]Uint32) ?[*]SDL_AudioSpec;
pub extern fn SDL_FreeWAV(audio_buf: ?[*]Uint8) void;
pub extern fn SDL_BuildAudioCVT(cvt: ?[*]SDL_AudioCVT, src_format: SDL_AudioFormat, src_channels: Uint8, src_rate: c_int, dst_format: SDL_AudioFormat, dst_channels: Uint8, dst_rate: c_int) c_int;
pub extern fn SDL_ConvertAudio(cvt: ?[*]SDL_AudioCVT) c_int;
pub extern fn SDL_MixAudio(dst: ?[*]Uint8, src: ?[*]const Uint8, len: Uint32, volume: c_int) void;
pub extern fn SDL_MixAudioFormat(dst: ?[*]Uint8, src: ?[*]const Uint8, format: SDL_AudioFormat, len: Uint32, volume: c_int) void;
pub extern fn SDL_QueueAudio(dev: SDL_AudioDeviceID, data: ?*const c_void, len: Uint32) c_int;
pub extern fn SDL_DequeueAudio(dev: SDL_AudioDeviceID, data: ?*c_void, len: Uint32) Uint32;
pub extern fn SDL_GetQueuedAudioSize(dev: SDL_AudioDeviceID) Uint32;
pub extern fn SDL_ClearQueuedAudio(dev: SDL_AudioDeviceID) void;
pub extern fn SDL_LockAudio() void;
pub extern fn SDL_LockAudioDevice(dev: SDL_AudioDeviceID) void;
pub extern fn SDL_UnlockAudio() void;
pub extern fn SDL_UnlockAudioDevice(dev: SDL_AudioDeviceID) void;
pub extern fn SDL_CloseAudio() void;
pub extern fn SDL_CloseAudioDevice(dev: SDL_AudioDeviceID) void;
pub extern fn SDL_SetClipboardText(text: ?[*]const u8) c_int;
pub extern fn SDL_GetClipboardText() ?[*]u8;
pub extern fn SDL_HasClipboardText() SDL_bool;
pub fn _mm_malloc(__size: usize, _arg___align: usize) ?*c_void {
    var __align = _arg___align;
    if (__align == c_ulong(1)) {
        return malloc(__size);
    }
    if ((!(__align & (__align -% c_ulong(1)))) and (__align < @sizeOf(?*c_void))) __align = @sizeOf(?*c_void);
    var __mallocedMemory: ?*c_void = undefined;
    if (posix_memalign(&__mallocedMemory, __align, __size) != 0) return null;
    return __mallocedMemory;
}
pub fn _mm_free(__p: ?*c_void) void {
    free(__p);
}
pub extern fn _mm_sfence() void;
pub extern fn _mm_getcsr() c_uint;
pub extern fn _mm_setcsr(__i: c_uint) void;
pub extern fn _mm_clflush(__p: ?*const c_void) void;
pub extern fn _mm_lfence() void;
pub extern fn _mm_mfence() void;
pub extern fn _mm_pause() void;
pub extern fn SDL_GetCPUCount() c_int;
pub extern fn SDL_GetCPUCacheLineSize() c_int;
pub extern fn SDL_HasRDTSC() SDL_bool;
pub extern fn SDL_HasAltiVec() SDL_bool;
pub extern fn SDL_HasMMX() SDL_bool;
pub extern fn SDL_Has3DNow() SDL_bool;
pub extern fn SDL_HasSSE() SDL_bool;
pub extern fn SDL_HasSSE2() SDL_bool;
pub extern fn SDL_HasSSE3() SDL_bool;
pub extern fn SDL_HasSSE41() SDL_bool;
pub extern fn SDL_HasSSE42() SDL_bool;
pub extern fn SDL_HasAVX() SDL_bool;
pub extern fn SDL_HasAVX2() SDL_bool;
pub extern fn SDL_GetSystemRAM() c_int;
pub const SDL_PIXELTYPE_UNKNOWN = 0;
pub const SDL_PIXELTYPE_INDEX1 = 1;
pub const SDL_PIXELTYPE_INDEX4 = 2;
pub const SDL_PIXELTYPE_INDEX8 = 3;
pub const SDL_PIXELTYPE_PACKED8 = 4;
pub const SDL_PIXELTYPE_PACKED16 = 5;
pub const SDL_PIXELTYPE_PACKED32 = 6;
pub const SDL_PIXELTYPE_ARRAYU8 = 7;
pub const SDL_PIXELTYPE_ARRAYU16 = 8;
pub const SDL_PIXELTYPE_ARRAYU32 = 9;
pub const SDL_PIXELTYPE_ARRAYF16 = 10;
pub const SDL_PIXELTYPE_ARRAYF32 = 11;
pub const SDL_BITMAPORDER_NONE = 0;
pub const SDL_BITMAPORDER_4321 = 1;
pub const SDL_BITMAPORDER_1234 = 2;
pub const SDL_PACKEDORDER_NONE = 0;
pub const SDL_PACKEDORDER_XRGB = 1;
pub const SDL_PACKEDORDER_RGBX = 2;
pub const SDL_PACKEDORDER_ARGB = 3;
pub const SDL_PACKEDORDER_RGBA = 4;
pub const SDL_PACKEDORDER_XBGR = 5;
pub const SDL_PACKEDORDER_BGRX = 6;
pub const SDL_PACKEDORDER_ABGR = 7;
pub const SDL_PACKEDORDER_BGRA = 8;
pub const SDL_ARRAYORDER_NONE = 0;
pub const SDL_ARRAYORDER_RGB = 1;
pub const SDL_ARRAYORDER_RGBA = 2;
pub const SDL_ARRAYORDER_ARGB = 3;
pub const SDL_ARRAYORDER_BGR = 4;
pub const SDL_ARRAYORDER_BGRA = 5;
pub const SDL_ARRAYORDER_ABGR = 6;
pub const SDL_PACKEDLAYOUT_NONE = 0;
pub const SDL_PACKEDLAYOUT_332 = 1;
pub const SDL_PACKEDLAYOUT_4444 = 2;
pub const SDL_PACKEDLAYOUT_1555 = 3;
pub const SDL_PACKEDLAYOUT_5551 = 4;
pub const SDL_PACKEDLAYOUT_565 = 5;
pub const SDL_PACKEDLAYOUT_8888 = 6;
pub const SDL_PACKEDLAYOUT_2101010 = 7;
pub const SDL_PACKEDLAYOUT_1010102 = 8;
pub const SDL_PIXELFORMAT_UNKNOWN = 0;
pub const SDL_PIXELFORMAT_INDEX1LSB = 286261504;
pub const SDL_PIXELFORMAT_INDEX1MSB = 287310080;
pub const SDL_PIXELFORMAT_INDEX4LSB = 303039488;
pub const SDL_PIXELFORMAT_INDEX4MSB = 304088064;
pub const SDL_PIXELFORMAT_INDEX8 = 318769153;
pub const SDL_PIXELFORMAT_RGB332 = 336660481;
pub const SDL_PIXELFORMAT_RGB444 = 353504258;
pub const SDL_PIXELFORMAT_RGB555 = 353570562;
pub const SDL_PIXELFORMAT_BGR555 = 357764866;
pub const SDL_PIXELFORMAT_ARGB4444 = 355602434;
pub const SDL_PIXELFORMAT_RGBA4444 = 356651010;
pub const SDL_PIXELFORMAT_ABGR4444 = 359796738;
pub const SDL_PIXELFORMAT_BGRA4444 = 360845314;
pub const SDL_PIXELFORMAT_ARGB1555 = 355667970;
pub const SDL_PIXELFORMAT_RGBA5551 = 356782082;
pub const SDL_PIXELFORMAT_ABGR1555 = 359862274;
pub const SDL_PIXELFORMAT_BGRA5551 = 360976386;
pub const SDL_PIXELFORMAT_RGB565 = 353701890;
pub const SDL_PIXELFORMAT_BGR565 = 357896194;
pub const SDL_PIXELFORMAT_RGB24 = 386930691;
pub const SDL_PIXELFORMAT_BGR24 = 390076419;
pub const SDL_PIXELFORMAT_RGB888 = 370546692;
pub const SDL_PIXELFORMAT_RGBX8888 = 371595268;
pub const SDL_PIXELFORMAT_BGR888 = 374740996;
pub const SDL_PIXELFORMAT_BGRX8888 = 375789572;
pub const SDL_PIXELFORMAT_ARGB8888 = 372645892;
pub const SDL_PIXELFORMAT_RGBA8888 = 373694468;
pub const SDL_PIXELFORMAT_ABGR8888 = 376840196;
pub const SDL_PIXELFORMAT_BGRA8888 = 377888772;
pub const SDL_PIXELFORMAT_ARGB2101010 = 372711428;
pub const SDL_PIXELFORMAT_RGBA32 = 376840196;
pub const SDL_PIXELFORMAT_ARGB32 = 377888772;
pub const SDL_PIXELFORMAT_BGRA32 = 372645892;
pub const SDL_PIXELFORMAT_ABGR32 = 373694468;
pub const SDL_PIXELFORMAT_YV12 = 842094169;
pub const SDL_PIXELFORMAT_IYUV = 1448433993;
pub const SDL_PIXELFORMAT_YUY2 = 844715353;
pub const SDL_PIXELFORMAT_UYVY = 1498831189;
pub const SDL_PIXELFORMAT_YVYU = 1431918169;
pub const SDL_PIXELFORMAT_NV12 = 842094158;
pub const SDL_PIXELFORMAT_NV21 = 825382478;
pub const struct_SDL_Color = extern struct {
    r: Uint8,
    g: Uint8,
    b: Uint8,
    a: Uint8,
};
pub const SDL_Color = struct_SDL_Color;
pub const struct_SDL_Palette = extern struct {
    ncolors: c_int,
    colors: ?[*]SDL_Color,
    version: Uint32,
    refcount: c_int,
};
pub const SDL_Palette = struct_SDL_Palette;
pub const struct_SDL_PixelFormat = extern struct {
    format: Uint32,
    palette: ?[*]SDL_Palette,
    BitsPerPixel: Uint8,
    BytesPerPixel: Uint8,
    padding: [2]Uint8,
    Rmask: Uint32,
    Gmask: Uint32,
    Bmask: Uint32,
    Amask: Uint32,
    Rloss: Uint8,
    Gloss: Uint8,
    Bloss: Uint8,
    Aloss: Uint8,
    Rshift: Uint8,
    Gshift: Uint8,
    Bshift: Uint8,
    Ashift: Uint8,
    refcount: c_int,
    next: ?[*]struct_SDL_PixelFormat,
};
pub const SDL_PixelFormat = struct_SDL_PixelFormat;
pub extern fn SDL_GetPixelFormatName(format: Uint32) ?[*]const u8;
pub extern fn SDL_PixelFormatEnumToMasks(format: Uint32, bpp: ?[*]c_int, Rmask: ?[*]Uint32, Gmask: ?[*]Uint32, Bmask: ?[*]Uint32, Amask: ?[*]Uint32) SDL_bool;
pub extern fn SDL_MasksToPixelFormatEnum(bpp: c_int, Rmask: Uint32, Gmask: Uint32, Bmask: Uint32, Amask: Uint32) Uint32;
pub extern fn SDL_AllocFormat(pixel_format: Uint32) ?[*]SDL_PixelFormat;
pub extern fn SDL_FreeFormat(format: ?[*]SDL_PixelFormat) void;
pub extern fn SDL_AllocPalette(ncolors: c_int) ?[*]SDL_Palette;
pub extern fn SDL_SetPixelFormatPalette(format: ?[*]SDL_PixelFormat, palette: ?[*]SDL_Palette) c_int;
pub extern fn SDL_SetPaletteColors(palette: ?[*]SDL_Palette, colors: ?[*]const SDL_Color, firstcolor: c_int, ncolors: c_int) c_int;
pub extern fn SDL_FreePalette(palette: ?[*]SDL_Palette) void;
pub extern fn SDL_MapRGB(format: ?[*]const SDL_PixelFormat, r: Uint8, g: Uint8, b: Uint8) Uint32;
pub extern fn SDL_MapRGBA(format: ?[*]const SDL_PixelFormat, r: Uint8, g: Uint8, b: Uint8, a: Uint8) Uint32;
pub extern fn SDL_GetRGB(pixel: Uint32, format: ?[*]const SDL_PixelFormat, r: ?[*]Uint8, g: ?[*]Uint8, b: ?[*]Uint8) void;
pub extern fn SDL_GetRGBA(pixel: Uint32, format: ?[*]const SDL_PixelFormat, r: ?[*]Uint8, g: ?[*]Uint8, b: ?[*]Uint8, a: ?[*]Uint8) void;
pub extern fn SDL_CalculateGammaRamp(gamma_0: f32, ramp: ?[*]Uint16) void;
pub const struct_SDL_Point = extern struct {
    x: c_int,
    y: c_int,
};
pub const SDL_Point = struct_SDL_Point;
pub const struct_SDL_Rect = extern struct {
    x: c_int,
    y: c_int,
    w: c_int,
    h: c_int,
};
pub const SDL_Rect = struct_SDL_Rect;
pub fn SDL_PointInRect(p: ?[*]const SDL_Point, r: ?[*]const SDL_Rect) SDL_bool {
    return SDL_bool(if ((((p.?.x >= r.?.x) and (p.?.x < (r.?.x + r.?.w))) and (p.?.y >= r.?.y)) and (p.?.y < (r.?.y + r.?.h))) SDL_TRUE else SDL_FALSE);
}
pub fn SDL_RectEmpty(r: ?[*]const SDL_Rect) SDL_bool {
    return SDL_bool(if (((!(r != null)) or (r.?.w <= 0)) or (r.?.h <= 0)) SDL_TRUE else SDL_FALSE);
}
pub fn SDL_RectEquals(a: ?[*]const SDL_Rect, b: ?[*]const SDL_Rect) SDL_bool {
    return SDL_bool(if ((((((a != null) and (b != null)) and (a.?.x == b.?.x)) and (a.?.y == b.?.y)) and (a.?.w == b.?.w)) and (a.?.h == b.?.h)) SDL_TRUE else SDL_FALSE);
}
pub extern fn SDL_HasIntersection(A: ?[*]const SDL_Rect, B: ?[*]const SDL_Rect) SDL_bool;
pub extern fn SDL_IntersectRect(A: ?[*]const SDL_Rect, B: ?[*]const SDL_Rect, result: ?[*]SDL_Rect) SDL_bool;
pub extern fn SDL_UnionRect(A: ?[*]const SDL_Rect, B: ?[*]const SDL_Rect, result: ?[*]SDL_Rect) void;
pub extern fn SDL_EnclosePoints(points: ?[*]const SDL_Point, count: c_int, clip: ?[*]const SDL_Rect, result: ?[*]SDL_Rect) SDL_bool;
pub extern fn SDL_IntersectRectAndLine(rect: ?[*]const SDL_Rect, X1: ?[*]c_int, Y1: ?[*]c_int, X2: ?[*]c_int, Y2: ?[*]c_int) SDL_bool;
pub const SDL_BLENDMODE_NONE = 0;
pub const SDL_BLENDMODE_BLEND = 1;
pub const SDL_BLENDMODE_ADD = 2;
pub const SDL_BLENDMODE_MOD = 4;
pub const SDL_BlendMode = extern enum {
    SDL_BLENDMODE_NONE = 0,
    SDL_BLENDMODE_BLEND = 1,
    SDL_BLENDMODE_ADD = 2,
    SDL_BLENDMODE_MOD = 4,
};
pub const struct_SDL_BlitMap = @OpaqueType();
pub const struct_SDL_Surface = extern struct {
    flags: Uint32,
    format: ?[*]SDL_PixelFormat,
    w: c_int,
    h: c_int,
    pitch: c_int,
    pixels: ?*c_void,
    userdata: ?*c_void,
    locked: c_int,
    lock_data: ?*c_void,
    clip_rect: SDL_Rect,
    map: ?*struct_SDL_BlitMap,
    refcount: c_int,
};
pub const SDL_Surface = struct_SDL_Surface;
pub const SDL_blit = ?extern fn(?[*]struct_SDL_Surface, ?[*]SDL_Rect, ?[*]struct_SDL_Surface, ?[*]SDL_Rect) c_int;
pub extern fn SDL_CreateRGBSurface(flags: Uint32, width: c_int, height: c_int, depth: c_int, Rmask: Uint32, Gmask: Uint32, Bmask: Uint32, Amask: Uint32) ?[*]SDL_Surface;
pub extern fn SDL_CreateRGBSurfaceWithFormat(flags: Uint32, width: c_int, height: c_int, depth: c_int, format: Uint32) ?[*]SDL_Surface;
pub extern fn SDL_CreateRGBSurfaceFrom(pixels: ?*c_void, width: c_int, height: c_int, depth: c_int, pitch: c_int, Rmask: Uint32, Gmask: Uint32, Bmask: Uint32, Amask: Uint32) ?[*]SDL_Surface;
pub extern fn SDL_CreateRGBSurfaceWithFormatFrom(pixels: ?*c_void, width: c_int, height: c_int, depth: c_int, pitch: c_int, format: Uint32) ?[*]SDL_Surface;
pub extern fn SDL_FreeSurface(surface: ?[*]SDL_Surface) void;
pub extern fn SDL_SetSurfacePalette(surface: ?[*]SDL_Surface, palette: ?[*]SDL_Palette) c_int;
pub extern fn SDL_LockSurface(surface: ?[*]SDL_Surface) c_int;
pub extern fn SDL_UnlockSurface(surface: ?[*]SDL_Surface) void;
pub extern fn SDL_LoadBMP_RW(src: ?[*]SDL_RWops, freesrc: c_int) ?[*]SDL_Surface;
pub extern fn SDL_SaveBMP_RW(surface: ?[*]SDL_Surface, dst: ?[*]SDL_RWops, freedst: c_int) c_int;
pub extern fn SDL_SetSurfaceRLE(surface: ?[*]SDL_Surface, flag: c_int) c_int;
pub extern fn SDL_SetColorKey(surface: ?[*]SDL_Surface, flag: c_int, key: Uint32) c_int;
pub extern fn SDL_GetColorKey(surface: ?[*]SDL_Surface, key: ?[*]Uint32) c_int;
pub extern fn SDL_SetSurfaceColorMod(surface: ?[*]SDL_Surface, r: Uint8, g: Uint8, b: Uint8) c_int;
pub extern fn SDL_GetSurfaceColorMod(surface: ?[*]SDL_Surface, r: ?[*]Uint8, g: ?[*]Uint8, b: ?[*]Uint8) c_int;
pub extern fn SDL_SetSurfaceAlphaMod(surface: ?[*]SDL_Surface, alpha: Uint8) c_int;
pub extern fn SDL_GetSurfaceAlphaMod(surface: ?[*]SDL_Surface, alpha: ?[*]Uint8) c_int;
pub extern fn SDL_SetSurfaceBlendMode(surface: ?[*]SDL_Surface, blendMode: SDL_BlendMode) c_int;
pub extern fn SDL_GetSurfaceBlendMode(surface: ?[*]SDL_Surface, blendMode: ?[*]SDL_BlendMode) c_int;
pub extern fn SDL_SetClipRect(surface: ?[*]SDL_Surface, rect: ?[*]const SDL_Rect) SDL_bool;
pub extern fn SDL_GetClipRect(surface: ?[*]SDL_Surface, rect: ?[*]SDL_Rect) void;
pub extern fn SDL_ConvertSurface(src: ?[*]SDL_Surface, fmt: ?[*]const SDL_PixelFormat, flags: Uint32) ?[*]SDL_Surface;
pub extern fn SDL_ConvertSurfaceFormat(src: ?[*]SDL_Surface, pixel_format: Uint32, flags: Uint32) ?[*]SDL_Surface;
pub extern fn SDL_ConvertPixels(width: c_int, height: c_int, src_format: Uint32, src: ?*const c_void, src_pitch: c_int, dst_format: Uint32, dst: ?*c_void, dst_pitch: c_int) c_int;
pub extern fn SDL_FillRect(dst: ?[*]SDL_Surface, rect: ?[*]const SDL_Rect, color: Uint32) c_int;
pub extern fn SDL_FillRects(dst: ?[*]SDL_Surface, rects: ?[*]const SDL_Rect, count: c_int, color: Uint32) c_int;
pub extern fn SDL_UpperBlit(src: ?[*]SDL_Surface, srcrect: ?[*]const SDL_Rect, dst: ?[*]SDL_Surface, dstrect: ?[*]SDL_Rect) c_int;
pub extern fn SDL_LowerBlit(src: ?[*]SDL_Surface, srcrect: ?[*]SDL_Rect, dst: ?[*]SDL_Surface, dstrect: ?[*]SDL_Rect) c_int;
pub extern fn SDL_SoftStretch(src: ?[*]SDL_Surface, srcrect: ?[*]const SDL_Rect, dst: ?[*]SDL_Surface, dstrect: ?[*]const SDL_Rect) c_int;
pub extern fn SDL_UpperBlitScaled(src: ?[*]SDL_Surface, srcrect: ?[*]const SDL_Rect, dst: ?[*]SDL_Surface, dstrect: ?[*]SDL_Rect) c_int;
pub extern fn SDL_LowerBlitScaled(src: ?[*]SDL_Surface, srcrect: ?[*]SDL_Rect, dst: ?[*]SDL_Surface, dstrect: ?[*]SDL_Rect) c_int;
pub const SDL_DisplayMode = extern struct {
    format: Uint32,
    w: c_int,
    h: c_int,
    refresh_rate: c_int,
    driverdata: ?*c_void,
};
pub const struct_SDL_Window = @OpaqueType();
pub const SDL_Window = struct_SDL_Window;
pub const SDL_WINDOW_FULLSCREEN = 1;
pub const SDL_WINDOW_OPENGL = 2;
pub const SDL_WINDOW_SHOWN = 4;
pub const SDL_WINDOW_HIDDEN = 8;
pub const SDL_WINDOW_BORDERLESS = 16;
pub const SDL_WINDOW_RESIZABLE = 32;
pub const SDL_WINDOW_MINIMIZED = 64;
pub const SDL_WINDOW_MAXIMIZED = 128;
pub const SDL_WINDOW_INPUT_GRABBED = 256;
pub const SDL_WINDOW_INPUT_FOCUS = 512;
pub const SDL_WINDOW_MOUSE_FOCUS = 1024;
pub const SDL_WINDOW_FULLSCREEN_DESKTOP = 4097;
pub const SDL_WINDOW_FOREIGN = 2048;
pub const SDL_WINDOW_ALLOW_HIGHDPI = 8192;
pub const SDL_WINDOW_MOUSE_CAPTURE = 16384;
pub const SDL_WINDOW_ALWAYS_ON_TOP = 32768;
pub const SDL_WINDOW_SKIP_TASKBAR = 65536;
pub const SDL_WINDOW_UTILITY = 131072;
pub const SDL_WINDOW_TOOLTIP = 262144;
pub const SDL_WINDOW_POPUP_MENU = 524288;
pub const SDL_WindowFlags = extern enum {
    SDL_WINDOW_FULLSCREEN = 1,
    SDL_WINDOW_OPENGL = 2,
    SDL_WINDOW_SHOWN = 4,
    SDL_WINDOW_HIDDEN = 8,
    SDL_WINDOW_BORDERLESS = 16,
    SDL_WINDOW_RESIZABLE = 32,
    SDL_WINDOW_MINIMIZED = 64,
    SDL_WINDOW_MAXIMIZED = 128,
    SDL_WINDOW_INPUT_GRABBED = 256,
    SDL_WINDOW_INPUT_FOCUS = 512,
    SDL_WINDOW_MOUSE_FOCUS = 1024,
    SDL_WINDOW_FULLSCREEN_DESKTOP = 4097,
    SDL_WINDOW_FOREIGN = 2048,
    SDL_WINDOW_ALLOW_HIGHDPI = 8192,
    SDL_WINDOW_MOUSE_CAPTURE = 16384,
    SDL_WINDOW_ALWAYS_ON_TOP = 32768,
    SDL_WINDOW_SKIP_TASKBAR = 65536,
    SDL_WINDOW_UTILITY = 131072,
    SDL_WINDOW_TOOLTIP = 262144,
    SDL_WINDOW_POPUP_MENU = 524288,
};
pub const SDL_WINDOWEVENT_NONE = 0;
pub const SDL_WINDOWEVENT_SHOWN = 1;
pub const SDL_WINDOWEVENT_HIDDEN = 2;
pub const SDL_WINDOWEVENT_EXPOSED = 3;
pub const SDL_WINDOWEVENT_MOVED = 4;
pub const SDL_WINDOWEVENT_RESIZED = 5;
pub const SDL_WINDOWEVENT_SIZE_CHANGED = 6;
pub const SDL_WINDOWEVENT_MINIMIZED = 7;
pub const SDL_WINDOWEVENT_MAXIMIZED = 8;
pub const SDL_WINDOWEVENT_RESTORED = 9;
pub const SDL_WINDOWEVENT_ENTER = 10;
pub const SDL_WINDOWEVENT_LEAVE = 11;
pub const SDL_WINDOWEVENT_FOCUS_GAINED = 12;
pub const SDL_WINDOWEVENT_FOCUS_LOST = 13;
pub const SDL_WINDOWEVENT_CLOSE = 14;
pub const SDL_WINDOWEVENT_TAKE_FOCUS = 15;
pub const SDL_WINDOWEVENT_HIT_TEST = 16;
pub const SDL_WindowEventID = extern enum {
    SDL_WINDOWEVENT_NONE = 0,
    SDL_WINDOWEVENT_SHOWN = 1,
    SDL_WINDOWEVENT_HIDDEN = 2,
    SDL_WINDOWEVENT_EXPOSED = 3,
    SDL_WINDOWEVENT_MOVED = 4,
    SDL_WINDOWEVENT_RESIZED = 5,
    SDL_WINDOWEVENT_SIZE_CHANGED = 6,
    SDL_WINDOWEVENT_MINIMIZED = 7,
    SDL_WINDOWEVENT_MAXIMIZED = 8,
    SDL_WINDOWEVENT_RESTORED = 9,
    SDL_WINDOWEVENT_ENTER = 10,
    SDL_WINDOWEVENT_LEAVE = 11,
    SDL_WINDOWEVENT_FOCUS_GAINED = 12,
    SDL_WINDOWEVENT_FOCUS_LOST = 13,
    SDL_WINDOWEVENT_CLOSE = 14,
    SDL_WINDOWEVENT_TAKE_FOCUS = 15,
    SDL_WINDOWEVENT_HIT_TEST = 16,
};
pub const SDL_GLContext = ?*c_void;
pub const SDL_GL_RED_SIZE = 0;
pub const SDL_GL_GREEN_SIZE = 1;
pub const SDL_GL_BLUE_SIZE = 2;
pub const SDL_GL_ALPHA_SIZE = 3;
pub const SDL_GL_BUFFER_SIZE = 4;
pub const SDL_GL_DOUBLEBUFFER = 5;
pub const SDL_GL_DEPTH_SIZE = 6;
pub const SDL_GL_STENCIL_SIZE = 7;
pub const SDL_GL_ACCUM_RED_SIZE = 8;
pub const SDL_GL_ACCUM_GREEN_SIZE = 9;
pub const SDL_GL_ACCUM_BLUE_SIZE = 10;
pub const SDL_GL_ACCUM_ALPHA_SIZE = 11;
pub const SDL_GL_STEREO = 12;
pub const SDL_GL_MULTISAMPLEBUFFERS = 13;
pub const SDL_GL_MULTISAMPLESAMPLES = 14;
pub const SDL_GL_ACCELERATED_VISUAL = 15;
pub const SDL_GL_RETAINED_BACKING = 16;
pub const SDL_GL_CONTEXT_MAJOR_VERSION = 17;
pub const SDL_GL_CONTEXT_MINOR_VERSION = 18;
pub const SDL_GL_CONTEXT_EGL = 19;
pub const SDL_GL_CONTEXT_FLAGS = 20;
pub const SDL_GL_CONTEXT_PROFILE_MASK = 21;
pub const SDL_GL_SHARE_WITH_CURRENT_CONTEXT = 22;
pub const SDL_GL_FRAMEBUFFER_SRGB_CAPABLE = 23;
pub const SDL_GL_CONTEXT_RELEASE_BEHAVIOR = 24;
pub const SDL_GLattr = extern enum {
    SDL_GL_RED_SIZE = 0,
    SDL_GL_GREEN_SIZE = 1,
    SDL_GL_BLUE_SIZE = 2,
    SDL_GL_ALPHA_SIZE = 3,
    SDL_GL_BUFFER_SIZE = 4,
    SDL_GL_DOUBLEBUFFER = 5,
    SDL_GL_DEPTH_SIZE = 6,
    SDL_GL_STENCIL_SIZE = 7,
    SDL_GL_ACCUM_RED_SIZE = 8,
    SDL_GL_ACCUM_GREEN_SIZE = 9,
    SDL_GL_ACCUM_BLUE_SIZE = 10,
    SDL_GL_ACCUM_ALPHA_SIZE = 11,
    SDL_GL_STEREO = 12,
    SDL_GL_MULTISAMPLEBUFFERS = 13,
    SDL_GL_MULTISAMPLESAMPLES = 14,
    SDL_GL_ACCELERATED_VISUAL = 15,
    SDL_GL_RETAINED_BACKING = 16,
    SDL_GL_CONTEXT_MAJOR_VERSION = 17,
    SDL_GL_CONTEXT_MINOR_VERSION = 18,
    SDL_GL_CONTEXT_EGL = 19,
    SDL_GL_CONTEXT_FLAGS = 20,
    SDL_GL_CONTEXT_PROFILE_MASK = 21,
    SDL_GL_SHARE_WITH_CURRENT_CONTEXT = 22,
    SDL_GL_FRAMEBUFFER_SRGB_CAPABLE = 23,
    SDL_GL_CONTEXT_RELEASE_BEHAVIOR = 24,
};
pub const SDL_GL_CONTEXT_PROFILE_CORE = 1;
pub const SDL_GL_CONTEXT_PROFILE_COMPATIBILITY = 2;
pub const SDL_GL_CONTEXT_PROFILE_ES = 4;
pub const SDL_GLprofile = extern enum {
    SDL_GL_CONTEXT_PROFILE_CORE = 1,
    SDL_GL_CONTEXT_PROFILE_COMPATIBILITY = 2,
    SDL_GL_CONTEXT_PROFILE_ES = 4,
};
pub const SDL_GL_CONTEXT_DEBUG_FLAG = 1;
pub const SDL_GL_CONTEXT_FORWARD_COMPATIBLE_FLAG = 2;
pub const SDL_GL_CONTEXT_ROBUST_ACCESS_FLAG = 4;
pub const SDL_GL_CONTEXT_RESET_ISOLATION_FLAG = 8;
pub const SDL_GLcontextFlag = extern enum {
    SDL_GL_CONTEXT_DEBUG_FLAG = 1,
    SDL_GL_CONTEXT_FORWARD_COMPATIBLE_FLAG = 2,
    SDL_GL_CONTEXT_ROBUST_ACCESS_FLAG = 4,
    SDL_GL_CONTEXT_RESET_ISOLATION_FLAG = 8,
};
pub const SDL_GL_CONTEXT_RELEASE_BEHAVIOR_NONE = 0;
pub const SDL_GL_CONTEXT_RELEASE_BEHAVIOR_FLUSH = 1;
pub const SDL_GLcontextReleaseFlag = extern enum {
    SDL_GL_CONTEXT_RELEASE_BEHAVIOR_NONE = 0,
    SDL_GL_CONTEXT_RELEASE_BEHAVIOR_FLUSH = 1,
};
pub extern fn SDL_GetNumVideoDrivers() c_int;
pub extern fn SDL_GetVideoDriver(index_0: c_int) ?[*]const u8;
pub extern fn SDL_VideoInit(driver_name: ?[*]const u8) c_int;
pub extern fn SDL_VideoQuit() void;
pub extern fn SDL_GetCurrentVideoDriver() ?[*]const u8;
pub extern fn SDL_GetNumVideoDisplays() c_int;
pub extern fn SDL_GetDisplayName(displayIndex: c_int) ?[*]const u8;
pub extern fn SDL_GetDisplayBounds(displayIndex: c_int, rect: ?[*]SDL_Rect) c_int;
pub extern fn SDL_GetDisplayDPI(displayIndex: c_int, ddpi: ?[*]f32, hdpi: ?[*]f32, vdpi: ?[*]f32) c_int;
pub extern fn SDL_GetDisplayUsableBounds(displayIndex: c_int, rect: ?[*]SDL_Rect) c_int;
pub extern fn SDL_GetNumDisplayModes(displayIndex: c_int) c_int;
pub extern fn SDL_GetDisplayMode(displayIndex: c_int, modeIndex: c_int, mode: ?[*]SDL_DisplayMode) c_int;
pub extern fn SDL_GetDesktopDisplayMode(displayIndex: c_int, mode: ?[*]SDL_DisplayMode) c_int;
pub extern fn SDL_GetCurrentDisplayMode(displayIndex: c_int, mode: ?[*]SDL_DisplayMode) c_int;
pub extern fn SDL_GetClosestDisplayMode(displayIndex: c_int, mode: ?[*]const SDL_DisplayMode, closest: ?[*]SDL_DisplayMode) ?[*]SDL_DisplayMode;
pub extern fn SDL_GetWindowDisplayIndex(window: ?*SDL_Window) c_int;
pub extern fn SDL_SetWindowDisplayMode(window: ?*SDL_Window, mode: ?[*]const SDL_DisplayMode) c_int;
pub extern fn SDL_GetWindowDisplayMode(window: ?*SDL_Window, mode: ?[*]SDL_DisplayMode) c_int;
pub extern fn SDL_GetWindowPixelFormat(window: ?*SDL_Window) Uint32;
pub extern fn SDL_CreateWindow(title: ?[*]const u8, x: c_int, y: c_int, w: c_int, h: c_int, flags: Uint32) ?*SDL_Window;
pub extern fn SDL_CreateWindowFrom(data: ?*const c_void) ?*SDL_Window;
pub extern fn SDL_GetWindowID(window: ?*SDL_Window) Uint32;
pub extern fn SDL_GetWindowFromID(id: Uint32) ?*SDL_Window;
pub extern fn SDL_GetWindowFlags(window: ?*SDL_Window) Uint32;
pub extern fn SDL_SetWindowTitle(window: ?*SDL_Window, title: ?[*]const u8) void;
pub extern fn SDL_GetWindowTitle(window: ?*SDL_Window) ?[*]const u8;
pub extern fn SDL_SetWindowIcon(window: ?*SDL_Window, icon: ?[*]SDL_Surface) void;
pub extern fn SDL_SetWindowData(window: ?*SDL_Window, name: ?[*]const u8, userdata: ?*c_void) ?*c_void;
pub extern fn SDL_GetWindowData(window: ?*SDL_Window, name: ?[*]const u8) ?*c_void;
pub extern fn SDL_SetWindowPosition(window: ?*SDL_Window, x: c_int, y: c_int) void;
pub extern fn SDL_GetWindowPosition(window: ?*SDL_Window, x: ?[*]c_int, y: ?[*]c_int) void;
pub extern fn SDL_SetWindowSize(window: ?*SDL_Window, w: c_int, h: c_int) void;
pub extern fn SDL_GetWindowSize(window: ?*SDL_Window, w: ?[*]c_int, h: ?[*]c_int) void;
pub extern fn SDL_GetWindowBordersSize(window: ?*SDL_Window, top: ?[*]c_int, left: ?[*]c_int, bottom: ?[*]c_int, right: ?[*]c_int) c_int;
pub extern fn SDL_SetWindowMinimumSize(window: ?*SDL_Window, min_w: c_int, min_h: c_int) void;
pub extern fn SDL_GetWindowMinimumSize(window: ?*SDL_Window, w: ?[*]c_int, h: ?[*]c_int) void;
pub extern fn SDL_SetWindowMaximumSize(window: ?*SDL_Window, max_w: c_int, max_h: c_int) void;
pub extern fn SDL_GetWindowMaximumSize(window: ?*SDL_Window, w: ?[*]c_int, h: ?[*]c_int) void;
pub extern fn SDL_SetWindowBordered(window: ?*SDL_Window, bordered: SDL_bool) void;
pub extern fn SDL_SetWindowResizable(window: ?*SDL_Window, resizable: SDL_bool) void;
pub extern fn SDL_ShowWindow(window: ?*SDL_Window) void;
pub extern fn SDL_HideWindow(window: ?*SDL_Window) void;
pub extern fn SDL_RaiseWindow(window: ?*SDL_Window) void;
pub extern fn SDL_MaximizeWindow(window: ?*SDL_Window) void;
pub extern fn SDL_MinimizeWindow(window: ?*SDL_Window) void;
pub extern fn SDL_RestoreWindow(window: ?*SDL_Window) void;
pub extern fn SDL_SetWindowFullscreen(window: ?*SDL_Window, flags: Uint32) c_int;
pub extern fn SDL_GetWindowSurface(window: ?*SDL_Window) ?[*]SDL_Surface;
pub extern fn SDL_UpdateWindowSurface(window: ?*SDL_Window) c_int;
pub extern fn SDL_UpdateWindowSurfaceRects(window: ?*SDL_Window, rects: ?[*]const SDL_Rect, numrects: c_int) c_int;
pub extern fn SDL_SetWindowGrab(window: ?*SDL_Window, grabbed: SDL_bool) void;
pub extern fn SDL_GetWindowGrab(window: ?*SDL_Window) SDL_bool;
pub extern fn SDL_GetGrabbedWindow() ?*SDL_Window;
pub extern fn SDL_SetWindowBrightness(window: ?*SDL_Window, brightness: f32) c_int;
pub extern fn SDL_GetWindowBrightness(window: ?*SDL_Window) f32;
pub extern fn SDL_SetWindowOpacity(window: ?*SDL_Window, opacity: f32) c_int;
pub extern fn SDL_GetWindowOpacity(window: ?*SDL_Window, out_opacity: ?[*]f32) c_int;
pub extern fn SDL_SetWindowModalFor(modal_window: ?*SDL_Window, parent_window: ?*SDL_Window) c_int;
pub extern fn SDL_SetWindowInputFocus(window: ?*SDL_Window) c_int;
pub extern fn SDL_SetWindowGammaRamp(window: ?*SDL_Window, red: ?[*]const Uint16, green: ?[*]const Uint16, blue: ?[*]const Uint16) c_int;
pub extern fn SDL_GetWindowGammaRamp(window: ?*SDL_Window, red: ?[*]Uint16, green: ?[*]Uint16, blue: ?[*]Uint16) c_int;
pub const SDL_HITTEST_NORMAL = 0;
pub const SDL_HITTEST_DRAGGABLE = 1;
pub const SDL_HITTEST_RESIZE_TOPLEFT = 2;
pub const SDL_HITTEST_RESIZE_TOP = 3;
pub const SDL_HITTEST_RESIZE_TOPRIGHT = 4;
pub const SDL_HITTEST_RESIZE_RIGHT = 5;
pub const SDL_HITTEST_RESIZE_BOTTOMRIGHT = 6;
pub const SDL_HITTEST_RESIZE_BOTTOM = 7;
pub const SDL_HITTEST_RESIZE_BOTTOMLEFT = 8;
pub const SDL_HITTEST_RESIZE_LEFT = 9;
pub const SDL_HitTestResult = extern enum {
    SDL_HITTEST_NORMAL = 0,
    SDL_HITTEST_DRAGGABLE = 1,
    SDL_HITTEST_RESIZE_TOPLEFT = 2,
    SDL_HITTEST_RESIZE_TOP = 3,
    SDL_HITTEST_RESIZE_TOPRIGHT = 4,
    SDL_HITTEST_RESIZE_RIGHT = 5,
    SDL_HITTEST_RESIZE_BOTTOMRIGHT = 6,
    SDL_HITTEST_RESIZE_BOTTOM = 7,
    SDL_HITTEST_RESIZE_BOTTOMLEFT = 8,
    SDL_HITTEST_RESIZE_LEFT = 9,
};
pub const SDL_HitTest = ?extern fn(?*SDL_Window, ?[*]const SDL_Point, ?*c_void) SDL_HitTestResult;
pub extern fn SDL_SetWindowHitTest(window: ?*SDL_Window, callback: SDL_HitTest, callback_data: ?*c_void) c_int;
pub extern fn SDL_DestroyWindow(window: ?*SDL_Window) void;
pub extern fn SDL_IsScreenSaverEnabled() SDL_bool;
pub extern fn SDL_EnableScreenSaver() void;
pub extern fn SDL_DisableScreenSaver() void;
pub extern fn SDL_GL_LoadLibrary(path: ?[*]const u8) c_int;
pub extern fn SDL_GL_GetProcAddress(proc: ?[*]const u8) ?*c_void;
pub extern fn SDL_GL_UnloadLibrary() void;
pub extern fn SDL_GL_ExtensionSupported(extension: ?[*]const u8) SDL_bool;
pub extern fn SDL_GL_ResetAttributes() void;
pub extern fn SDL_GL_SetAttribute(attr: SDL_GLattr, value: c_int) c_int;
pub extern fn SDL_GL_GetAttribute(attr: SDL_GLattr, value: ?[*]c_int) c_int;
pub extern fn SDL_GL_CreateContext(window: ?*SDL_Window) SDL_GLContext;
pub extern fn SDL_GL_MakeCurrent(window: ?*SDL_Window, context: SDL_GLContext) c_int;
pub extern fn SDL_GL_GetCurrentWindow() ?*SDL_Window;
pub extern fn SDL_GL_GetCurrentContext() SDL_GLContext;
pub extern fn SDL_GL_GetDrawableSize(window: ?*SDL_Window, w: ?[*]c_int, h: ?[*]c_int) void;
pub extern fn SDL_GL_SetSwapInterval(interval: c_int) c_int;
pub extern fn SDL_GL_GetSwapInterval() c_int;
pub extern fn SDL_GL_SwapWindow(window: ?*SDL_Window) void;
pub extern fn SDL_GL_DeleteContext(context: SDL_GLContext) void;
pub const SDL_SCANCODE_UNKNOWN = 0;
pub const SDL_SCANCODE_A = 4;
pub const SDL_SCANCODE_B = 5;
pub const SDL_SCANCODE_C = 6;
pub const SDL_SCANCODE_D = 7;
pub const SDL_SCANCODE_E = 8;
pub const SDL_SCANCODE_F = 9;
pub const SDL_SCANCODE_G = 10;
pub const SDL_SCANCODE_H = 11;
pub const SDL_SCANCODE_I = 12;
pub const SDL_SCANCODE_J = 13;
pub const SDL_SCANCODE_K = 14;
pub const SDL_SCANCODE_L = 15;
pub const SDL_SCANCODE_M = 16;
pub const SDL_SCANCODE_N = 17;
pub const SDL_SCANCODE_O = 18;
pub const SDL_SCANCODE_P = 19;
pub const SDL_SCANCODE_Q = 20;
pub const SDL_SCANCODE_R = 21;
pub const SDL_SCANCODE_S = 22;
pub const SDL_SCANCODE_T = 23;
pub const SDL_SCANCODE_U = 24;
pub const SDL_SCANCODE_V = 25;
pub const SDL_SCANCODE_W = 26;
pub const SDL_SCANCODE_X = 27;
pub const SDL_SCANCODE_Y = 28;
pub const SDL_SCANCODE_Z = 29;
pub const SDL_SCANCODE_1 = 30;
pub const SDL_SCANCODE_2 = 31;
pub const SDL_SCANCODE_3 = 32;
pub const SDL_SCANCODE_4 = 33;
pub const SDL_SCANCODE_5 = 34;
pub const SDL_SCANCODE_6 = 35;
pub const SDL_SCANCODE_7 = 36;
pub const SDL_SCANCODE_8 = 37;
pub const SDL_SCANCODE_9 = 38;
pub const SDL_SCANCODE_0 = 39;
pub const SDL_SCANCODE_RETURN = 40;
pub const SDL_SCANCODE_ESCAPE = 41;
pub const SDL_SCANCODE_BACKSPACE = 42;
pub const SDL_SCANCODE_TAB = 43;
pub const SDL_SCANCODE_SPACE = 44;
pub const SDL_SCANCODE_MINUS = 45;
pub const SDL_SCANCODE_EQUALS = 46;
pub const SDL_SCANCODE_LEFTBRACKET = 47;
pub const SDL_SCANCODE_RIGHTBRACKET = 48;
pub const SDL_SCANCODE_BACKSLASH = 49;
pub const SDL_SCANCODE_NONUSHASH = 50;
pub const SDL_SCANCODE_SEMICOLON = 51;
pub const SDL_SCANCODE_APOSTROPHE = 52;
pub const SDL_SCANCODE_GRAVE = 53;
pub const SDL_SCANCODE_COMMA = 54;
pub const SDL_SCANCODE_PERIOD = 55;
pub const SDL_SCANCODE_SLASH = 56;
pub const SDL_SCANCODE_CAPSLOCK = 57;
pub const SDL_SCANCODE_F1 = 58;
pub const SDL_SCANCODE_F2 = 59;
pub const SDL_SCANCODE_F3 = 60;
pub const SDL_SCANCODE_F4 = 61;
pub const SDL_SCANCODE_F5 = 62;
pub const SDL_SCANCODE_F6 = 63;
pub const SDL_SCANCODE_F7 = 64;
pub const SDL_SCANCODE_F8 = 65;
pub const SDL_SCANCODE_F9 = 66;
pub const SDL_SCANCODE_F10 = 67;
pub const SDL_SCANCODE_F11 = 68;
pub const SDL_SCANCODE_F12 = 69;
pub const SDL_SCANCODE_PRINTSCREEN = 70;
pub const SDL_SCANCODE_SCROLLLOCK = 71;
pub const SDL_SCANCODE_PAUSE = 72;
pub const SDL_SCANCODE_INSERT = 73;
pub const SDL_SCANCODE_HOME = 74;
pub const SDL_SCANCODE_PAGEUP = 75;
pub const SDL_SCANCODE_DELETE = 76;
pub const SDL_SCANCODE_END = 77;
pub const SDL_SCANCODE_PAGEDOWN = 78;
pub const SDL_SCANCODE_RIGHT = 79;
pub const SDL_SCANCODE_LEFT = 80;
pub const SDL_SCANCODE_DOWN = 81;
pub const SDL_SCANCODE_UP = 82;
pub const SDL_SCANCODE_NUMLOCKCLEAR = 83;
pub const SDL_SCANCODE_KP_DIVIDE = 84;
pub const SDL_SCANCODE_KP_MULTIPLY = 85;
pub const SDL_SCANCODE_KP_MINUS = 86;
pub const SDL_SCANCODE_KP_PLUS = 87;
pub const SDL_SCANCODE_KP_ENTER = 88;
pub const SDL_SCANCODE_KP_1 = 89;
pub const SDL_SCANCODE_KP_2 = 90;
pub const SDL_SCANCODE_KP_3 = 91;
pub const SDL_SCANCODE_KP_4 = 92;
pub const SDL_SCANCODE_KP_5 = 93;
pub const SDL_SCANCODE_KP_6 = 94;
pub const SDL_SCANCODE_KP_7 = 95;
pub const SDL_SCANCODE_KP_8 = 96;
pub const SDL_SCANCODE_KP_9 = 97;
pub const SDL_SCANCODE_KP_0 = 98;
pub const SDL_SCANCODE_KP_PERIOD = 99;
pub const SDL_SCANCODE_NONUSBACKSLASH = 100;
pub const SDL_SCANCODE_APPLICATION = 101;
pub const SDL_SCANCODE_POWER = 102;
pub const SDL_SCANCODE_KP_EQUALS = 103;
pub const SDL_SCANCODE_F13 = 104;
pub const SDL_SCANCODE_F14 = 105;
pub const SDL_SCANCODE_F15 = 106;
pub const SDL_SCANCODE_F16 = 107;
pub const SDL_SCANCODE_F17 = 108;
pub const SDL_SCANCODE_F18 = 109;
pub const SDL_SCANCODE_F19 = 110;
pub const SDL_SCANCODE_F20 = 111;
pub const SDL_SCANCODE_F21 = 112;
pub const SDL_SCANCODE_F22 = 113;
pub const SDL_SCANCODE_F23 = 114;
pub const SDL_SCANCODE_F24 = 115;
pub const SDL_SCANCODE_EXECUTE = 116;
pub const SDL_SCANCODE_HELP = 117;
pub const SDL_SCANCODE_MENU = 118;
pub const SDL_SCANCODE_SELECT = 119;
pub const SDL_SCANCODE_STOP = 120;
pub const SDL_SCANCODE_AGAIN = 121;
pub const SDL_SCANCODE_UNDO = 122;
pub const SDL_SCANCODE_CUT = 123;
pub const SDL_SCANCODE_COPY = 124;
pub const SDL_SCANCODE_PASTE = 125;
pub const SDL_SCANCODE_FIND = 126;
pub const SDL_SCANCODE_MUTE = 127;
pub const SDL_SCANCODE_VOLUMEUP = 128;
pub const SDL_SCANCODE_VOLUMEDOWN = 129;
pub const SDL_SCANCODE_KP_COMMA = 133;
pub const SDL_SCANCODE_KP_EQUALSAS400 = 134;
pub const SDL_SCANCODE_INTERNATIONAL1 = 135;
pub const SDL_SCANCODE_INTERNATIONAL2 = 136;
pub const SDL_SCANCODE_INTERNATIONAL3 = 137;
pub const SDL_SCANCODE_INTERNATIONAL4 = 138;
pub const SDL_SCANCODE_INTERNATIONAL5 = 139;
pub const SDL_SCANCODE_INTERNATIONAL6 = 140;
pub const SDL_SCANCODE_INTERNATIONAL7 = 141;
pub const SDL_SCANCODE_INTERNATIONAL8 = 142;
pub const SDL_SCANCODE_INTERNATIONAL9 = 143;
pub const SDL_SCANCODE_LANG1 = 144;
pub const SDL_SCANCODE_LANG2 = 145;
pub const SDL_SCANCODE_LANG3 = 146;
pub const SDL_SCANCODE_LANG4 = 147;
pub const SDL_SCANCODE_LANG5 = 148;
pub const SDL_SCANCODE_LANG6 = 149;
pub const SDL_SCANCODE_LANG7 = 150;
pub const SDL_SCANCODE_LANG8 = 151;
pub const SDL_SCANCODE_LANG9 = 152;
pub const SDL_SCANCODE_ALTERASE = 153;
pub const SDL_SCANCODE_SYSREQ = 154;
pub const SDL_SCANCODE_CANCEL = 155;
pub const SDL_SCANCODE_CLEAR = 156;
pub const SDL_SCANCODE_PRIOR = 157;
pub const SDL_SCANCODE_RETURN2 = 158;
pub const SDL_SCANCODE_SEPARATOR = 159;
pub const SDL_SCANCODE_OUT = 160;
pub const SDL_SCANCODE_OPER = 161;
pub const SDL_SCANCODE_CLEARAGAIN = 162;
pub const SDL_SCANCODE_CRSEL = 163;
pub const SDL_SCANCODE_EXSEL = 164;
pub const SDL_SCANCODE_KP_00 = 176;
pub const SDL_SCANCODE_KP_000 = 177;
pub const SDL_SCANCODE_THOUSANDSSEPARATOR = 178;
pub const SDL_SCANCODE_DECIMALSEPARATOR = 179;
pub const SDL_SCANCODE_CURRENCYUNIT = 180;
pub const SDL_SCANCODE_CURRENCYSUBUNIT = 181;
pub const SDL_SCANCODE_KP_LEFTPAREN = 182;
pub const SDL_SCANCODE_KP_RIGHTPAREN = 183;
pub const SDL_SCANCODE_KP_LEFTBRACE = 184;
pub const SDL_SCANCODE_KP_RIGHTBRACE = 185;
pub const SDL_SCANCODE_KP_TAB = 186;
pub const SDL_SCANCODE_KP_BACKSPACE = 187;
pub const SDL_SCANCODE_KP_A = 188;
pub const SDL_SCANCODE_KP_B = 189;
pub const SDL_SCANCODE_KP_C = 190;
pub const SDL_SCANCODE_KP_D = 191;
pub const SDL_SCANCODE_KP_E = 192;
pub const SDL_SCANCODE_KP_F = 193;
pub const SDL_SCANCODE_KP_XOR = 194;
pub const SDL_SCANCODE_KP_POWER = 195;
pub const SDL_SCANCODE_KP_PERCENT = 196;
pub const SDL_SCANCODE_KP_LESS = 197;
pub const SDL_SCANCODE_KP_GREATER = 198;
pub const SDL_SCANCODE_KP_AMPERSAND = 199;
pub const SDL_SCANCODE_KP_DBLAMPERSAND = 200;
pub const SDL_SCANCODE_KP_VERTICALBAR = 201;
pub const SDL_SCANCODE_KP_DBLVERTICALBAR = 202;
pub const SDL_SCANCODE_KP_COLON = 203;
pub const SDL_SCANCODE_KP_HASH = 204;
pub const SDL_SCANCODE_KP_SPACE = 205;
pub const SDL_SCANCODE_KP_AT = 206;
pub const SDL_SCANCODE_KP_EXCLAM = 207;
pub const SDL_SCANCODE_KP_MEMSTORE = 208;
pub const SDL_SCANCODE_KP_MEMRECALL = 209;
pub const SDL_SCANCODE_KP_MEMCLEAR = 210;
pub const SDL_SCANCODE_KP_MEMADD = 211;
pub const SDL_SCANCODE_KP_MEMSUBTRACT = 212;
pub const SDL_SCANCODE_KP_MEMMULTIPLY = 213;
pub const SDL_SCANCODE_KP_MEMDIVIDE = 214;
pub const SDL_SCANCODE_KP_PLUSMINUS = 215;
pub const SDL_SCANCODE_KP_CLEAR = 216;
pub const SDL_SCANCODE_KP_CLEARENTRY = 217;
pub const SDL_SCANCODE_KP_BINARY = 218;
pub const SDL_SCANCODE_KP_OCTAL = 219;
pub const SDL_SCANCODE_KP_DECIMAL = 220;
pub const SDL_SCANCODE_KP_HEXADECIMAL = 221;
pub const SDL_SCANCODE_LCTRL = 224;
pub const SDL_SCANCODE_LSHIFT = 225;
pub const SDL_SCANCODE_LALT = 226;
pub const SDL_SCANCODE_LGUI = 227;
pub const SDL_SCANCODE_RCTRL = 228;
pub const SDL_SCANCODE_RSHIFT = 229;
pub const SDL_SCANCODE_RALT = 230;
pub const SDL_SCANCODE_RGUI = 231;
pub const SDL_SCANCODE_MODE = 257;
pub const SDL_SCANCODE_AUDIONEXT = 258;
pub const SDL_SCANCODE_AUDIOPREV = 259;
pub const SDL_SCANCODE_AUDIOSTOP = 260;
pub const SDL_SCANCODE_AUDIOPLAY = 261;
pub const SDL_SCANCODE_AUDIOMUTE = 262;
pub const SDL_SCANCODE_MEDIASELECT = 263;
pub const SDL_SCANCODE_WWW = 264;
pub const SDL_SCANCODE_MAIL = 265;
pub const SDL_SCANCODE_CALCULATOR = 266;
pub const SDL_SCANCODE_COMPUTER = 267;
pub const SDL_SCANCODE_AC_SEARCH = 268;
pub const SDL_SCANCODE_AC_HOME = 269;
pub const SDL_SCANCODE_AC_BACK = 270;
pub const SDL_SCANCODE_AC_FORWARD = 271;
pub const SDL_SCANCODE_AC_STOP = 272;
pub const SDL_SCANCODE_AC_REFRESH = 273;
pub const SDL_SCANCODE_AC_BOOKMARKS = 274;
pub const SDL_SCANCODE_BRIGHTNESSDOWN = 275;
pub const SDL_SCANCODE_BRIGHTNESSUP = 276;
pub const SDL_SCANCODE_DISPLAYSWITCH = 277;
pub const SDL_SCANCODE_KBDILLUMTOGGLE = 278;
pub const SDL_SCANCODE_KBDILLUMDOWN = 279;
pub const SDL_SCANCODE_KBDILLUMUP = 280;
pub const SDL_SCANCODE_EJECT = 281;
pub const SDL_SCANCODE_SLEEP = 282;
pub const SDL_SCANCODE_APP1 = 283;
pub const SDL_SCANCODE_APP2 = 284;
pub const SDL_NUM_SCANCODES = 512;
pub const SDL_Scancode = extern enum {
    SDL_SCANCODE_UNKNOWN = 0,
    SDL_SCANCODE_A = 4,
    SDL_SCANCODE_B = 5,
    SDL_SCANCODE_C = 6,
    SDL_SCANCODE_D = 7,
    SDL_SCANCODE_E = 8,
    SDL_SCANCODE_F = 9,
    SDL_SCANCODE_G = 10,
    SDL_SCANCODE_H = 11,
    SDL_SCANCODE_I = 12,
    SDL_SCANCODE_J = 13,
    SDL_SCANCODE_K = 14,
    SDL_SCANCODE_L = 15,
    SDL_SCANCODE_M = 16,
    SDL_SCANCODE_N = 17,
    SDL_SCANCODE_O = 18,
    SDL_SCANCODE_P = 19,
    SDL_SCANCODE_Q = 20,
    SDL_SCANCODE_R = 21,
    SDL_SCANCODE_S = 22,
    SDL_SCANCODE_T = 23,
    SDL_SCANCODE_U = 24,
    SDL_SCANCODE_V = 25,
    SDL_SCANCODE_W = 26,
    SDL_SCANCODE_X = 27,
    SDL_SCANCODE_Y = 28,
    SDL_SCANCODE_Z = 29,
    SDL_SCANCODE_1 = 30,
    SDL_SCANCODE_2 = 31,
    SDL_SCANCODE_3 = 32,
    SDL_SCANCODE_4 = 33,
    SDL_SCANCODE_5 = 34,
    SDL_SCANCODE_6 = 35,
    SDL_SCANCODE_7 = 36,
    SDL_SCANCODE_8 = 37,
    SDL_SCANCODE_9 = 38,
    SDL_SCANCODE_0 = 39,
    SDL_SCANCODE_RETURN = 40,
    SDL_SCANCODE_ESCAPE = 41,
    SDL_SCANCODE_BACKSPACE = 42,
    SDL_SCANCODE_TAB = 43,
    SDL_SCANCODE_SPACE = 44,
    SDL_SCANCODE_MINUS = 45,
    SDL_SCANCODE_EQUALS = 46,
    SDL_SCANCODE_LEFTBRACKET = 47,
    SDL_SCANCODE_RIGHTBRACKET = 48,
    SDL_SCANCODE_BACKSLASH = 49,
    SDL_SCANCODE_NONUSHASH = 50,
    SDL_SCANCODE_SEMICOLON = 51,
    SDL_SCANCODE_APOSTROPHE = 52,
    SDL_SCANCODE_GRAVE = 53,
    SDL_SCANCODE_COMMA = 54,
    SDL_SCANCODE_PERIOD = 55,
    SDL_SCANCODE_SLASH = 56,
    SDL_SCANCODE_CAPSLOCK = 57,
    SDL_SCANCODE_F1 = 58,
    SDL_SCANCODE_F2 = 59,
    SDL_SCANCODE_F3 = 60,
    SDL_SCANCODE_F4 = 61,
    SDL_SCANCODE_F5 = 62,
    SDL_SCANCODE_F6 = 63,
    SDL_SCANCODE_F7 = 64,
    SDL_SCANCODE_F8 = 65,
    SDL_SCANCODE_F9 = 66,
    SDL_SCANCODE_F10 = 67,
    SDL_SCANCODE_F11 = 68,
    SDL_SCANCODE_F12 = 69,
    SDL_SCANCODE_PRINTSCREEN = 70,
    SDL_SCANCODE_SCROLLLOCK = 71,
    SDL_SCANCODE_PAUSE = 72,
    SDL_SCANCODE_INSERT = 73,
    SDL_SCANCODE_HOME = 74,
    SDL_SCANCODE_PAGEUP = 75,
    SDL_SCANCODE_DELETE = 76,
    SDL_SCANCODE_END = 77,
    SDL_SCANCODE_PAGEDOWN = 78,
    SDL_SCANCODE_RIGHT = 79,
    SDL_SCANCODE_LEFT = 80,
    SDL_SCANCODE_DOWN = 81,
    SDL_SCANCODE_UP = 82,
    SDL_SCANCODE_NUMLOCKCLEAR = 83,
    SDL_SCANCODE_KP_DIVIDE = 84,
    SDL_SCANCODE_KP_MULTIPLY = 85,
    SDL_SCANCODE_KP_MINUS = 86,
    SDL_SCANCODE_KP_PLUS = 87,
    SDL_SCANCODE_KP_ENTER = 88,
    SDL_SCANCODE_KP_1 = 89,
    SDL_SCANCODE_KP_2 = 90,
    SDL_SCANCODE_KP_3 = 91,
    SDL_SCANCODE_KP_4 = 92,
    SDL_SCANCODE_KP_5 = 93,
    SDL_SCANCODE_KP_6 = 94,
    SDL_SCANCODE_KP_7 = 95,
    SDL_SCANCODE_KP_8 = 96,
    SDL_SCANCODE_KP_9 = 97,
    SDL_SCANCODE_KP_0 = 98,
    SDL_SCANCODE_KP_PERIOD = 99,
    SDL_SCANCODE_NONUSBACKSLASH = 100,
    SDL_SCANCODE_APPLICATION = 101,
    SDL_SCANCODE_POWER = 102,
    SDL_SCANCODE_KP_EQUALS = 103,
    SDL_SCANCODE_F13 = 104,
    SDL_SCANCODE_F14 = 105,
    SDL_SCANCODE_F15 = 106,
    SDL_SCANCODE_F16 = 107,
    SDL_SCANCODE_F17 = 108,
    SDL_SCANCODE_F18 = 109,
    SDL_SCANCODE_F19 = 110,
    SDL_SCANCODE_F20 = 111,
    SDL_SCANCODE_F21 = 112,
    SDL_SCANCODE_F22 = 113,
    SDL_SCANCODE_F23 = 114,
    SDL_SCANCODE_F24 = 115,
    SDL_SCANCODE_EXECUTE = 116,
    SDL_SCANCODE_HELP = 117,
    SDL_SCANCODE_MENU = 118,
    SDL_SCANCODE_SELECT = 119,
    SDL_SCANCODE_STOP = 120,
    SDL_SCANCODE_AGAIN = 121,
    SDL_SCANCODE_UNDO = 122,
    SDL_SCANCODE_CUT = 123,
    SDL_SCANCODE_COPY = 124,
    SDL_SCANCODE_PASTE = 125,
    SDL_SCANCODE_FIND = 126,
    SDL_SCANCODE_MUTE = 127,
    SDL_SCANCODE_VOLUMEUP = 128,
    SDL_SCANCODE_VOLUMEDOWN = 129,
    SDL_SCANCODE_KP_COMMA = 133,
    SDL_SCANCODE_KP_EQUALSAS400 = 134,
    SDL_SCANCODE_INTERNATIONAL1 = 135,
    SDL_SCANCODE_INTERNATIONAL2 = 136,
    SDL_SCANCODE_INTERNATIONAL3 = 137,
    SDL_SCANCODE_INTERNATIONAL4 = 138,
    SDL_SCANCODE_INTERNATIONAL5 = 139,
    SDL_SCANCODE_INTERNATIONAL6 = 140,
    SDL_SCANCODE_INTERNATIONAL7 = 141,
    SDL_SCANCODE_INTERNATIONAL8 = 142,
    SDL_SCANCODE_INTERNATIONAL9 = 143,
    SDL_SCANCODE_LANG1 = 144,
    SDL_SCANCODE_LANG2 = 145,
    SDL_SCANCODE_LANG3 = 146,
    SDL_SCANCODE_LANG4 = 147,
    SDL_SCANCODE_LANG5 = 148,
    SDL_SCANCODE_LANG6 = 149,
    SDL_SCANCODE_LANG7 = 150,
    SDL_SCANCODE_LANG8 = 151,
    SDL_SCANCODE_LANG9 = 152,
    SDL_SCANCODE_ALTERASE = 153,
    SDL_SCANCODE_SYSREQ = 154,
    SDL_SCANCODE_CANCEL = 155,
    SDL_SCANCODE_CLEAR = 156,
    SDL_SCANCODE_PRIOR = 157,
    SDL_SCANCODE_RETURN2 = 158,
    SDL_SCANCODE_SEPARATOR = 159,
    SDL_SCANCODE_OUT = 160,
    SDL_SCANCODE_OPER = 161,
    SDL_SCANCODE_CLEARAGAIN = 162,
    SDL_SCANCODE_CRSEL = 163,
    SDL_SCANCODE_EXSEL = 164,
    SDL_SCANCODE_KP_00 = 176,
    SDL_SCANCODE_KP_000 = 177,
    SDL_SCANCODE_THOUSANDSSEPARATOR = 178,
    SDL_SCANCODE_DECIMALSEPARATOR = 179,
    SDL_SCANCODE_CURRENCYUNIT = 180,
    SDL_SCANCODE_CURRENCYSUBUNIT = 181,
    SDL_SCANCODE_KP_LEFTPAREN = 182,
    SDL_SCANCODE_KP_RIGHTPAREN = 183,
    SDL_SCANCODE_KP_LEFTBRACE = 184,
    SDL_SCANCODE_KP_RIGHTBRACE = 185,
    SDL_SCANCODE_KP_TAB = 186,
    SDL_SCANCODE_KP_BACKSPACE = 187,
    SDL_SCANCODE_KP_A = 188,
    SDL_SCANCODE_KP_B = 189,
    SDL_SCANCODE_KP_C = 190,
    SDL_SCANCODE_KP_D = 191,
    SDL_SCANCODE_KP_E = 192,
    SDL_SCANCODE_KP_F = 193,
    SDL_SCANCODE_KP_XOR = 194,
    SDL_SCANCODE_KP_POWER = 195,
    SDL_SCANCODE_KP_PERCENT = 196,
    SDL_SCANCODE_KP_LESS = 197,
    SDL_SCANCODE_KP_GREATER = 198,
    SDL_SCANCODE_KP_AMPERSAND = 199,
    SDL_SCANCODE_KP_DBLAMPERSAND = 200,
    SDL_SCANCODE_KP_VERTICALBAR = 201,
    SDL_SCANCODE_KP_DBLVERTICALBAR = 202,
    SDL_SCANCODE_KP_COLON = 203,
    SDL_SCANCODE_KP_HASH = 204,
    SDL_SCANCODE_KP_SPACE = 205,
    SDL_SCANCODE_KP_AT = 206,
    SDL_SCANCODE_KP_EXCLAM = 207,
    SDL_SCANCODE_KP_MEMSTORE = 208,
    SDL_SCANCODE_KP_MEMRECALL = 209,
    SDL_SCANCODE_KP_MEMCLEAR = 210,
    SDL_SCANCODE_KP_MEMADD = 211,
    SDL_SCANCODE_KP_MEMSUBTRACT = 212,
    SDL_SCANCODE_KP_MEMMULTIPLY = 213,
    SDL_SCANCODE_KP_MEMDIVIDE = 214,
    SDL_SCANCODE_KP_PLUSMINUS = 215,
    SDL_SCANCODE_KP_CLEAR = 216,
    SDL_SCANCODE_KP_CLEARENTRY = 217,
    SDL_SCANCODE_KP_BINARY = 218,
    SDL_SCANCODE_KP_OCTAL = 219,
    SDL_SCANCODE_KP_DECIMAL = 220,
    SDL_SCANCODE_KP_HEXADECIMAL = 221,
    SDL_SCANCODE_LCTRL = 224,
    SDL_SCANCODE_LSHIFT = 225,
    SDL_SCANCODE_LALT = 226,
    SDL_SCANCODE_LGUI = 227,
    SDL_SCANCODE_RCTRL = 228,
    SDL_SCANCODE_RSHIFT = 229,
    SDL_SCANCODE_RALT = 230,
    SDL_SCANCODE_RGUI = 231,
    SDL_SCANCODE_MODE = 257,
    SDL_SCANCODE_AUDIONEXT = 258,
    SDL_SCANCODE_AUDIOPREV = 259,
    SDL_SCANCODE_AUDIOSTOP = 260,
    SDL_SCANCODE_AUDIOPLAY = 261,
    SDL_SCANCODE_AUDIOMUTE = 262,
    SDL_SCANCODE_MEDIASELECT = 263,
    SDL_SCANCODE_WWW = 264,
    SDL_SCANCODE_MAIL = 265,
    SDL_SCANCODE_CALCULATOR = 266,
    SDL_SCANCODE_COMPUTER = 267,
    SDL_SCANCODE_AC_SEARCH = 268,
    SDL_SCANCODE_AC_HOME = 269,
    SDL_SCANCODE_AC_BACK = 270,
    SDL_SCANCODE_AC_FORWARD = 271,
    SDL_SCANCODE_AC_STOP = 272,
    SDL_SCANCODE_AC_REFRESH = 273,
    SDL_SCANCODE_AC_BOOKMARKS = 274,
    SDL_SCANCODE_BRIGHTNESSDOWN = 275,
    SDL_SCANCODE_BRIGHTNESSUP = 276,
    SDL_SCANCODE_DISPLAYSWITCH = 277,
    SDL_SCANCODE_KBDILLUMTOGGLE = 278,
    SDL_SCANCODE_KBDILLUMDOWN = 279,
    SDL_SCANCODE_KBDILLUMUP = 280,
    SDL_SCANCODE_EJECT = 281,
    SDL_SCANCODE_SLEEP = 282,
    SDL_SCANCODE_APP1 = 283,
    SDL_SCANCODE_APP2 = 284,
    SDL_NUM_SCANCODES = 512,
};
pub const SDL_Keycode = Sint32;
pub const SDLK_UNKNOWN = 0;
pub const SDLK_RETURN = 13;
pub const SDLK_ESCAPE = 27;
pub const SDLK_BACKSPACE = 8;
pub const SDLK_TAB = 9;
pub const SDLK_SPACE = 32;
pub const SDLK_EXCLAIM = 33;
pub const SDLK_QUOTEDBL = 34;
pub const SDLK_HASH = 35;
pub const SDLK_PERCENT = 37;
pub const SDLK_DOLLAR = 36;
pub const SDLK_AMPERSAND = 38;
pub const SDLK_QUOTE = 39;
pub const SDLK_LEFTPAREN = 40;
pub const SDLK_RIGHTPAREN = 41;
pub const SDLK_ASTERISK = 42;
pub const SDLK_PLUS = 43;
pub const SDLK_COMMA = 44;
pub const SDLK_MINUS = 45;
pub const SDLK_PERIOD = 46;
pub const SDLK_SLASH = 47;
pub const SDLK_0 = 48;
pub const SDLK_1 = 49;
pub const SDLK_2 = 50;
pub const SDLK_3 = 51;
pub const SDLK_4 = 52;
pub const SDLK_5 = 53;
pub const SDLK_6 = 54;
pub const SDLK_7 = 55;
pub const SDLK_8 = 56;
pub const SDLK_9 = 57;
pub const SDLK_COLON = 58;
pub const SDLK_SEMICOLON = 59;
pub const SDLK_LESS = 60;
pub const SDLK_EQUALS = 61;
pub const SDLK_GREATER = 62;
pub const SDLK_QUESTION = 63;
pub const SDLK_AT = 64;
pub const SDLK_LEFTBRACKET = 91;
pub const SDLK_BACKSLASH = 92;
pub const SDLK_RIGHTBRACKET = 93;
pub const SDLK_CARET = 94;
pub const SDLK_UNDERSCORE = 95;
pub const SDLK_BACKQUOTE = 96;
pub const SDLK_a = 97;
pub const SDLK_b = 98;
pub const SDLK_c = 99;
pub const SDLK_d = 100;
pub const SDLK_e = 101;
pub const SDLK_f = 102;
pub const SDLK_g = 103;
pub const SDLK_h = 104;
pub const SDLK_i = 105;
pub const SDLK_j = 106;
pub const SDLK_k = 107;
pub const SDLK_l = 108;
pub const SDLK_m = 109;
pub const SDLK_n = 110;
pub const SDLK_o = 111;
pub const SDLK_p = 112;
pub const SDLK_q = 113;
pub const SDLK_r = 114;
pub const SDLK_s = 115;
pub const SDLK_t = 116;
pub const SDLK_u = 117;
pub const SDLK_v = 118;
pub const SDLK_w = 119;
pub const SDLK_x = 120;
pub const SDLK_y = 121;
pub const SDLK_z = 122;
pub const SDLK_CAPSLOCK = 1073741881;
pub const SDLK_F1 = 1073741882;
pub const SDLK_F2 = 1073741883;
pub const SDLK_F3 = 1073741884;
pub const SDLK_F4 = 1073741885;
pub const SDLK_F5 = 1073741886;
pub const SDLK_F6 = 1073741887;
pub const SDLK_F7 = 1073741888;
pub const SDLK_F8 = 1073741889;
pub const SDLK_F9 = 1073741890;
pub const SDLK_F10 = 1073741891;
pub const SDLK_F11 = 1073741892;
pub const SDLK_F12 = 1073741893;
pub const SDLK_PRINTSCREEN = 1073741894;
pub const SDLK_SCROLLLOCK = 1073741895;
pub const SDLK_PAUSE = 1073741896;
pub const SDLK_INSERT = 1073741897;
pub const SDLK_HOME = 1073741898;
pub const SDLK_PAGEUP = 1073741899;
pub const SDLK_DELETE = 127;
pub const SDLK_END = 1073741901;
pub const SDLK_PAGEDOWN = 1073741902;
pub const SDLK_RIGHT = 1073741903;
pub const SDLK_LEFT = 1073741904;
pub const SDLK_DOWN = 1073741905;
pub const SDLK_UP = 1073741906;
pub const SDLK_NUMLOCKCLEAR = 1073741907;
pub const SDLK_KP_DIVIDE = 1073741908;
pub const SDLK_KP_MULTIPLY = 1073741909;
pub const SDLK_KP_MINUS = 1073741910;
pub const SDLK_KP_PLUS = 1073741911;
pub const SDLK_KP_ENTER = 1073741912;
pub const SDLK_KP_1 = 1073741913;
pub const SDLK_KP_2 = 1073741914;
pub const SDLK_KP_3 = 1073741915;
pub const SDLK_KP_4 = 1073741916;
pub const SDLK_KP_5 = 1073741917;
pub const SDLK_KP_6 = 1073741918;
pub const SDLK_KP_7 = 1073741919;
pub const SDLK_KP_8 = 1073741920;
pub const SDLK_KP_9 = 1073741921;
pub const SDLK_KP_0 = 1073741922;
pub const SDLK_KP_PERIOD = 1073741923;
pub const SDLK_APPLICATION = 1073741925;
pub const SDLK_POWER = 1073741926;
pub const SDLK_KP_EQUALS = 1073741927;
pub const SDLK_F13 = 1073741928;
pub const SDLK_F14 = 1073741929;
pub const SDLK_F15 = 1073741930;
pub const SDLK_F16 = 1073741931;
pub const SDLK_F17 = 1073741932;
pub const SDLK_F18 = 1073741933;
pub const SDLK_F19 = 1073741934;
pub const SDLK_F20 = 1073741935;
pub const SDLK_F21 = 1073741936;
pub const SDLK_F22 = 1073741937;
pub const SDLK_F23 = 1073741938;
pub const SDLK_F24 = 1073741939;
pub const SDLK_EXECUTE = 1073741940;
pub const SDLK_HELP = 1073741941;
pub const SDLK_MENU = 1073741942;
pub const SDLK_SELECT = 1073741943;
pub const SDLK_STOP = 1073741944;
pub const SDLK_AGAIN = 1073741945;
pub const SDLK_UNDO = 1073741946;
pub const SDLK_CUT = 1073741947;
pub const SDLK_COPY = 1073741948;
pub const SDLK_PASTE = 1073741949;
pub const SDLK_FIND = 1073741950;
pub const SDLK_MUTE = 1073741951;
pub const SDLK_VOLUMEUP = 1073741952;
pub const SDLK_VOLUMEDOWN = 1073741953;
pub const SDLK_KP_COMMA = 1073741957;
pub const SDLK_KP_EQUALSAS400 = 1073741958;
pub const SDLK_ALTERASE = 1073741977;
pub const SDLK_SYSREQ = 1073741978;
pub const SDLK_CANCEL = 1073741979;
pub const SDLK_CLEAR = 1073741980;
pub const SDLK_PRIOR = 1073741981;
pub const SDLK_RETURN2 = 1073741982;
pub const SDLK_SEPARATOR = 1073741983;
pub const SDLK_OUT = 1073741984;
pub const SDLK_OPER = 1073741985;
pub const SDLK_CLEARAGAIN = 1073741986;
pub const SDLK_CRSEL = 1073741987;
pub const SDLK_EXSEL = 1073741988;
pub const SDLK_KP_00 = 1073742000;
pub const SDLK_KP_000 = 1073742001;
pub const SDLK_THOUSANDSSEPARATOR = 1073742002;
pub const SDLK_DECIMALSEPARATOR = 1073742003;
pub const SDLK_CURRENCYUNIT = 1073742004;
pub const SDLK_CURRENCYSUBUNIT = 1073742005;
pub const SDLK_KP_LEFTPAREN = 1073742006;
pub const SDLK_KP_RIGHTPAREN = 1073742007;
pub const SDLK_KP_LEFTBRACE = 1073742008;
pub const SDLK_KP_RIGHTBRACE = 1073742009;
pub const SDLK_KP_TAB = 1073742010;
pub const SDLK_KP_BACKSPACE = 1073742011;
pub const SDLK_KP_A = 1073742012;
pub const SDLK_KP_B = 1073742013;
pub const SDLK_KP_C = 1073742014;
pub const SDLK_KP_D = 1073742015;
pub const SDLK_KP_E = 1073742016;
pub const SDLK_KP_F = 1073742017;
pub const SDLK_KP_XOR = 1073742018;
pub const SDLK_KP_POWER = 1073742019;
pub const SDLK_KP_PERCENT = 1073742020;
pub const SDLK_KP_LESS = 1073742021;
pub const SDLK_KP_GREATER = 1073742022;
pub const SDLK_KP_AMPERSAND = 1073742023;
pub const SDLK_KP_DBLAMPERSAND = 1073742024;
pub const SDLK_KP_VERTICALBAR = 1073742025;
pub const SDLK_KP_DBLVERTICALBAR = 1073742026;
pub const SDLK_KP_COLON = 1073742027;
pub const SDLK_KP_HASH = 1073742028;
pub const SDLK_KP_SPACE = 1073742029;
pub const SDLK_KP_AT = 1073742030;
pub const SDLK_KP_EXCLAM = 1073742031;
pub const SDLK_KP_MEMSTORE = 1073742032;
pub const SDLK_KP_MEMRECALL = 1073742033;
pub const SDLK_KP_MEMCLEAR = 1073742034;
pub const SDLK_KP_MEMADD = 1073742035;
pub const SDLK_KP_MEMSUBTRACT = 1073742036;
pub const SDLK_KP_MEMMULTIPLY = 1073742037;
pub const SDLK_KP_MEMDIVIDE = 1073742038;
pub const SDLK_KP_PLUSMINUS = 1073742039;
pub const SDLK_KP_CLEAR = 1073742040;
pub const SDLK_KP_CLEARENTRY = 1073742041;
pub const SDLK_KP_BINARY = 1073742042;
pub const SDLK_KP_OCTAL = 1073742043;
pub const SDLK_KP_DECIMAL = 1073742044;
pub const SDLK_KP_HEXADECIMAL = 1073742045;
pub const SDLK_LCTRL = 1073742048;
pub const SDLK_LSHIFT = 1073742049;
pub const SDLK_LALT = 1073742050;
pub const SDLK_LGUI = 1073742051;
pub const SDLK_RCTRL = 1073742052;
pub const SDLK_RSHIFT = 1073742053;
pub const SDLK_RALT = 1073742054;
pub const SDLK_RGUI = 1073742055;
pub const SDLK_MODE = 1073742081;
pub const SDLK_AUDIONEXT = 1073742082;
pub const SDLK_AUDIOPREV = 1073742083;
pub const SDLK_AUDIOSTOP = 1073742084;
pub const SDLK_AUDIOPLAY = 1073742085;
pub const SDLK_AUDIOMUTE = 1073742086;
pub const SDLK_MEDIASELECT = 1073742087;
pub const SDLK_WWW = 1073742088;
pub const SDLK_MAIL = 1073742089;
pub const SDLK_CALCULATOR = 1073742090;
pub const SDLK_COMPUTER = 1073742091;
pub const SDLK_AC_SEARCH = 1073742092;
pub const SDLK_AC_HOME = 1073742093;
pub const SDLK_AC_BACK = 1073742094;
pub const SDLK_AC_FORWARD = 1073742095;
pub const SDLK_AC_STOP = 1073742096;
pub const SDLK_AC_REFRESH = 1073742097;
pub const SDLK_AC_BOOKMARKS = 1073742098;
pub const SDLK_BRIGHTNESSDOWN = 1073742099;
pub const SDLK_BRIGHTNESSUP = 1073742100;
pub const SDLK_DISPLAYSWITCH = 1073742101;
pub const SDLK_KBDILLUMTOGGLE = 1073742102;
pub const SDLK_KBDILLUMDOWN = 1073742103;
pub const SDLK_KBDILLUMUP = 1073742104;
pub const SDLK_EJECT = 1073742105;
pub const SDLK_SLEEP = 1073742106;
pub const KMOD_NONE = 0;
pub const KMOD_LSHIFT = 1;
pub const KMOD_RSHIFT = 2;
pub const KMOD_LCTRL = 64;
pub const KMOD_RCTRL = 128;
pub const KMOD_LALT = 256;
pub const KMOD_RALT = 512;
pub const KMOD_LGUI = 1024;
pub const KMOD_RGUI = 2048;
pub const KMOD_NUM = 4096;
pub const KMOD_CAPS = 8192;
pub const KMOD_MODE = 16384;
pub const KMOD_RESERVED = 32768;
pub const SDL_Keymod = extern enum {
    KMOD_NONE = 0,
    KMOD_LSHIFT = 1,
    KMOD_RSHIFT = 2,
    KMOD_LCTRL = 64,
    KMOD_RCTRL = 128,
    KMOD_LALT = 256,
    KMOD_RALT = 512,
    KMOD_LGUI = 1024,
    KMOD_RGUI = 2048,
    KMOD_NUM = 4096,
    KMOD_CAPS = 8192,
    KMOD_MODE = 16384,
    KMOD_RESERVED = 32768,
};
pub const struct_SDL_Keysym = extern struct {
    scancode: SDL_Scancode,
    sym: SDL_Keycode,
    mod: Uint16,
    unused: Uint32,
};
pub const SDL_Keysym = struct_SDL_Keysym;
pub extern fn SDL_GetKeyboardFocus() ?*SDL_Window;
pub extern fn SDL_GetKeyboardState(numkeys: ?[*]c_int) ?[*]const Uint8;
pub extern fn SDL_GetModState() SDL_Keymod;
pub extern fn SDL_SetModState(modstate: SDL_Keymod) void;
pub extern fn SDL_GetKeyFromScancode(scancode: SDL_Scancode) SDL_Keycode;
pub extern fn SDL_GetScancodeFromKey(key: SDL_Keycode) SDL_Scancode;
pub extern fn SDL_GetScancodeName(scancode: SDL_Scancode) ?[*]const u8;
pub extern fn SDL_GetScancodeFromName(name: ?[*]const u8) SDL_Scancode;
pub extern fn SDL_GetKeyName(key: SDL_Keycode) ?[*]const u8;
pub extern fn SDL_GetKeyFromName(name: ?[*]const u8) SDL_Keycode;
pub extern fn SDL_StartTextInput() void;
pub extern fn SDL_IsTextInputActive() SDL_bool;
pub extern fn SDL_StopTextInput() void;
pub extern fn SDL_SetTextInputRect(rect: ?[*]SDL_Rect) void;
pub extern fn SDL_HasScreenKeyboardSupport() SDL_bool;
pub extern fn SDL_IsScreenKeyboardShown(window: ?*SDL_Window) SDL_bool;
pub const struct_SDL_Cursor = @OpaqueType();
pub const SDL_Cursor = struct_SDL_Cursor;
pub const SDL_SYSTEM_CURSOR_ARROW = 0;
pub const SDL_SYSTEM_CURSOR_IBEAM = 1;
pub const SDL_SYSTEM_CURSOR_WAIT = 2;
pub const SDL_SYSTEM_CURSOR_CROSSHAIR = 3;
pub const SDL_SYSTEM_CURSOR_WAITARROW = 4;
pub const SDL_SYSTEM_CURSOR_SIZENWSE = 5;
pub const SDL_SYSTEM_CURSOR_SIZENESW = 6;
pub const SDL_SYSTEM_CURSOR_SIZEWE = 7;
pub const SDL_SYSTEM_CURSOR_SIZENS = 8;
pub const SDL_SYSTEM_CURSOR_SIZEALL = 9;
pub const SDL_SYSTEM_CURSOR_NO = 10;
pub const SDL_SYSTEM_CURSOR_HAND = 11;
pub const SDL_NUM_SYSTEM_CURSORS = 12;
pub const SDL_SystemCursor = extern enum {
    SDL_SYSTEM_CURSOR_ARROW = 0,
    SDL_SYSTEM_CURSOR_IBEAM = 1,
    SDL_SYSTEM_CURSOR_WAIT = 2,
    SDL_SYSTEM_CURSOR_CROSSHAIR = 3,
    SDL_SYSTEM_CURSOR_WAITARROW = 4,
    SDL_SYSTEM_CURSOR_SIZENWSE = 5,
    SDL_SYSTEM_CURSOR_SIZENESW = 6,
    SDL_SYSTEM_CURSOR_SIZEWE = 7,
    SDL_SYSTEM_CURSOR_SIZENS = 8,
    SDL_SYSTEM_CURSOR_SIZEALL = 9,
    SDL_SYSTEM_CURSOR_NO = 10,
    SDL_SYSTEM_CURSOR_HAND = 11,
    SDL_NUM_SYSTEM_CURSORS = 12,
};
pub const SDL_MOUSEWHEEL_NORMAL = 0;
pub const SDL_MOUSEWHEEL_FLIPPED = 1;
pub const SDL_MouseWheelDirection = extern enum {
    SDL_MOUSEWHEEL_NORMAL = 0,
    SDL_MOUSEWHEEL_FLIPPED = 1,
};
pub extern fn SDL_GetMouseFocus() ?*SDL_Window;
pub extern fn SDL_GetMouseState(x: ?[*]c_int, y: ?[*]c_int) Uint32;
pub extern fn SDL_GetGlobalMouseState(x: ?[*]c_int, y: ?[*]c_int) Uint32;
pub extern fn SDL_GetRelativeMouseState(x: ?[*]c_int, y: ?[*]c_int) Uint32;
pub extern fn SDL_WarpMouseInWindow(window: ?*SDL_Window, x: c_int, y: c_int) void;
pub extern fn SDL_WarpMouseGlobal(x: c_int, y: c_int) c_int;
pub extern fn SDL_SetRelativeMouseMode(enabled: SDL_bool) c_int;
pub extern fn SDL_CaptureMouse(enabled: SDL_bool) c_int;
pub extern fn SDL_GetRelativeMouseMode() SDL_bool;
pub extern fn SDL_CreateCursor(data: ?[*]const Uint8, mask: ?[*]const Uint8, w: c_int, h: c_int, hot_x: c_int, hot_y: c_int) ?*SDL_Cursor;
pub extern fn SDL_CreateColorCursor(surface: ?[*]SDL_Surface, hot_x: c_int, hot_y: c_int) ?*SDL_Cursor;
pub extern fn SDL_CreateSystemCursor(id: SDL_SystemCursor) ?*SDL_Cursor;
pub extern fn SDL_SetCursor(cursor: ?*SDL_Cursor) void;
pub extern fn SDL_GetCursor() ?*SDL_Cursor;
pub extern fn SDL_GetDefaultCursor() ?*SDL_Cursor;
pub extern fn SDL_FreeCursor(cursor: ?*SDL_Cursor) void;
pub extern fn SDL_ShowCursor(toggle: c_int) c_int;
pub const struct__SDL_Joystick = @OpaqueType();
pub const SDL_Joystick = struct__SDL_Joystick;
pub const SDL_JoystickGUID = extern struct {
    data: [16]Uint8,
};
pub const SDL_JoystickID = Sint32;
pub const SDL_JOYSTICK_POWER_UNKNOWN = -1;
pub const SDL_JOYSTICK_POWER_EMPTY = 0;
pub const SDL_JOYSTICK_POWER_LOW = 1;
pub const SDL_JOYSTICK_POWER_MEDIUM = 2;
pub const SDL_JOYSTICK_POWER_FULL = 3;
pub const SDL_JOYSTICK_POWER_WIRED = 4;
pub const SDL_JOYSTICK_POWER_MAX = 5;
pub const SDL_JoystickPowerLevel = extern enum {
    SDL_JOYSTICK_POWER_UNKNOWN = -1,
    SDL_JOYSTICK_POWER_EMPTY = 0,
    SDL_JOYSTICK_POWER_LOW = 1,
    SDL_JOYSTICK_POWER_MEDIUM = 2,
    SDL_JOYSTICK_POWER_FULL = 3,
    SDL_JOYSTICK_POWER_WIRED = 4,
    SDL_JOYSTICK_POWER_MAX = 5,
};
pub extern fn SDL_NumJoysticks() c_int;
pub extern fn SDL_JoystickNameForIndex(device_index: c_int) ?[*]const u8;
pub extern fn SDL_JoystickOpen(device_index: c_int) ?*SDL_Joystick;
pub extern fn SDL_JoystickFromInstanceID(joyid: SDL_JoystickID) ?*SDL_Joystick;
pub extern fn SDL_JoystickName(joystick: ?*SDL_Joystick) ?[*]const u8;
pub extern fn SDL_JoystickGetDeviceGUID(device_index: c_int) SDL_JoystickGUID;
pub extern fn SDL_JoystickGetGUID(joystick: ?*SDL_Joystick) SDL_JoystickGUID;
pub extern fn SDL_JoystickGetGUIDString(guid: SDL_JoystickGUID, pszGUID: ?[*]u8, cbGUID: c_int) void;
pub extern fn SDL_JoystickGetGUIDFromString(pchGUID: ?[*]const u8) SDL_JoystickGUID;
pub extern fn SDL_JoystickGetAttached(joystick: ?*SDL_Joystick) SDL_bool;
pub extern fn SDL_JoystickInstanceID(joystick: ?*SDL_Joystick) SDL_JoystickID;
pub extern fn SDL_JoystickNumAxes(joystick: ?*SDL_Joystick) c_int;
pub extern fn SDL_JoystickNumBalls(joystick: ?*SDL_Joystick) c_int;
pub extern fn SDL_JoystickNumHats(joystick: ?*SDL_Joystick) c_int;
pub extern fn SDL_JoystickNumButtons(joystick: ?*SDL_Joystick) c_int;
pub extern fn SDL_JoystickUpdate() void;
pub extern fn SDL_JoystickEventState(state: c_int) c_int;
pub extern fn SDL_JoystickGetAxis(joystick: ?*SDL_Joystick, axis: c_int) Sint16;
pub extern fn SDL_JoystickGetHat(joystick: ?*SDL_Joystick, hat: c_int) Uint8;
pub extern fn SDL_JoystickGetBall(joystick: ?*SDL_Joystick, ball: c_int, dx: ?[*]c_int, dy: ?[*]c_int) c_int;
pub extern fn SDL_JoystickGetButton(joystick: ?*SDL_Joystick, button: c_int) Uint8;
pub extern fn SDL_JoystickClose(joystick: ?*SDL_Joystick) void;
pub extern fn SDL_JoystickCurrentPowerLevel(joystick: ?*SDL_Joystick) SDL_JoystickPowerLevel;
pub const struct__SDL_GameController = @OpaqueType();
pub const SDL_GameController = struct__SDL_GameController;
pub const SDL_CONTROLLER_BINDTYPE_NONE = 0;
pub const SDL_CONTROLLER_BINDTYPE_BUTTON = 1;
pub const SDL_CONTROLLER_BINDTYPE_AXIS = 2;
pub const SDL_CONTROLLER_BINDTYPE_HAT = 3;
pub const SDL_GameControllerBindType = extern enum {
    SDL_CONTROLLER_BINDTYPE_NONE = 0,
    SDL_CONTROLLER_BINDTYPE_BUTTON = 1,
    SDL_CONTROLLER_BINDTYPE_AXIS = 2,
    SDL_CONTROLLER_BINDTYPE_HAT = 3,
};
pub const struct_SDL_GameControllerButtonBind = extern struct {
    bindType: SDL_GameControllerBindType,
    value: extern union {
        button: c_int,
        axis: c_int,
        hat: extern struct {
            hat: c_int,
            hat_mask: c_int,
        },
    },
};
pub const SDL_GameControllerButtonBind = struct_SDL_GameControllerButtonBind;
pub extern fn SDL_GameControllerAddMappingsFromRW(rw: ?[*]SDL_RWops, freerw: c_int) c_int;
pub extern fn SDL_GameControllerAddMapping(mappingString: ?[*]const u8) c_int;
pub extern fn SDL_GameControllerMappingForGUID(guid: SDL_JoystickGUID) ?[*]u8;
pub extern fn SDL_GameControllerMapping(gamecontroller: ?*SDL_GameController) ?[*]u8;
pub extern fn SDL_IsGameController(joystick_index: c_int) SDL_bool;
pub extern fn SDL_GameControllerNameForIndex(joystick_index: c_int) ?[*]const u8;
pub extern fn SDL_GameControllerOpen(joystick_index: c_int) ?*SDL_GameController;
pub extern fn SDL_GameControllerFromInstanceID(joyid: SDL_JoystickID) ?*SDL_GameController;
pub extern fn SDL_GameControllerName(gamecontroller: ?*SDL_GameController) ?[*]const u8;
pub extern fn SDL_GameControllerGetAttached(gamecontroller: ?*SDL_GameController) SDL_bool;
pub extern fn SDL_GameControllerGetJoystick(gamecontroller: ?*SDL_GameController) ?*SDL_Joystick;
pub extern fn SDL_GameControllerEventState(state: c_int) c_int;
pub extern fn SDL_GameControllerUpdate() void;
pub const SDL_CONTROLLER_AXIS_INVALID = -1;
pub const SDL_CONTROLLER_AXIS_LEFTX = 0;
pub const SDL_CONTROLLER_AXIS_LEFTY = 1;
pub const SDL_CONTROLLER_AXIS_RIGHTX = 2;
pub const SDL_CONTROLLER_AXIS_RIGHTY = 3;
pub const SDL_CONTROLLER_AXIS_TRIGGERLEFT = 4;
pub const SDL_CONTROLLER_AXIS_TRIGGERRIGHT = 5;
pub const SDL_CONTROLLER_AXIS_MAX = 6;
pub const SDL_GameControllerAxis = extern enum {
    SDL_CONTROLLER_AXIS_INVALID = -1,
    SDL_CONTROLLER_AXIS_LEFTX = 0,
    SDL_CONTROLLER_AXIS_LEFTY = 1,
    SDL_CONTROLLER_AXIS_RIGHTX = 2,
    SDL_CONTROLLER_AXIS_RIGHTY = 3,
    SDL_CONTROLLER_AXIS_TRIGGERLEFT = 4,
    SDL_CONTROLLER_AXIS_TRIGGERRIGHT = 5,
    SDL_CONTROLLER_AXIS_MAX = 6,
};
pub extern fn SDL_GameControllerGetAxisFromString(pchString: ?[*]const u8) SDL_GameControllerAxis;
pub extern fn SDL_GameControllerGetStringForAxis(axis: SDL_GameControllerAxis) ?[*]const u8;
pub extern fn SDL_GameControllerGetBindForAxis(gamecontroller: ?*SDL_GameController, axis: SDL_GameControllerAxis) SDL_GameControllerButtonBind;
pub extern fn SDL_GameControllerGetAxis(gamecontroller: ?*SDL_GameController, axis: SDL_GameControllerAxis) Sint16;
pub const SDL_CONTROLLER_BUTTON_INVALID = -1;
pub const SDL_CONTROLLER_BUTTON_A = 0;
pub const SDL_CONTROLLER_BUTTON_B = 1;
pub const SDL_CONTROLLER_BUTTON_X = 2;
pub const SDL_CONTROLLER_BUTTON_Y = 3;
pub const SDL_CONTROLLER_BUTTON_BACK = 4;
pub const SDL_CONTROLLER_BUTTON_GUIDE = 5;
pub const SDL_CONTROLLER_BUTTON_START = 6;
pub const SDL_CONTROLLER_BUTTON_LEFTSTICK = 7;
pub const SDL_CONTROLLER_BUTTON_RIGHTSTICK = 8;
pub const SDL_CONTROLLER_BUTTON_LEFTSHOULDER = 9;
pub const SDL_CONTROLLER_BUTTON_RIGHTSHOULDER = 10;
pub const SDL_CONTROLLER_BUTTON_DPAD_UP = 11;
pub const SDL_CONTROLLER_BUTTON_DPAD_DOWN = 12;
pub const SDL_CONTROLLER_BUTTON_DPAD_LEFT = 13;
pub const SDL_CONTROLLER_BUTTON_DPAD_RIGHT = 14;
pub const SDL_CONTROLLER_BUTTON_MAX = 15;
pub const SDL_GameControllerButton = extern enum {
    SDL_CONTROLLER_BUTTON_INVALID = -1,
    SDL_CONTROLLER_BUTTON_A = 0,
    SDL_CONTROLLER_BUTTON_B = 1,
    SDL_CONTROLLER_BUTTON_X = 2,
    SDL_CONTROLLER_BUTTON_Y = 3,
    SDL_CONTROLLER_BUTTON_BACK = 4,
    SDL_CONTROLLER_BUTTON_GUIDE = 5,
    SDL_CONTROLLER_BUTTON_START = 6,
    SDL_CONTROLLER_BUTTON_LEFTSTICK = 7,
    SDL_CONTROLLER_BUTTON_RIGHTSTICK = 8,
    SDL_CONTROLLER_BUTTON_LEFTSHOULDER = 9,
    SDL_CONTROLLER_BUTTON_RIGHTSHOULDER = 10,
    SDL_CONTROLLER_BUTTON_DPAD_UP = 11,
    SDL_CONTROLLER_BUTTON_DPAD_DOWN = 12,
    SDL_CONTROLLER_BUTTON_DPAD_LEFT = 13,
    SDL_CONTROLLER_BUTTON_DPAD_RIGHT = 14,
    SDL_CONTROLLER_BUTTON_MAX = 15,
};
pub extern fn SDL_GameControllerGetButtonFromString(pchString: ?[*]const u8) SDL_GameControllerButton;
pub extern fn SDL_GameControllerGetStringForButton(button: SDL_GameControllerButton) ?[*]const u8;
pub extern fn SDL_GameControllerGetBindForButton(gamecontroller: ?*SDL_GameController, button: SDL_GameControllerButton) SDL_GameControllerButtonBind;
pub extern fn SDL_GameControllerGetButton(gamecontroller: ?*SDL_GameController, button: SDL_GameControllerButton) Uint8;
pub extern fn SDL_GameControllerClose(gamecontroller: ?*SDL_GameController) void;
pub const SDL_TouchID = Sint64;
pub const SDL_FingerID = Sint64;
pub const struct_SDL_Finger = extern struct {
    id: SDL_FingerID,
    x: f32,
    y: f32,
    pressure: f32,
};
pub const SDL_Finger = struct_SDL_Finger;
pub extern fn SDL_GetNumTouchDevices() c_int;
pub extern fn SDL_GetTouchDevice(index_0: c_int) SDL_TouchID;
pub extern fn SDL_GetNumTouchFingers(touchID: SDL_TouchID) c_int;
pub extern fn SDL_GetTouchFinger(touchID: SDL_TouchID, index_0: c_int) ?[*]SDL_Finger;
pub const SDL_GestureID = Sint64;
pub extern fn SDL_RecordGesture(touchId: SDL_TouchID) c_int;
pub extern fn SDL_SaveAllDollarTemplates(dst: ?[*]SDL_RWops) c_int;
pub extern fn SDL_SaveDollarTemplate(gestureId: SDL_GestureID, dst: ?[*]SDL_RWops) c_int;
pub extern fn SDL_LoadDollarTemplates(touchId: SDL_TouchID, src: ?[*]SDL_RWops) c_int;
pub const SDL_FIRSTEVENT = 0;
pub const SDL_QUIT = 256;
pub const SDL_APP_TERMINATING = 257;
pub const SDL_APP_LOWMEMORY = 258;
pub const SDL_APP_WILLENTERBACKGROUND = 259;
pub const SDL_APP_DIDENTERBACKGROUND = 260;
pub const SDL_APP_WILLENTERFOREGROUND = 261;
pub const SDL_APP_DIDENTERFOREGROUND = 262;
pub const SDL_WINDOWEVENT = 512;
pub const SDL_SYSWMEVENT = 513;
pub const SDL_KEYDOWN = 768;
pub const SDL_KEYUP = 769;
pub const SDL_TEXTEDITING = 770;
pub const SDL_TEXTINPUT = 771;
pub const SDL_KEYMAPCHANGED = 772;
pub const SDL_MOUSEMOTION = 1024;
pub const SDL_MOUSEBUTTONDOWN = 1025;
pub const SDL_MOUSEBUTTONUP = 1026;
pub const SDL_MOUSEWHEEL = 1027;
pub const SDL_JOYAXISMOTION = 1536;
pub const SDL_JOYBALLMOTION = 1537;
pub const SDL_JOYHATMOTION = 1538;
pub const SDL_JOYBUTTONDOWN = 1539;
pub const SDL_JOYBUTTONUP = 1540;
pub const SDL_JOYDEVICEADDED = 1541;
pub const SDL_JOYDEVICEREMOVED = 1542;
pub const SDL_CONTROLLERAXISMOTION = 1616;
pub const SDL_CONTROLLERBUTTONDOWN = 1617;
pub const SDL_CONTROLLERBUTTONUP = 1618;
pub const SDL_CONTROLLERDEVICEADDED = 1619;
pub const SDL_CONTROLLERDEVICEREMOVED = 1620;
pub const SDL_CONTROLLERDEVICEREMAPPED = 1621;
pub const SDL_FINGERDOWN = 1792;
pub const SDL_FINGERUP = 1793;
pub const SDL_FINGERMOTION = 1794;
pub const SDL_DOLLARGESTURE = 2048;
pub const SDL_DOLLARRECORD = 2049;
pub const SDL_MULTIGESTURE = 2050;
pub const SDL_CLIPBOARDUPDATE = 2304;
pub const SDL_DROPFILE = 4096;
pub const SDL_DROPTEXT = 4097;
pub const SDL_DROPBEGIN = 4098;
pub const SDL_DROPCOMPLETE = 4099;
pub const SDL_AUDIODEVICEADDED = 4352;
pub const SDL_AUDIODEVICEREMOVED = 4353;
pub const SDL_RENDER_TARGETS_RESET = 8192;
pub const SDL_RENDER_DEVICE_RESET = 8193;
pub const SDL_USEREVENT = 32768;
pub const SDL_LASTEVENT = 65535;
pub const SDL_EventType = extern enum {
    SDL_FIRSTEVENT = 0,
    SDL_QUIT = 256,
    SDL_APP_TERMINATING = 257,
    SDL_APP_LOWMEMORY = 258,
    SDL_APP_WILLENTERBACKGROUND = 259,
    SDL_APP_DIDENTERBACKGROUND = 260,
    SDL_APP_WILLENTERFOREGROUND = 261,
    SDL_APP_DIDENTERFOREGROUND = 262,
    SDL_WINDOWEVENT = 512,
    SDL_SYSWMEVENT = 513,
    SDL_KEYDOWN = 768,
    SDL_KEYUP = 769,
    SDL_TEXTEDITING = 770,
    SDL_TEXTINPUT = 771,
    SDL_KEYMAPCHANGED = 772,
    SDL_MOUSEMOTION = 1024,
    SDL_MOUSEBUTTONDOWN = 1025,
    SDL_MOUSEBUTTONUP = 1026,
    SDL_MOUSEWHEEL = 1027,
    SDL_JOYAXISMOTION = 1536,
    SDL_JOYBALLMOTION = 1537,
    SDL_JOYHATMOTION = 1538,
    SDL_JOYBUTTONDOWN = 1539,
    SDL_JOYBUTTONUP = 1540,
    SDL_JOYDEVICEADDED = 1541,
    SDL_JOYDEVICEREMOVED = 1542,
    SDL_CONTROLLERAXISMOTION = 1616,
    SDL_CONTROLLERBUTTONDOWN = 1617,
    SDL_CONTROLLERBUTTONUP = 1618,
    SDL_CONTROLLERDEVICEADDED = 1619,
    SDL_CONTROLLERDEVICEREMOVED = 1620,
    SDL_CONTROLLERDEVICEREMAPPED = 1621,
    SDL_FINGERDOWN = 1792,
    SDL_FINGERUP = 1793,
    SDL_FINGERMOTION = 1794,
    SDL_DOLLARGESTURE = 2048,
    SDL_DOLLARRECORD = 2049,
    SDL_MULTIGESTURE = 2050,
    SDL_CLIPBOARDUPDATE = 2304,
    SDL_DROPFILE = 4096,
    SDL_DROPTEXT = 4097,
    SDL_DROPBEGIN = 4098,
    SDL_DROPCOMPLETE = 4099,
    SDL_AUDIODEVICEADDED = 4352,
    SDL_AUDIODEVICEREMOVED = 4353,
    SDL_RENDER_TARGETS_RESET = 8192,
    SDL_RENDER_DEVICE_RESET = 8193,
    SDL_USEREVENT = 32768,
    SDL_LASTEVENT = 65535,
};
pub const struct_SDL_CommonEvent = extern struct {
    type: Uint32,
    timestamp: Uint32,
};
pub const SDL_CommonEvent = struct_SDL_CommonEvent;
pub const struct_SDL_WindowEvent = extern struct {
    type: Uint32,
    timestamp: Uint32,
    windowID: Uint32,
    event: Uint8,
    padding1: Uint8,
    padding2: Uint8,
    padding3: Uint8,
    data1: Sint32,
    data2: Sint32,
};
pub const SDL_WindowEvent = struct_SDL_WindowEvent;
pub const struct_SDL_KeyboardEvent = extern struct {
    type: Uint32,
    timestamp: Uint32,
    windowID: Uint32,
    state: Uint8,
    repeat: Uint8,
    padding2: Uint8,
    padding3: Uint8,
    keysym: SDL_Keysym,
};
pub const SDL_KeyboardEvent = struct_SDL_KeyboardEvent;
pub const struct_SDL_TextEditingEvent = extern struct {
    type: Uint32,
    timestamp: Uint32,
    windowID: Uint32,
    text: [32]u8,
    start: Sint32,
    length: Sint32,
};
pub const SDL_TextEditingEvent = struct_SDL_TextEditingEvent;
pub const struct_SDL_TextInputEvent = extern struct {
    type: Uint32,
    timestamp: Uint32,
    windowID: Uint32,
    text: [32]u8,
};
pub const SDL_TextInputEvent = struct_SDL_TextInputEvent;
pub const struct_SDL_MouseMotionEvent = extern struct {
    type: Uint32,
    timestamp: Uint32,
    windowID: Uint32,
    which: Uint32,
    state: Uint32,
    x: Sint32,
    y: Sint32,
    xrel: Sint32,
    yrel: Sint32,
};
pub const SDL_MouseMotionEvent = struct_SDL_MouseMotionEvent;
pub const struct_SDL_MouseButtonEvent = extern struct {
    type: Uint32,
    timestamp: Uint32,
    windowID: Uint32,
    which: Uint32,
    button: Uint8,
    state: Uint8,
    clicks: Uint8,
    padding1: Uint8,
    x: Sint32,
    y: Sint32,
};
pub const SDL_MouseButtonEvent = struct_SDL_MouseButtonEvent;
pub const struct_SDL_MouseWheelEvent = extern struct {
    type: Uint32,
    timestamp: Uint32,
    windowID: Uint32,
    which: Uint32,
    x: Sint32,
    y: Sint32,
    direction: Uint32,
};
pub const SDL_MouseWheelEvent = struct_SDL_MouseWheelEvent;
pub const struct_SDL_JoyAxisEvent = extern struct {
    type: Uint32,
    timestamp: Uint32,
    which: SDL_JoystickID,
    axis: Uint8,
    padding1: Uint8,
    padding2: Uint8,
    padding3: Uint8,
    value: Sint16,
    padding4: Uint16,
};
pub const SDL_JoyAxisEvent = struct_SDL_JoyAxisEvent;
pub const struct_SDL_JoyBallEvent = extern struct {
    type: Uint32,
    timestamp: Uint32,
    which: SDL_JoystickID,
    ball: Uint8,
    padding1: Uint8,
    padding2: Uint8,
    padding3: Uint8,
    xrel: Sint16,
    yrel: Sint16,
};
pub const SDL_JoyBallEvent = struct_SDL_JoyBallEvent;
pub const struct_SDL_JoyHatEvent = extern struct {
    type: Uint32,
    timestamp: Uint32,
    which: SDL_JoystickID,
    hat: Uint8,
    value: Uint8,
    padding1: Uint8,
    padding2: Uint8,
};
pub const SDL_JoyHatEvent = struct_SDL_JoyHatEvent;
pub const struct_SDL_JoyButtonEvent = extern struct {
    type: Uint32,
    timestamp: Uint32,
    which: SDL_JoystickID,
    button: Uint8,
    state: Uint8,
    padding1: Uint8,
    padding2: Uint8,
};
pub const SDL_JoyButtonEvent = struct_SDL_JoyButtonEvent;
pub const struct_SDL_JoyDeviceEvent = extern struct {
    type: Uint32,
    timestamp: Uint32,
    which: Sint32,
};
pub const SDL_JoyDeviceEvent = struct_SDL_JoyDeviceEvent;
pub const struct_SDL_ControllerAxisEvent = extern struct {
    type: Uint32,
    timestamp: Uint32,
    which: SDL_JoystickID,
    axis: Uint8,
    padding1: Uint8,
    padding2: Uint8,
    padding3: Uint8,
    value: Sint16,
    padding4: Uint16,
};
pub const SDL_ControllerAxisEvent = struct_SDL_ControllerAxisEvent;
pub const struct_SDL_ControllerButtonEvent = extern struct {
    type: Uint32,
    timestamp: Uint32,
    which: SDL_JoystickID,
    button: Uint8,
    state: Uint8,
    padding1: Uint8,
    padding2: Uint8,
};
pub const SDL_ControllerButtonEvent = struct_SDL_ControllerButtonEvent;
pub const struct_SDL_ControllerDeviceEvent = extern struct {
    type: Uint32,
    timestamp: Uint32,
    which: Sint32,
};
pub const SDL_ControllerDeviceEvent = struct_SDL_ControllerDeviceEvent;
pub const struct_SDL_AudioDeviceEvent = extern struct {
    type: Uint32,
    timestamp: Uint32,
    which: Uint32,
    iscapture: Uint8,
    padding1: Uint8,
    padding2: Uint8,
    padding3: Uint8,
};
pub const SDL_AudioDeviceEvent = struct_SDL_AudioDeviceEvent;
pub const struct_SDL_TouchFingerEvent = extern struct {
    type: Uint32,
    timestamp: Uint32,
    touchId: SDL_TouchID,
    fingerId: SDL_FingerID,
    x: f32,
    y: f32,
    dx: f32,
    dy: f32,
    pressure: f32,
};
pub const SDL_TouchFingerEvent = struct_SDL_TouchFingerEvent;
pub const struct_SDL_MultiGestureEvent = extern struct {
    type: Uint32,
    timestamp: Uint32,
    touchId: SDL_TouchID,
    dTheta: f32,
    dDist: f32,
    x: f32,
    y: f32,
    numFingers: Uint16,
    padding: Uint16,
};
pub const SDL_MultiGestureEvent = struct_SDL_MultiGestureEvent;
pub const struct_SDL_DollarGestureEvent = extern struct {
    type: Uint32,
    timestamp: Uint32,
    touchId: SDL_TouchID,
    gestureId: SDL_GestureID,
    numFingers: Uint32,
    @"error": f32,
    x: f32,
    y: f32,
};
pub const SDL_DollarGestureEvent = struct_SDL_DollarGestureEvent;
pub const struct_SDL_DropEvent = extern struct {
    type: Uint32,
    timestamp: Uint32,
    file: ?[*]u8,
    windowID: Uint32,
};
pub const SDL_DropEvent = struct_SDL_DropEvent;
pub const struct_SDL_QuitEvent = extern struct {
    type: Uint32,
    timestamp: Uint32,
};
pub const SDL_QuitEvent = struct_SDL_QuitEvent;
pub const struct_SDL_OSEvent = extern struct {
    type: Uint32,
    timestamp: Uint32,
};
pub const SDL_OSEvent = struct_SDL_OSEvent;
pub const struct_SDL_UserEvent = extern struct {
    type: Uint32,
    timestamp: Uint32,
    windowID: Uint32,
    code: Sint32,
    data1: ?*c_void,
    data2: ?*c_void,
};
pub const SDL_UserEvent = struct_SDL_UserEvent;
pub const struct_SDL_SysWMmsg = @OpaqueType();
pub const SDL_SysWMmsg = struct_SDL_SysWMmsg;
pub const struct_SDL_SysWMEvent = extern struct {
    type: Uint32,
    timestamp: Uint32,
    msg: ?*SDL_SysWMmsg,
};
pub const SDL_SysWMEvent = struct_SDL_SysWMEvent;
pub const union_SDL_Event = extern union {
    type: Uint32,
    common: SDL_CommonEvent,
    window: SDL_WindowEvent,
    key: SDL_KeyboardEvent,
    edit: SDL_TextEditingEvent,
    text: SDL_TextInputEvent,
    motion: SDL_MouseMotionEvent,
    button: SDL_MouseButtonEvent,
    wheel: SDL_MouseWheelEvent,
    jaxis: SDL_JoyAxisEvent,
    jball: SDL_JoyBallEvent,
    jhat: SDL_JoyHatEvent,
    jbutton: SDL_JoyButtonEvent,
    jdevice: SDL_JoyDeviceEvent,
    caxis: SDL_ControllerAxisEvent,
    cbutton: SDL_ControllerButtonEvent,
    cdevice: SDL_ControllerDeviceEvent,
    adevice: SDL_AudioDeviceEvent,
    quit: SDL_QuitEvent,
    user: SDL_UserEvent,
    syswm: SDL_SysWMEvent,
    tfinger: SDL_TouchFingerEvent,
    mgesture: SDL_MultiGestureEvent,
    dgesture: SDL_DollarGestureEvent,
    drop: SDL_DropEvent,
    padding: [56]Uint8,
};
pub const SDL_Event = union_SDL_Event;
pub extern fn SDL_PumpEvents() void;
pub const SDL_ADDEVENT = 0;
pub const SDL_PEEKEVENT = 1;
pub const SDL_GETEVENT = 2;
pub const SDL_eventaction = extern enum {
    SDL_ADDEVENT = 0,
    SDL_PEEKEVENT = 1,
    SDL_GETEVENT = 2,
};
pub extern fn SDL_PeepEvents(events: ?[*]SDL_Event, numevents: c_int, action: SDL_eventaction, minType: Uint32, maxType: Uint32) c_int;
pub extern fn SDL_HasEvent(type_0: Uint32) SDL_bool;
pub extern fn SDL_HasEvents(minType: Uint32, maxType: Uint32) SDL_bool;
pub extern fn SDL_FlushEvent(type_0: Uint32) void;
pub extern fn SDL_FlushEvents(minType: Uint32, maxType: Uint32) void;
pub extern fn SDL_PollEvent(event: ?[*]SDL_Event) c_int;
pub extern fn SDL_WaitEvent(event: ?[*]SDL_Event) c_int;
pub extern fn SDL_WaitEventTimeout(event: ?[*]SDL_Event, timeout: c_int) c_int;
pub extern fn SDL_PushEvent(event: ?[*]SDL_Event) c_int;
pub const SDL_EventFilter = ?extern fn(?*c_void, ?[*]SDL_Event) c_int;
pub extern fn SDL_SetEventFilter(filter: SDL_EventFilter, userdata: ?*c_void) void;
pub extern fn SDL_GetEventFilter(filter: ?[*]SDL_EventFilter, userdata: ?[*](?*c_void)) SDL_bool;
pub extern fn SDL_AddEventWatch(filter: SDL_EventFilter, userdata: ?*c_void) void;
pub extern fn SDL_DelEventWatch(filter: SDL_EventFilter, userdata: ?*c_void) void;
pub extern fn SDL_FilterEvents(filter: SDL_EventFilter, userdata: ?*c_void) void;
pub extern fn SDL_EventState(type_0: Uint32, state: c_int) Uint8;
pub extern fn SDL_RegisterEvents(numevents: c_int) Uint32;
pub extern fn SDL_GetBasePath() ?[*]u8;
pub extern fn SDL_GetPrefPath(org: ?[*]const u8, app: ?[*]const u8) ?[*]u8;
pub const struct__SDL_Haptic = @OpaqueType();
pub const SDL_Haptic = struct__SDL_Haptic;
pub const struct_SDL_HapticDirection = extern struct {
    type: Uint8,
    dir: [3]Sint32,
};
pub const SDL_HapticDirection = struct_SDL_HapticDirection;
pub const struct_SDL_HapticConstant = extern struct {
    type: Uint16,
    direction: SDL_HapticDirection,
    length: Uint32,
    delay: Uint16,
    button: Uint16,
    interval: Uint16,
    level: Sint16,
    attack_length: Uint16,
    attack_level: Uint16,
    fade_length: Uint16,
    fade_level: Uint16,
};
pub const SDL_HapticConstant = struct_SDL_HapticConstant;
pub const struct_SDL_HapticPeriodic = extern struct {
    type: Uint16,
    direction: SDL_HapticDirection,
    length: Uint32,
    delay: Uint16,
    button: Uint16,
    interval: Uint16,
    period: Uint16,
    magnitude: Sint16,
    offset: Sint16,
    phase: Uint16,
    attack_length: Uint16,
    attack_level: Uint16,
    fade_length: Uint16,
    fade_level: Uint16,
};
pub const SDL_HapticPeriodic = struct_SDL_HapticPeriodic;
pub const struct_SDL_HapticCondition = extern struct {
    type: Uint16,
    direction: SDL_HapticDirection,
    length: Uint32,
    delay: Uint16,
    button: Uint16,
    interval: Uint16,
    right_sat: [3]Uint16,
    left_sat: [3]Uint16,
    right_coeff: [3]Sint16,
    left_coeff: [3]Sint16,
    deadband: [3]Uint16,
    center: [3]Sint16,
};
pub const SDL_HapticCondition = struct_SDL_HapticCondition;
pub const struct_SDL_HapticRamp = extern struct {
    type: Uint16,
    direction: SDL_HapticDirection,
    length: Uint32,
    delay: Uint16,
    button: Uint16,
    interval: Uint16,
    start: Sint16,
    end: Sint16,
    attack_length: Uint16,
    attack_level: Uint16,
    fade_length: Uint16,
    fade_level: Uint16,
};
pub const SDL_HapticRamp = struct_SDL_HapticRamp;
pub const struct_SDL_HapticLeftRight = extern struct {
    type: Uint16,
    length: Uint32,
    large_magnitude: Uint16,
    small_magnitude: Uint16,
};
pub const SDL_HapticLeftRight = struct_SDL_HapticLeftRight;
pub const struct_SDL_HapticCustom = extern struct {
    type: Uint16,
    direction: SDL_HapticDirection,
    length: Uint32,
    delay: Uint16,
    button: Uint16,
    interval: Uint16,
    channels: Uint8,
    period: Uint16,
    samples: Uint16,
    data: ?[*]Uint16,
    attack_length: Uint16,
    attack_level: Uint16,
    fade_length: Uint16,
    fade_level: Uint16,
};
pub const SDL_HapticCustom = struct_SDL_HapticCustom;
pub const union_SDL_HapticEffect = extern union {
    type: Uint16,
    constant: SDL_HapticConstant,
    periodic: SDL_HapticPeriodic,
    condition: SDL_HapticCondition,
    ramp: SDL_HapticRamp,
    leftright: SDL_HapticLeftRight,
    custom: SDL_HapticCustom,
};
pub const SDL_HapticEffect = union_SDL_HapticEffect;
pub extern fn SDL_NumHaptics() c_int;
pub extern fn SDL_HapticName(device_index: c_int) ?[*]const u8;
pub extern fn SDL_HapticOpen(device_index: c_int) ?*SDL_Haptic;
pub extern fn SDL_HapticOpened(device_index: c_int) c_int;
pub extern fn SDL_HapticIndex(haptic: ?*SDL_Haptic) c_int;
pub extern fn SDL_MouseIsHaptic() c_int;
pub extern fn SDL_HapticOpenFromMouse() ?*SDL_Haptic;
pub extern fn SDL_JoystickIsHaptic(joystick: ?*SDL_Joystick) c_int;
pub extern fn SDL_HapticOpenFromJoystick(joystick: ?*SDL_Joystick) ?*SDL_Haptic;
pub extern fn SDL_HapticClose(haptic: ?*SDL_Haptic) void;
pub extern fn SDL_HapticNumEffects(haptic: ?*SDL_Haptic) c_int;
pub extern fn SDL_HapticNumEffectsPlaying(haptic: ?*SDL_Haptic) c_int;
pub extern fn SDL_HapticQuery(haptic: ?*SDL_Haptic) c_uint;
pub extern fn SDL_HapticNumAxes(haptic: ?*SDL_Haptic) c_int;
pub extern fn SDL_HapticEffectSupported(haptic: ?*SDL_Haptic, effect: ?[*]SDL_HapticEffect) c_int;
pub extern fn SDL_HapticNewEffect(haptic: ?*SDL_Haptic, effect: ?[*]SDL_HapticEffect) c_int;
pub extern fn SDL_HapticUpdateEffect(haptic: ?*SDL_Haptic, effect: c_int, data: ?[*]SDL_HapticEffect) c_int;
pub extern fn SDL_HapticRunEffect(haptic: ?*SDL_Haptic, effect: c_int, iterations: Uint32) c_int;
pub extern fn SDL_HapticStopEffect(haptic: ?*SDL_Haptic, effect: c_int) c_int;
pub extern fn SDL_HapticDestroyEffect(haptic: ?*SDL_Haptic, effect: c_int) void;
pub extern fn SDL_HapticGetEffectStatus(haptic: ?*SDL_Haptic, effect: c_int) c_int;
pub extern fn SDL_HapticSetGain(haptic: ?*SDL_Haptic, gain: c_int) c_int;
pub extern fn SDL_HapticSetAutocenter(haptic: ?*SDL_Haptic, autocenter: c_int) c_int;
pub extern fn SDL_HapticPause(haptic: ?*SDL_Haptic) c_int;
pub extern fn SDL_HapticUnpause(haptic: ?*SDL_Haptic) c_int;
pub extern fn SDL_HapticStopAll(haptic: ?*SDL_Haptic) c_int;
pub extern fn SDL_HapticRumbleSupported(haptic: ?*SDL_Haptic) c_int;
pub extern fn SDL_HapticRumbleInit(haptic: ?*SDL_Haptic) c_int;
pub extern fn SDL_HapticRumblePlay(haptic: ?*SDL_Haptic, strength: f32, length: Uint32) c_int;
pub extern fn SDL_HapticRumbleStop(haptic: ?*SDL_Haptic) c_int;
pub const SDL_HINT_DEFAULT = 0;
pub const SDL_HINT_NORMAL = 1;
pub const SDL_HINT_OVERRIDE = 2;
pub const SDL_HintPriority = extern enum {
    SDL_HINT_DEFAULT = 0,
    SDL_HINT_NORMAL = 1,
    SDL_HINT_OVERRIDE = 2,
};
pub extern fn SDL_SetHintWithPriority(name: ?[*]const u8, value: ?[*]const u8, priority: SDL_HintPriority) SDL_bool;
pub extern fn SDL_SetHint(name: ?[*]const u8, value: ?[*]const u8) SDL_bool;
pub extern fn SDL_GetHint(name: ?[*]const u8) ?[*]const u8;
pub extern fn SDL_GetHintBoolean(name: ?[*]const u8, default_value: SDL_bool) SDL_bool;
pub const SDL_HintCallback = ?extern fn(?*c_void, ?[*]const u8, ?[*]const u8, ?[*]const u8) void;
pub extern fn SDL_AddHintCallback(name: ?[*]const u8, callback: SDL_HintCallback, userdata: ?*c_void) void;
pub extern fn SDL_DelHintCallback(name: ?[*]const u8, callback: SDL_HintCallback, userdata: ?*c_void) void;
pub extern fn SDL_ClearHints() void;
pub extern fn SDL_LoadObject(sofile: ?[*]const u8) ?*c_void;
pub extern fn SDL_LoadFunction(handle: ?*c_void, name: ?[*]const u8) ?*c_void;
pub extern fn SDL_UnloadObject(handle: ?*c_void) void;
pub const SDL_LOG_CATEGORY_APPLICATION = 0;
pub const SDL_LOG_CATEGORY_ERROR = 1;
pub const SDL_LOG_CATEGORY_ASSERT = 2;
pub const SDL_LOG_CATEGORY_SYSTEM = 3;
pub const SDL_LOG_CATEGORY_AUDIO = 4;
pub const SDL_LOG_CATEGORY_VIDEO = 5;
pub const SDL_LOG_CATEGORY_RENDER = 6;
pub const SDL_LOG_CATEGORY_INPUT = 7;
pub const SDL_LOG_CATEGORY_TEST = 8;
pub const SDL_LOG_CATEGORY_RESERVED1 = 9;
pub const SDL_LOG_CATEGORY_RESERVED2 = 10;
pub const SDL_LOG_CATEGORY_RESERVED3 = 11;
pub const SDL_LOG_CATEGORY_RESERVED4 = 12;
pub const SDL_LOG_CATEGORY_RESERVED5 = 13;
pub const SDL_LOG_CATEGORY_RESERVED6 = 14;
pub const SDL_LOG_CATEGORY_RESERVED7 = 15;
pub const SDL_LOG_CATEGORY_RESERVED8 = 16;
pub const SDL_LOG_CATEGORY_RESERVED9 = 17;
pub const SDL_LOG_CATEGORY_RESERVED10 = 18;
pub const SDL_LOG_CATEGORY_CUSTOM = 19;
pub const SDL_LOG_PRIORITY_VERBOSE = 1;
pub const SDL_LOG_PRIORITY_DEBUG = 2;
pub const SDL_LOG_PRIORITY_INFO = 3;
pub const SDL_LOG_PRIORITY_WARN = 4;
pub const SDL_LOG_PRIORITY_ERROR = 5;
pub const SDL_LOG_PRIORITY_CRITICAL = 6;
pub const SDL_NUM_LOG_PRIORITIES = 7;
pub const SDL_LogPriority = extern enum {
    SDL_LOG_PRIORITY_VERBOSE = 1,
    SDL_LOG_PRIORITY_DEBUG = 2,
    SDL_LOG_PRIORITY_INFO = 3,
    SDL_LOG_PRIORITY_WARN = 4,
    SDL_LOG_PRIORITY_ERROR = 5,
    SDL_LOG_PRIORITY_CRITICAL = 6,
    SDL_NUM_LOG_PRIORITIES = 7,
};
pub extern fn SDL_LogSetAllPriority(priority: SDL_LogPriority) void;
pub extern fn SDL_LogSetPriority(category: c_int, priority: SDL_LogPriority) void;
pub extern fn SDL_LogGetPriority(category: c_int) SDL_LogPriority;
pub extern fn SDL_LogResetPriorities() void;
pub extern fn SDL_Log(fmt: ?[*]const u8) void;
pub extern fn SDL_LogVerbose(category: c_int, fmt: ?[*]const u8) void;
pub extern fn SDL_LogDebug(category: c_int, fmt: ?[*]const u8) void;
pub extern fn SDL_LogInfo(category: c_int, fmt: ?[*]const u8) void;
pub extern fn SDL_LogWarn(category: c_int, fmt: ?[*]const u8) void;
pub extern fn SDL_LogError(category: c_int, fmt: ?[*]const u8) void;
pub extern fn SDL_LogCritical(category: c_int, fmt: ?[*]const u8) void;
pub extern fn SDL_LogMessage(category: c_int, priority: SDL_LogPriority, fmt: ?[*]const u8) void;
pub extern fn SDL_LogMessageV(category: c_int, priority: SDL_LogPriority, fmt: ?[*]const u8, ap: ?[*]struct___va_list_tag) void;
pub const SDL_LogOutputFunction = ?extern fn(?*c_void, c_int, SDL_LogPriority, ?[*]const u8) void;
pub extern fn SDL_LogGetOutputFunction(callback: ?[*]SDL_LogOutputFunction, userdata: ?[*](?*c_void)) void;
pub extern fn SDL_LogSetOutputFunction(callback: SDL_LogOutputFunction, userdata: ?*c_void) void;
pub const SDL_MESSAGEBOX_ERROR = 16;
pub const SDL_MESSAGEBOX_WARNING = 32;
pub const SDL_MESSAGEBOX_INFORMATION = 64;
pub const SDL_MessageBoxFlags = extern enum {
    SDL_MESSAGEBOX_ERROR = 16,
    SDL_MESSAGEBOX_WARNING = 32,
    SDL_MESSAGEBOX_INFORMATION = 64,
};
pub const SDL_MESSAGEBOX_BUTTON_RETURNKEY_DEFAULT = 1;
pub const SDL_MESSAGEBOX_BUTTON_ESCAPEKEY_DEFAULT = 2;
pub const SDL_MessageBoxButtonFlags = extern enum {
    SDL_MESSAGEBOX_BUTTON_RETURNKEY_DEFAULT = 1,
    SDL_MESSAGEBOX_BUTTON_ESCAPEKEY_DEFAULT = 2,
};
pub const SDL_MessageBoxButtonData = extern struct {
    flags: Uint32,
    buttonid: c_int,
    text: ?[*]const u8,
};
pub const SDL_MessageBoxColor = extern struct {
    r: Uint8,
    g: Uint8,
    b: Uint8,
};
pub const SDL_MESSAGEBOX_COLOR_BACKGROUND = 0;
pub const SDL_MESSAGEBOX_COLOR_TEXT = 1;
pub const SDL_MESSAGEBOX_COLOR_BUTTON_BORDER = 2;
pub const SDL_MESSAGEBOX_COLOR_BUTTON_BACKGROUND = 3;
pub const SDL_MESSAGEBOX_COLOR_BUTTON_SELECTED = 4;
pub const SDL_MESSAGEBOX_COLOR_MAX = 5;
pub const SDL_MessageBoxColorType = extern enum {
    SDL_MESSAGEBOX_COLOR_BACKGROUND = 0,
    SDL_MESSAGEBOX_COLOR_TEXT = 1,
    SDL_MESSAGEBOX_COLOR_BUTTON_BORDER = 2,
    SDL_MESSAGEBOX_COLOR_BUTTON_BACKGROUND = 3,
    SDL_MESSAGEBOX_COLOR_BUTTON_SELECTED = 4,
    SDL_MESSAGEBOX_COLOR_MAX = 5,
};
pub const SDL_MessageBoxColorScheme = extern struct {
    colors: [5]SDL_MessageBoxColor,
};
pub const SDL_MessageBoxData = extern struct {
    flags: Uint32,
    window: ?*SDL_Window,
    title: ?[*]const u8,
    message: ?[*]const u8,
    numbuttons: c_int,
    buttons: ?[*]const SDL_MessageBoxButtonData,
    colorScheme: ?[*]const SDL_MessageBoxColorScheme,
};
pub extern fn SDL_ShowMessageBox(messageboxdata: ?[*]const SDL_MessageBoxData, buttonid: ?[*]c_int) c_int;
pub extern fn SDL_ShowSimpleMessageBox(flags: Uint32, title: ?[*]const u8, message: ?[*]const u8, window: ?*SDL_Window) c_int;
pub const SDL_POWERSTATE_UNKNOWN = 0;
pub const SDL_POWERSTATE_ON_BATTERY = 1;
pub const SDL_POWERSTATE_NO_BATTERY = 2;
pub const SDL_POWERSTATE_CHARGING = 3;
pub const SDL_POWERSTATE_CHARGED = 4;
pub const SDL_PowerState = extern enum {
    SDL_POWERSTATE_UNKNOWN = 0,
    SDL_POWERSTATE_ON_BATTERY = 1,
    SDL_POWERSTATE_NO_BATTERY = 2,
    SDL_POWERSTATE_CHARGING = 3,
    SDL_POWERSTATE_CHARGED = 4,
};
pub extern fn SDL_GetPowerInfo(secs: ?[*]c_int, pct: ?[*]c_int) SDL_PowerState;
pub const SDL_RENDERER_SOFTWARE = 1;
pub const SDL_RENDERER_ACCELERATED = 2;
pub const SDL_RENDERER_PRESENTVSYNC = 4;
pub const SDL_RENDERER_TARGETTEXTURE = 8;
pub const SDL_RendererFlags = extern enum {
    SDL_RENDERER_SOFTWARE = 1,
    SDL_RENDERER_ACCELERATED = 2,
    SDL_RENDERER_PRESENTVSYNC = 4,
    SDL_RENDERER_TARGETTEXTURE = 8,
};
pub const struct_SDL_RendererInfo = extern struct {
    name: ?[*]const u8,
    flags: Uint32,
    num_texture_formats: Uint32,
    texture_formats: [16]Uint32,
    max_texture_width: c_int,
    max_texture_height: c_int,
};
pub const SDL_RendererInfo = struct_SDL_RendererInfo;
pub const SDL_TEXTUREACCESS_STATIC = 0;
pub const SDL_TEXTUREACCESS_STREAMING = 1;
pub const SDL_TEXTUREACCESS_TARGET = 2;
pub const SDL_TextureAccess = extern enum {
    SDL_TEXTUREACCESS_STATIC = 0,
    SDL_TEXTUREACCESS_STREAMING = 1,
    SDL_TEXTUREACCESS_TARGET = 2,
};
pub const SDL_TEXTUREMODULATE_NONE = 0;
pub const SDL_TEXTUREMODULATE_COLOR = 1;
pub const SDL_TEXTUREMODULATE_ALPHA = 2;
pub const SDL_TextureModulate = extern enum {
    SDL_TEXTUREMODULATE_NONE = 0,
    SDL_TEXTUREMODULATE_COLOR = 1,
    SDL_TEXTUREMODULATE_ALPHA = 2,
};
pub const SDL_FLIP_NONE = 0;
pub const SDL_FLIP_HORIZONTAL = 1;
pub const SDL_FLIP_VERTICAL = 2;
pub const SDL_RendererFlip = extern enum {
    SDL_FLIP_NONE = 0,
    SDL_FLIP_HORIZONTAL = 1,
    SDL_FLIP_VERTICAL = 2,
};
pub const struct_SDL_Renderer = @OpaqueType();
pub const SDL_Renderer = struct_SDL_Renderer;
pub const struct_SDL_Texture = @OpaqueType();
pub const SDL_Texture = struct_SDL_Texture;
pub extern fn SDL_GetNumRenderDrivers() c_int;
pub extern fn SDL_GetRenderDriverInfo(index_0: c_int, info: ?[*]SDL_RendererInfo) c_int;
pub extern fn SDL_CreateWindowAndRenderer(width: c_int, height: c_int, window_flags: Uint32, window: ?[*](?*SDL_Window), renderer: ?[*](?*SDL_Renderer)) c_int;
pub extern fn SDL_CreateRenderer(window: ?*SDL_Window, index_0: c_int, flags: Uint32) ?*SDL_Renderer;
pub extern fn SDL_CreateSoftwareRenderer(surface: ?[*]SDL_Surface) ?*SDL_Renderer;
pub extern fn SDL_GetRenderer(window: ?*SDL_Window) ?*SDL_Renderer;
pub extern fn SDL_GetRendererInfo(renderer: ?*SDL_Renderer, info: ?[*]SDL_RendererInfo) c_int;
pub extern fn SDL_GetRendererOutputSize(renderer: ?*SDL_Renderer, w: ?[*]c_int, h: ?[*]c_int) c_int;
pub extern fn SDL_CreateTexture(renderer: ?*SDL_Renderer, format: Uint32, access: c_int, w: c_int, h: c_int) ?*SDL_Texture;
pub extern fn SDL_CreateTextureFromSurface(renderer: ?*SDL_Renderer, surface: ?[*]SDL_Surface) ?*SDL_Texture;
pub extern fn SDL_QueryTexture(texture: ?*SDL_Texture, format: ?[*]Uint32, access: ?[*]c_int, w: ?[*]c_int, h: ?[*]c_int) c_int;
pub extern fn SDL_SetTextureColorMod(texture: ?*SDL_Texture, r: Uint8, g: Uint8, b: Uint8) c_int;
pub extern fn SDL_GetTextureColorMod(texture: ?*SDL_Texture, r: ?[*]Uint8, g: ?[*]Uint8, b: ?[*]Uint8) c_int;
pub extern fn SDL_SetTextureAlphaMod(texture: ?*SDL_Texture, alpha: Uint8) c_int;
pub extern fn SDL_GetTextureAlphaMod(texture: ?*SDL_Texture, alpha: ?[*]Uint8) c_int;
pub extern fn SDL_SetTextureBlendMode(texture: ?*SDL_Texture, blendMode: SDL_BlendMode) c_int;
pub extern fn SDL_GetTextureBlendMode(texture: ?*SDL_Texture, blendMode: ?[*]SDL_BlendMode) c_int;
pub extern fn SDL_UpdateTexture(texture: ?*SDL_Texture, rect: ?[*]const SDL_Rect, pixels: ?*const c_void, pitch: c_int) c_int;
pub extern fn SDL_UpdateYUVTexture(texture: ?*SDL_Texture, rect: ?[*]const SDL_Rect, Yplane: ?[*]const Uint8, Ypitch: c_int, Uplane: ?[*]const Uint8, Upitch: c_int, Vplane: ?[*]const Uint8, Vpitch: c_int) c_int;
pub extern fn SDL_LockTexture(texture: ?*SDL_Texture, rect: ?[*]const SDL_Rect, pixels: ?[*](?*c_void), pitch: ?[*]c_int) c_int;
pub extern fn SDL_UnlockTexture(texture: ?*SDL_Texture) void;
pub extern fn SDL_RenderTargetSupported(renderer: ?*SDL_Renderer) SDL_bool;
pub extern fn SDL_SetRenderTarget(renderer: ?*SDL_Renderer, texture: ?*SDL_Texture) c_int;
pub extern fn SDL_GetRenderTarget(renderer: ?*SDL_Renderer) ?*SDL_Texture;
pub extern fn SDL_RenderSetLogicalSize(renderer: ?*SDL_Renderer, w: c_int, h: c_int) c_int;
pub extern fn SDL_RenderGetLogicalSize(renderer: ?*SDL_Renderer, w: ?[*]c_int, h: ?[*]c_int) void;
pub extern fn SDL_RenderSetIntegerScale(renderer: ?*SDL_Renderer, enable: SDL_bool) c_int;
pub extern fn SDL_RenderGetIntegerScale(renderer: ?*SDL_Renderer) SDL_bool;
pub extern fn SDL_RenderSetViewport(renderer: ?*SDL_Renderer, rect: ?[*]const SDL_Rect) c_int;
pub extern fn SDL_RenderGetViewport(renderer: ?*SDL_Renderer, rect: ?[*]SDL_Rect) void;
pub extern fn SDL_RenderSetClipRect(renderer: ?*SDL_Renderer, rect: ?[*]const SDL_Rect) c_int;
pub extern fn SDL_RenderGetClipRect(renderer: ?*SDL_Renderer, rect: ?[*]SDL_Rect) void;
pub extern fn SDL_RenderIsClipEnabled(renderer: ?*SDL_Renderer) SDL_bool;
pub extern fn SDL_RenderSetScale(renderer: ?*SDL_Renderer, scaleX: f32, scaleY: f32) c_int;
pub extern fn SDL_RenderGetScale(renderer: ?*SDL_Renderer, scaleX: ?[*]f32, scaleY: ?[*]f32) void;
pub extern fn SDL_SetRenderDrawColor(renderer: ?*SDL_Renderer, r: Uint8, g: Uint8, b: Uint8, a: Uint8) c_int;
pub extern fn SDL_GetRenderDrawColor(renderer: ?*SDL_Renderer, r: ?[*]Uint8, g: ?[*]Uint8, b: ?[*]Uint8, a: ?[*]Uint8) c_int;
pub extern fn SDL_SetRenderDrawBlendMode(renderer: ?*SDL_Renderer, blendMode: SDL_BlendMode) c_int;
pub extern fn SDL_GetRenderDrawBlendMode(renderer: ?*SDL_Renderer, blendMode: ?[*]SDL_BlendMode) c_int;
pub extern fn SDL_RenderClear(renderer: ?*SDL_Renderer) c_int;
pub extern fn SDL_RenderDrawPoint(renderer: ?*SDL_Renderer, x: c_int, y: c_int) c_int;
pub extern fn SDL_RenderDrawPoints(renderer: ?*SDL_Renderer, points: ?[*]const SDL_Point, count: c_int) c_int;
pub extern fn SDL_RenderDrawLine(renderer: ?*SDL_Renderer, x1: c_int, y1_0: c_int, x2: c_int, y2: c_int) c_int;
pub extern fn SDL_RenderDrawLines(renderer: ?*SDL_Renderer, points: ?[*]const SDL_Point, count: c_int) c_int;
pub extern fn SDL_RenderDrawRect(renderer: ?*SDL_Renderer, rect: ?[*]const SDL_Rect) c_int;
pub extern fn SDL_RenderDrawRects(renderer: ?*SDL_Renderer, rects: ?[*]const SDL_Rect, count: c_int) c_int;
pub extern fn SDL_RenderFillRect(renderer: ?*SDL_Renderer, rect: ?[*]const SDL_Rect) c_int;
pub extern fn SDL_RenderFillRects(renderer: ?*SDL_Renderer, rects: ?[*]const SDL_Rect, count: c_int) c_int;
pub extern fn SDL_RenderCopy(renderer: ?*SDL_Renderer, texture: ?*SDL_Texture, srcrect: ?[*]const SDL_Rect, dstrect: ?[*]const SDL_Rect) c_int;
pub extern fn SDL_RenderCopyEx(renderer: ?*SDL_Renderer, texture: ?*SDL_Texture, srcrect: ?[*]const SDL_Rect, dstrect: ?[*]const SDL_Rect, angle: f64, center: ?[*]const SDL_Point, flip: SDL_RendererFlip) c_int;
pub extern fn SDL_RenderReadPixels(renderer: ?*SDL_Renderer, rect: ?[*]const SDL_Rect, format: Uint32, pixels: ?*c_void, pitch: c_int) c_int;
pub extern fn SDL_RenderPresent(renderer: ?*SDL_Renderer) void;
pub extern fn SDL_DestroyTexture(texture: ?*SDL_Texture) void;
pub extern fn SDL_DestroyRenderer(renderer: ?*SDL_Renderer) void;
pub extern fn SDL_GL_BindTexture(texture: ?*SDL_Texture, texw: ?[*]f32, texh: ?[*]f32) c_int;
pub extern fn SDL_GL_UnbindTexture(texture: ?*SDL_Texture) c_int;
pub extern fn SDL_GetTicks() Uint32;
pub extern fn SDL_GetPerformanceCounter() Uint64;
pub extern fn SDL_GetPerformanceFrequency() Uint64;
pub extern fn SDL_Delay(ms: Uint32) void;
pub const SDL_TimerCallback = ?extern fn(Uint32, ?*c_void) Uint32;
pub const SDL_TimerID = c_int;
pub extern fn SDL_AddTimer(interval: Uint32, callback: SDL_TimerCallback, param: ?*c_void) SDL_TimerID;
pub extern fn SDL_RemoveTimer(id: SDL_TimerID) SDL_bool;
pub const struct_SDL_version = extern struct {
    major: Uint8,
    minor: Uint8,
    patch: Uint8,
};
pub const SDL_version = struct_SDL_version;
pub extern fn SDL_GetVersion(ver: ?[*]SDL_version) void;
pub extern fn SDL_GetRevision() ?[*]const u8;
pub extern fn SDL_GetRevisionNumber() c_int;
pub extern fn SDL_Init(flags: Uint32) c_int;
pub extern fn SDL_InitSubSystem(flags: Uint32) c_int;
pub extern fn SDL_QuitSubSystem(flags: Uint32) void;
pub extern fn SDL_WasInit(flags: Uint32) Uint32;
pub extern fn SDL_Quit() void;
pub const FPSmanager = extern struct {
    framecount: Uint32,
    rateticks: f32,
    baseticks: Uint32,
    lastticks: Uint32,
    rate: Uint32,
};
pub extern fn SDL_initFramerate(manager: ?[*]FPSmanager) void;
pub extern fn SDL_setFramerate(manager: ?[*]FPSmanager, rate: Uint32) c_int;
pub extern fn SDL_getFramerate(manager: ?[*]FPSmanager) c_int;
pub extern fn SDL_getFramecount(manager: ?[*]FPSmanager) c_int;
pub extern fn SDL_framerateDelay(manager: ?[*]FPSmanager) Uint32;
pub const SDL_VIDEO_DRIVER_X11_HAS_XKBKEYCODETOKEYSYM = 1;
pub const __BIGGEST_ALIGNMENT__ = 16;
pub const _m_pslldi = _mm_slli_pi32;
pub const _IO_USER_LOCK = 32768;
pub const __STDC_VERSION__ = c_long(201112);
pub const __INT64_FMTd__ = c"ld";
pub const HAVE_ALLOCA_H = 1;
pub const __INT_LEAST8_FMTi__ = c"hhi";
pub const _IO_LINKED = 128;
pub const _IO_RIGHT = 4;
pub const SDL_NULL_WHILE_LOOP_CONDITION = 0;
pub const _IO_LINE_BUF = 512;
pub const _MATH_H = 1;
pub const SDL_AUDIO_MASK_BITSIZE = 255;
pub const __GCC_ATOMIC_LLONG_LOCK_FREE = 2;
pub const PRIoLEAST16 = c"o";
pub const _m_psraw = _mm_sra_pi16;
pub const __clang_version__ = c"7.0.0 (tags/RELEASE_700/final)";
pub const __UINT_LEAST8_FMTo__ = c"hho";
pub const PRIo8 = c"o";
pub const _IO_MAGIC = 4222418944;
pub const __INTMAX_FMTd__ = c"ld";
pub const __CLANG_ATOMIC_CHAR_LOCK_FREE = 2;
pub const __INT_LEAST16_FMTi__ = c"hi";
pub const _m_pmaxub = _mm_max_pu8;
pub const _m_pshufw = _mm_shuffle_pi16;
pub const UINTMAX_MAX = if (@typeId(@typeOf(18446744073709551615)) == @import("builtin").TypeId.Pointer) @ptrCast(__UINT64_C, 18446744073709551615) else if (@typeId(@typeOf(18446744073709551615)) == @import("builtin").TypeId.Int) @intToPtr(__UINT64_C, 18446744073709551615) else __UINT64_C(18446744073709551615);
pub const INT_LEAST64_MAX = if (@typeId(@typeOf(9223372036854775807)) == @import("builtin").TypeId.Pointer) @ptrCast(__INT64_C, 9223372036854775807) else if (@typeId(@typeOf(9223372036854775807)) == @import("builtin").TypeId.Int) @intToPtr(__INT64_C, 9223372036854775807) else __INT64_C(9223372036854775807);
pub const SDL_HINT_FRAMEBUFFER_ACCELERATION = c"SDL_FRAMEBUFFER_ACCELERATION";
pub const WINT_MIN = if (@typeId(@typeOf(u)) == @import("builtin").TypeId.Pointer) @ptrCast(0, u) else if (@typeId(@typeOf(u)) == @import("builtin").TypeId.Int) @intToPtr(0, u) else 0(u);
pub const __MMX__ = 1;
pub const PRId8 = c"d";
pub const INTPTR_MAX = c_long(9223372036854775807);
pub const PRIxLEAST32 = c"x";
pub const _G_IO_IO_FILE_VERSION = 131073;
pub const SDL_HINT_WINRT_PRIVACY_POLICY_LABEL = c"SDL_WINRT_PRIVACY_POLICY_LABEL";
pub const HAVE_COPYSIGN = 1;
pub const __INO_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const HAVE_ICONV_H = 1;
pub const __FSBLKCNT_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const SCNd16 = c"hd";
pub const FPS_UPPER_LIMIT = 200;
pub const __ptr_t = [*]void;
pub const SDL_HAPTIC_CARTESIAN = 1;
pub const __WCHAR_WIDTH__ = 32;
pub const M_LOG10E = 0.434294;
pub const AUDIO_S16 = AUDIO_S16LSB;
pub const __USE_MISC = 1;
pub const SDL_HINT_RENDER_SCALE_QUALITY = c"SDL_RENDER_SCALE_QUALITY";
pub const __SIZEOF_PTHREAD_ATTR_T = 56;
pub const __PTRDIFF_FMTd__ = c"ld";
pub const __FLT_EVAL_METHOD__ = 0;
pub const __SSE_MATH__ = 1;
pub const SDL_BlitScaled = SDL_UpperBlitScaled;
pub const HAVE_PTHREAD_SETNAME_NP = 1;
pub const HAVE_ATAN2 = 1;
pub const _m_pmulhuw = _mm_mulhi_pu16;
pub const __UINT_FAST8_FMTo__ = c"hho";
pub const __UINT_LEAST64_MAX__ = c_ulong(18446744073709551615);
pub const PRIi32 = c"i";
pub const _MM_ROUND_DOWN = 8192;
pub const SDL_POWER_LINUX = 1;
pub const M_1_PI = 0.318310;
pub const __UINT_LEAST64_FMTx__ = c"lx";
pub const SDL_HINT_ANDROID_SEPARATE_MOUSE_AND_TOUCH = c"SDL_ANDROID_SEPARATE_MOUSE_AND_TOUCH";
pub const __INT8_MAX__ = 127;
pub const __NLINK_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const _IO_UNBUFFERED = 2;
pub const _m_pand = _mm_and_si64;
pub const __DBL_DECIMAL_DIG__ = 17;
pub const _m_psubusb = _mm_subs_pu8;
pub const HAVE_STDARG_H = 1;
pub const __PTHREAD_MUTEX_HAVE_PREV = 1;
pub const SCNiFAST8 = c"hhi";
pub const _IO_SKIPWS = 1;
pub const AUDIO_F32 = AUDIO_F32LSB;
pub const __CONSTANT_CFSTRINGS__ = 1;
pub const _SYS_CDEFS_H = 1;
pub const HAVE_ASIN = 1;
pub const _ATFILE_SOURCE = 1;
pub const __RLIM_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __LDBL_MAX_EXP__ = 16384;
pub const __USE_POSIX199309 = 1;
pub const __NO_MATH_INLINES = 1;
pub const __WCHAR_TYPE__ = int;
pub const _m_punpcklbw = _mm_unpacklo_pi8;
pub const SDL_HINT_ORIENTATIONS = c"SDL_IOS_ORIENTATIONS";
pub const HAVE_LOG = 1;
pub const __LONG_MAX__ = c_long(9223372036854775807);
pub const SDL_Colour = SDL_Color;
pub const SDL_HAT_CENTERED = 0;
pub const __WCHAR_MIN = if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Pointer) @ptrCast(-__WCHAR_MAX, -1) else if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Int) @intToPtr(-__WCHAR_MAX, -1) else (-__WCHAR_MAX)(-1);
pub const __INT_FAST16_FMTi__ = c"hi";
pub const __PTRDIFF_WIDTH__ = 64;
pub const __LDBL_DENORM_MIN__ = 0.000000;
pub const RAND_MAX = 2147483647;
pub const SDL_MAJOR_VERSION = 2;
pub const __FLOAT_WORD_ORDER = __BYTE_ORDER;
pub const SDL_INIT_EVENTS = c_uint(16384);
pub const SDL_INIT_GAMECONTROLLER = c_uint(8192);
pub const _IOFBF = 0;
pub const __FSFILCNT_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const PRIx8 = c"x";
pub const __INT64_C_SUFFIX__ = L;
pub const _MM_DENORMALS_ZERO_ON = 64;
pub const SDL_FILESYSTEM_UNIX = 1;
pub const _m_psrldi = _mm_srli_pi32;
pub const SDL_PATCHLEVEL = 5;
pub const M_LOG2E = 1.442695;
pub const SDL_AUDIO_DRIVER_OSS = 1;
pub const __SSIZE_T_TYPE = __SWORD_TYPE;
pub const _m_empty = _mm_empty;
pub const PRIu32 = c"u";
pub const SDL_HINT_APPLE_TV_REMOTE_ALLOW_ROTATION = c"SDL_APPLE_TV_REMOTE_ALLOW_ROTATION";
pub const __SIZEOF_PTRDIFF_T__ = 8;
pub const __SIG_ATOMIC_MAX__ = 2147483647;
pub const HAVE_SCALBN = 1;
pub const _IO_EOF_SEEN = 16;
pub const SCNoLEAST8 = c"hho";
pub const __USE_ATFILE = 1;
pub const _MM_ROUND_UP = 16384;
pub const HAVE_STRTOD = 1;
pub const __WALL = 1073741824;
pub const __UINT64_MAX__ = c_ulong(18446744073709551615);
pub const __FLT_DECIMAL_DIG__ = 9;
pub const HAVE_STDIO_H = 1;
pub const _m_psradi = _mm_srai_pi32;
pub const __DBL_DIG__ = 15;
pub const SDL_VIDEO_RENDER_OGL = 1;
pub const __ATOMIC_ACQUIRE = 2;
pub const M_SQRT1_2 = 0.707107;
pub const HAVE_STDINT_H = 1;
pub const _MM_FLUSH_ZERO_MASK = 32768;
pub const SCNoLEAST16 = c"ho";
pub const PRIXLEAST32 = c"X";
pub const _MM_MASK_OVERFLOW = 1024;
pub const SING = 2;
pub const __FLT16_HAS_DENORM__ = 1;
pub const __UINT_FAST16_FMTu__ = c"hu";
pub const _IOS_ATEND = 4;
pub const __INTPTR_FMTi__ = c"li";
pub const _BITS_WCHAR_H = 1;
pub const __UINT_FAST8_FMTX__ = c"hhX";
pub const SDL_ASSERT_LEVEL = 2;
pub const AUDIO_F32SYS = AUDIO_F32LSB;
pub const SDL_HINT_VIDEO_MINIMIZE_ON_FOCUS_LOSS = c"SDL_VIDEO_MINIMIZE_ON_FOCUS_LOSS";
pub const __UINT8_FMTo__ = c"hho";
pub const UINT_LEAST64_MAX = if (@typeId(@typeOf(18446744073709551615)) == @import("builtin").TypeId.Pointer) @ptrCast(__UINT64_C, 18446744073709551615) else if (@typeId(@typeOf(18446744073709551615)) == @import("builtin").TypeId.Int) @intToPtr(__UINT64_C, 18446744073709551615) else __UINT64_C(18446744073709551615);
pub const _m_psubsb = _mm_subs_pi8;
pub const HAVE_MALLOC_H = 1;
pub const __UINT_LEAST16_FMTx__ = c"hx";
pub const _IO_off64_t = __off64_t;
pub const __UINT_FAST16_FMTX__ = c"hX";
pub const AUDIO_S16MSB = 36880;
pub const __VERSION__ = c"4.2.1 Compatible Clang 7.0.0 (tags/RELEASE_700/final)";
pub const __UINT_FAST32_FMTx__ = c"x";
pub const HAVE_COSF = 1;
pub const _BITS_LIBM_SIMD_DECL_STUBS_H = 1;
pub const __UINT_FAST8_FMTu__ = c"hhu";
pub const __UINT_LEAST64_FMTo__ = c"lo";
pub const __clockid_t_defined = 1;
pub const SDL_RWOPS_WINFILE = c_uint(1);
pub const __UINT_LEAST8_MAX__ = 255;
pub const SDL_HINT_APPLE_TV_CONTROLLER_UI_EVENTS = c"SDL_APPLE_TV_CONTROLLER_UI_EVENTS";
pub const SDL_OUT_Z_BYTECAP = x;
pub const SCNiLEAST16 = c"hi";
pub const UINT8_MAX = 255;
pub const PRIX8 = c"X";
pub const SDL_BUTTON_RIGHT = 3;
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
pub const _m_psllw = _mm_sll_pi16;
pub const __WINT_UNSIGNED__ = 1;
pub const SDL_VIDEO_DRIVER_X11_XINPUT2 = 1;
pub const HAVE_ACOS = 1;
pub const SIG_ATOMIC_MAX = 2147483647;
pub const PRIu8 = c"u";
pub const SCNdFAST8 = c"hhd";
pub const SDL_RWOPS_STDFILE = c_uint(2);
pub const __SIZEOF_PTHREAD_RWLOCKATTR_T = 8;
pub const _IO_SCIENTIFIC = 2048;
pub const FPS_LOWER_LIMIT = 1;
pub const __POINTER_WIDTH__ = 64;
pub const PTRDIFF_MIN = if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Pointer) @ptrCast(-c_long(9223372036854775807), -1) else if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Int) @intToPtr(-c_long(9223372036854775807), -1) else (-c_long(9223372036854775807))(-1);
pub const SCNo8 = c"hho";
pub const _m_punpckhdq = _mm_unpackhi_pi32;
pub const __PTRDIFF_MAX__ = c_long(9223372036854775807);
pub const __FLT16_DIG__ = 3;
pub const _MM_HINT_NTA = 0;
pub const __SIZEOF_LONG__ = 8;
pub const SDL_LOADSO_DISABLED = 1;
pub const __TIME_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const PRIuLEAST8 = c"u";
pub const _m_psllwi = _mm_slli_pi16;
pub const SDL_JOYSTICK_LINUX = 1;
pub const __W_CONTINUED = 65535;
pub const AUDIO_F32LSB = 33056;
pub const _m_pcmpeqd = _mm_cmpeq_pi32;
pub const __NO_INLINE__ = 1;
pub const __INT_FAST32_MAX__ = 2147483647;
pub const _m_pmovmskb = _mm_movemask_pi8;
pub const __UINTMAX_FMTu__ = c"lu";
pub const _IO_iconv_t = _G_iconv_t;
pub const SCNdLEAST32 = c"d";
pub const _m_pmaddwd = _mm_madd_pi16;
pub const INT_FAST8_MAX = 127;
pub const PRIdLEAST32 = c"d";
pub const _MM_EXCEPT_DIV_ZERO = 4;
pub const __FLT_RADIX__ = 2;
pub const SDL_ALPHA_OPAQUE = 255;
pub const SDL_TOUCH_MOUSEID = if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Pointer) @ptrCast(Uint32, -1) else if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Int) @intToPtr(Uint32, -1) else Uint32(-1);
pub const __GLIBC_MINOR__ = 24;
pub const _IO_STDIO = 16384;
pub const _STDINT_H = 1;
pub const SDL_HINT_WINDOWS_ENABLE_MESSAGELOOP = c"SDL_WINDOWS_ENABLE_MESSAGELOOP";
pub const SDL_HINT_VIDEO_X11_NET_WM_PING = c"SDL_VIDEO_X11_NET_WM_PING";
pub const _BITS_BYTESWAP_H = 1;
pub const SDL_AUDIO_DRIVER_DISK = 1;
pub const __FLT16_DECIMAL_DIG__ = 5;
pub const __PRAGMA_REDEFINE_EXTNAME = 1;
pub const HAVE_STDLIB_H = 1;
pub const __CPU_MASK_TYPE = __SYSCALL_ULONG_TYPE;
pub const SDL_LIL_ENDIAN = 1234;
pub const FOPEN_MAX = 16;
pub const SDL_HAT_LEFT = 8;
pub const _m_pandn = _mm_andnot_si64;
pub const __UINTMAX_WIDTH__ = 64;
pub const HAVE_STRCASECMP = 1;
pub const __INT64_FMTi__ = c"li";
pub const HAVE_TANF = 1;
pub const __UINT_FAST64_FMTu__ = c"lu";
pub const SCNuLEAST8 = c"hhu";
pub const INT_LEAST16_MIN = if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Pointer) @ptrCast(-32767, -1) else if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Int) @intToPtr(-32767, -1) else (-32767)(-1);
pub const __INT_FAST16_TYPE__ = short;
pub const _m_paddd = _mm_add_pi32;
pub const SDL_HINT_VIDEO_X11_XRANDR = c"SDL_VIDEO_X11_XRANDR";
pub const _m_punpckhwd = _mm_unpackhi_pi16;
pub const SDL_ASSEMBLY_ROUTINES = 1;
pub const _m_pmullw = _mm_mullo_pi16;
pub const _MM_MASK_INVALID = 128;
pub const __DBL_MAX_10_EXP__ = 308;
pub const __LDBL_MIN__ = 0.000000;
pub const PRIoLEAST32 = c"o";
pub const __CLANG_ATOMIC_LLONG_LOCK_FREE = 2;
pub const __FSFILCNT64_T_TYPE = __UQUAD_TYPE;
pub const __GID_T_TYPE = __U32_TYPE;
pub const HAVE_LIBC = 1;
pub const SDL_HINT_RPI_VIDEO_LAYER = c"SDL_RPI_VIDEO_LAYER";
pub const SDL_TIMER_UNIX = 1;
pub const _DEFAULT_SOURCE = 1;
pub const _m_psrawi = _mm_srai_pi16;
pub const __FD_SETSIZE = 1024;
pub const __LDBL_DECIMAL_DIG__ = 21;
pub const _STRUCT_TIMEVAL = 1;
pub const __UINT_LEAST64_FMTX__ = c"lX";
pub const __clang_minor__ = 0;
pub const _MM_MASK_INEXACT = 4096;
pub const SDL_HINT_XINPUT_ENABLED = c"SDL_XINPUT_ENABLED";
pub const SDL_HINT_VIDEO_ALLOW_SCREENSAVER = c"SDL_VIDEO_ALLOW_SCREENSAVER";
pub const _IO_MAGIC_MASK = 4294901760;
pub const _MM_DENORMALS_ZERO_OFF = 0;
pub const INTMAX_MAX = if (@typeId(@typeOf(9223372036854775807)) == @import("builtin").TypeId.Pointer) @ptrCast(__INT64_C, 9223372036854775807) else if (@typeId(@typeOf(9223372036854775807)) == @import("builtin").TypeId.Int) @intToPtr(__INT64_C, 9223372036854775807) else __INT64_C(9223372036854775807);
pub const __SIZEOF_FLOAT128__ = 16;
pub const __CLOCKID_T_TYPE = __S32_TYPE;
pub const __UINT_FAST64_FMTo__ = c"lo";
pub const INT_FAST16_MIN = if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Pointer) @ptrCast(-c_long(9223372036854775807), -1) else if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Int) @intToPtr(-c_long(9223372036854775807), -1) else (-c_long(9223372036854775807))(-1);
pub const __DBL_MAX__ = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878;
pub const _m_from_int = _mm_cvtsi32_si64;
pub const __UINT64_FMTx__ = c"lx";
pub const P_tmpdir = c"/tmp";
pub const _m_psubw = _mm_sub_pi16;
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
pub const _m_paddw = _mm_add_pi16;
pub const HAVE_VSSCANF = 1;
pub const UINT_FAST8_MAX = 255;
pub const __UINTPTR_WIDTH__ = 64;
pub const _IO_off_t = __off_t;
pub const SDL_BUTTON_X1 = 4;
pub const HAVE_ATAN = 1;
pub const __time_t_defined = 1;
pub const __WNOTHREAD = 536870912;
pub const HAVE_ABS = 1;
pub const SCNi8 = c"hhi";
pub const SDL_INPUT_LINUXEV = 1;
pub const RW_SEEK_SET = 0;
pub const AUDIO_S32LSB = 32800;
pub const __k8 = 1;
pub const __DADDR_T_TYPE = __S32_TYPE;
pub const __UINT8_FMTx__ = c"hhx";
pub const __INTMAX_C_SUFFIX__ = L;
pub const __ORDER_LITTLE_ENDIAN__ = 1234;
pub const SDL_HINT_NO_SIGNAL_HANDLERS = c"SDL_NO_SIGNAL_HANDLERS";
pub const __INT16_FMTd__ = c"hd";
pub const __SUSECONDS_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 = 1;
pub const M_LN2 = 0.693147;
pub const _m_paddusw = _mm_adds_pu16;
pub const RW_SEEK_END = 2;
pub const __INTMAX_WIDTH__ = 64;
pub const _m_paddsw = _mm_adds_pi16;
pub const __INO64_T_TYPE = __UQUAD_TYPE;
pub const __CLANG_ATOMIC_BOOL_LOCK_FREE = 2;
pub const EXIT_FAILURE = 1;
pub const __USE_POSIX = 1;
pub const PRIX16 = c"X";
pub const __SIZE_FMTo__ = c"lo";
pub const SDL_HINT_TIMER_RESOLUTION = c"SDL_TIMER_RESOLUTION";
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
pub const SDL_MUTEX_MAXWAIT = if (@typeId(@typeOf(0)) == @import("builtin").TypeId.Pointer) @ptrCast(~Uint32, 0) else if (@typeId(@typeOf(0)) == @import("builtin").TypeId.Int) @intToPtr(~Uint32, 0) else (~Uint32)(0);
pub const __UINT_LEAST64_FMTu__ = c"lu";
pub const __GCC_ATOMIC_LONG_LOCK_FREE = 2;
pub const HAVE_STRNCASECMP = 1;
pub const SDL_OUT_BYTECAP = x;
pub const __INT_FAST64_FMTd__ = c"ld";
pub const __MATH_DECLARING_DOUBLE = 1;
pub const SDL_VIDEO_OPENGL_EGL = 1;
pub const INT_LEAST8_MIN = -128;
pub const _m_psrlqi = _mm_srli_si64;
pub const __STDC_NO_THREADS__ = 1;
pub const __CLANG_ATOMIC_LONG_LOCK_FREE = 2;
pub const __USING_NAMESPACE_STD = name;
pub const __GXX_ABI_VERSION = 1002;
pub const INTPTR_MIN = if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Pointer) @ptrCast(-c_long(9223372036854775807), -1) else if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Int) @intToPtr(-c_long(9223372036854775807), -1) else (-c_long(9223372036854775807))(-1);
pub const __FLT_MANT_DIG__ = 24;
pub const SDL_INIT_AUDIO = c_uint(16);
pub const __UINT_FAST64_FMTx__ = c"lx";
pub const __STDC__ = 1;
pub const __INTPTR_FMTd__ = c"ld";
pub const __GNUC_PATCHLEVEL__ = 1;
pub const __SIZE_WIDTH__ = 64;
pub const __UINT_LEAST8_FMTx__ = c"hhx";
pub const __INT_LEAST64_FMTi__ = c"li";
pub const AUDIO_S16SYS = AUDIO_S16LSB;
pub const SCNu8 = c"hhu";
pub const HAVE_MPROTECT = 1;
pub const HAVE_SEM_TIMEDWAIT = 1;
pub const M_LN10 = 2.302585;
pub const __INT_FAST16_MAX__ = 32767;
pub const _m_packsswb = _mm_packs_pi16;
pub const __CLANG_ATOMIC_CHAR16_T_LOCK_FREE = 2;
pub const HAVE_SA_SIGACTION = 1;
pub const HAVE_STRRCHR = 1;
pub const __have_pthread_attr_t = 1;
pub const _IO_SHOWPOINT = 256;
pub const _m_psllq = _mm_sll_si64;
pub const __INT_MAX__ = 2147483647;
pub const SDL_VIDEO_DRIVER_X11_XCURSOR = 1;
pub const __BLKSIZE_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __DBL_DENORM_MIN__ = 0.000000;
pub const _m_psrlq = _mm_srl_si64;
pub const _MM_FLUSH_ZERO_ON = 32768;
pub const __clang_major__ = 7;
pub const __FLT16_MANT_DIG__ = 11;
pub const _IO_fpos_t = _G_fpos_t;
pub const SDL_WINDOWPOS_UNDEFINED_MASK = c_uint(536805376);
pub const UINTPTR_MAX = c_ulong(18446744073709551615);
pub const DOMAIN = 1;
pub const SDL_MUTEX_TIMEDOUT = 1;
pub const HAVE_PUTENV = 1;
pub const _G_BUFSIZ = 8192;
pub const SDL_VIDEO_DRIVER_X11_XRANDR = 1;
pub const SDL_HINT_GAMECONTROLLERCONFIG = c"SDL_GAMECONTROLLERCONFIG";
pub const __FLT_DENORM_MIN__ = 0.000000;
pub const PRIXFAST8 = c"X";
pub const __BIG_ENDIAN = 4321;
pub const _m_pcmpgtd = _mm_cmpgt_pi32;
pub const __UINT_LEAST16_MAX__ = 65535;
pub const SIG_ATOMIC_MIN = if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Pointer) @ptrCast(-2147483647, -1) else if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Int) @intToPtr(-2147483647, -1) else (-2147483647)(-1);
pub const X_TLOSS = 14148475504056880.000000;
pub const __LDBL_HAS_DENORM__ = 1;
pub const _m_pextrw = _mm_extract_pi16;
pub const SDL_HINT_WINDOWS_NO_CLOSE_ON_ALT_F4 = c"SDL_WINDOWS_NO_CLOSE_ON_ALT_F4";
pub const __LDBL_HAS_QUIET_NAN__ = 1;
pub const _MM_EXCEPT_UNDERFLOW = 16;
pub const _m_pcmpeqb = _mm_cmpeq_pi8;
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
pub const SDL_HAPTIC_SPHERICAL = 2;
pub const SDL_HINT_EMSCRIPTEN_KEYBOARD_ELEMENT = c"SDL_EMSCRIPTEN_KEYBOARD_ELEMENT";
pub const _MM_EXCEPT_INVALID = 1;
pub const _IO_UNITBUF = 8192;
pub const _IO_UPPERCASE = 512;
pub const _m_psrad = _mm_sra_pi32;
pub const _MM_ROUND_TOWARD_ZERO = 24576;
pub const SDL_HINT_VIDEO_HIGHDPI_DISABLED = c"SDL_VIDEO_HIGHDPI_DISABLED";
pub const __UINT16_FMTu__ = c"hu";
pub const HAVE_GETENV = 1;
pub const __SIZE_FMTu__ = c"lu";
pub const __LDBL_MIN_EXP__ = -16381;
pub const __UINT_FAST32_FMTu__ = c"u";
pub const SIZE_MAX = c_ulong(18446744073709551615);
pub const __BYTE_ORDER = __LITTLE_ENDIAN;
pub const __clang_patchlevel__ = 0;
pub const SDL_HINT_MAC_BACKGROUND_APP = c"SDL_MAC_BACKGROUND_APP";
pub const _IOS_OUTPUT = 2;
pub const PRId16 = c"d";
pub const _m_maskmovq = _mm_maskmove_si64;
pub const PRIuLEAST32 = c"u";
pub const _MM_HINT_ET0 = 7;
pub const __LINUX__ = 1;
pub const EOF = -1;
pub const __FXSR__ = 1;
pub const SDL_PRIu64 = PRIu64;
pub const SDL_HAPTIC_INFINITY = c_uint(4294967295);
pub const _IOLBF = 1;
pub const SCNx8 = c"hhx";
pub const __UINT32_FMTx__ = c"x";
pub const HAVE_ALLOCA = 1;
pub const _IO_file_flags = _flags;
pub const PRIuLEAST16 = c"u";
pub const _m_paddb = _mm_add_pi8;
pub const __UINT32_FMTu__ = c"u";
pub const _IO_IN_BACKUP = 256;
pub const PRIX32 = c"X";
pub const WNOHANG = 1;
pub const SDL_HINT_VIDEO_X11_XINERAMA = c"SDL_VIDEO_X11_XINERAMA";
pub const __SIZEOF_PTHREAD_COND_T = 48;
pub const _IO_uid_t = __uid_t;
pub const __SIZE_MAX__ = c_ulong(18446744073709551615);
pub const SCNxLEAST32 = c"x";
pub const _IOS_TRUNC = 16;
pub const SDL_INIT_HAPTIC = c_uint(4096);
pub const __USE_ISOC11 = 1;
pub const __tune_k8__ = 1;
pub const UINT32_MAX = c_uint(4294967295);
pub const __x86_64__ = 1;
pub const SDL_MIX_MAXVOLUME = 128;
pub const __WORDSIZE_TIME64_COMPAT32 = 1;
pub const __UINT64_C_SUFFIX__ = UL;
pub const __UINTMAX_FMTx__ = c"lx";
pub const __INT_LEAST16_MAX__ = 32767;
pub const __clock_t_defined = 1;
pub const _IO_FLAGS2_NOTCANCEL = 2;
pub const _m_packssdw = _mm_packs_pi32;
pub const __UINT32_FMTo__ = c"o";
pub const _SYS_SELECT_H = 1;
pub const SDL_HINT_IME_INTERNAL_EDITING = c"SDL_IME_INTERNAL_EDITING";
pub const _IONBF = 2;
pub const _SYS_TYPES_H = 1;
pub const UINT64_MAX = if (@typeId(@typeOf(18446744073709551615)) == @import("builtin").TypeId.Pointer) @ptrCast(__UINT64_C, 18446744073709551615) else if (@typeId(@typeOf(18446744073709551615)) == @import("builtin").TypeId.Int) @intToPtr(__UINT64_C, 18446744073709551615) else __UINT64_C(18446744073709551615);
pub const __INT_LEAST16_TYPE__ = short;
pub const SCNi16 = c"hi";
pub const HAVE_STRTOLL = 1;
pub const AUDIO_S32 = AUDIO_S32LSB;
pub const _IO_DONT_CLOSE = 32768;
pub const _MM_FLUSH_ZERO_OFF = 0;
pub const SDL_HINT_VIDEO_WIN_D3DCOMPILER = c"SDL_VIDEO_WIN_D3DCOMPILER";
pub const HAVE_IBUS_IBUS_H = 1;
pub const SDL_AUDIO_ALLOW_CHANNELS_CHANGE = 4;
pub const __ORDER_BIG_ENDIAN__ = 4321;
pub const __LDBL_MIN_10_EXP__ = -4931;
pub const __SIZEOF_INT__ = 4;
pub const __USE_POSIX_IMPLICITLY = 1;
pub const INT8_MIN = -128;
pub const AUDIO_S32SYS = AUDIO_S32LSB;
pub const SDL_HINT_RENDER_DRIVER = c"SDL_RENDER_DRIVER";
pub const WCHAR_MAX = __WCHAR_MAX;
pub const _IO_ERR_SEEN = 32;
pub const _IO_size_t = size_t;
pub const __amd64 = 1;
pub const SDL_PREALLOC = 1;
pub const __OBJC_BOOL_IS_BOOL = 0;
pub const M_E = 2.718282;
pub const __LDBL_MAX_10_EXP__ = 4932;
pub const __SIZEOF_INT128__ = 16;
pub const HAVE_ATOF = 1;
pub const HAVE_SETJMP = 1;
pub const _IO_IS_FILEBUF = 8192;
pub const _m_paddsb = _mm_adds_pi8;
pub const HAVE_STRNCMP = 1;
pub const __linux = 1;
pub const HAVE_LIBUDEV_H = 1;
pub const SDL_HINT_WINRT_HANDLE_BACK_BUTTON = c"SDL_WINRT_HANDLE_BACK_BUTTON";
pub const __SIZEOF_PTHREAD_MUTEXATTR_T = 4;
pub const WCHAR_MIN = __WCHAR_MIN;
pub const _Mfloat_ = float;
pub const SDL_BUTTON_X2 = 5;
pub const __clang__ = 1;
pub const INT_FAST16_MAX = c_long(9223372036854775807);
pub const TLOSS = 5;
pub const _Mdouble_END_NAMESPACE = __END_NAMESPACE_STD;
pub const _CTYPE_H = 1;
pub const __LDBL_DIG__ = 18;
pub const __GCC_ATOMIC_CHAR32_T_LOCK_FREE = 2;
pub const _m_psrld = _mm_srl_pi32;
pub const M_PI = 3.141593;
pub const __UINT64_FMTo__ = c"lo";
pub const __INT_FAST32_FMTd__ = c"d";
pub const BIG_ENDIAN = __BIG_ENDIAN;
pub const __ATOMIC_ACQ_REL = 4;
pub const SDL_VIDEO_RENDER_OGL_ES2 = 1;
pub const _OLD_STDIO_MAGIC = 4206624768;
pub const SDL_assert_data = SDL_AssertData;
pub const SCNxFAST8 = c"hhx";
pub const HAVE_COS = 1;
pub const __OPENCL_MEMORY_SCOPE_SUB_GROUP = 4;
pub const _ENDIAN_H = 1;
pub const ____mbstate_t_defined = 1;
pub const __MATH_DECLARE_LDOUBLE = 1;
pub const __GLIBC__ = 2;
pub const UINT_FAST64_MAX = if (@typeId(@typeOf(18446744073709551615)) == @import("builtin").TypeId.Pointer) @ptrCast(__UINT64_C, 18446744073709551615) else if (@typeId(@typeOf(18446744073709551615)) == @import("builtin").TypeId.Int) @intToPtr(__UINT64_C, 18446744073709551615) else __UINT64_C(18446744073709551615);
pub const SDL_BlitSurface = SDL_UpperBlit;
pub const _IO_HAVE_ST_BLKSIZE = _G_HAVE_ST_BLKSIZE;
pub const SDL_HINT_VIDEO_X11_XVIDMODE = c"SDL_VIDEO_X11_XVIDMODE";
pub const __WORDSIZE = 64;
pub const __INT64_MAX__ = c_long(9223372036854775807);
pub const SDL_HINT_XINPUT_USE_OLD_JOYSTICK_MAPPING = c"SDL_XINPUT_USE_OLD_JOYSTICK_MAPPING";
pub const HAVE_SQRTF = 1;
pub const __INT_LEAST64_MAX__ = c_long(9223372036854775807);
pub const HAVE_INTTYPES_H = 1;
pub const __OPENCL_MEMORY_SCOPE_WORK_ITEM = 0;
pub const __FLT_HAS_DENORM__ = 1;
pub const __DECIMAL_DIG__ = __LDBL_DECIMAL_DIG__;
pub const _MM_MASK_MASK = 8064;
pub const __SYSCALL_SLONG_TYPE = __SLONGWORD_TYPE;
pub const __DEV_T_TYPE = __UQUAD_TYPE;
pub const __INT32_FMTi__ = c"i";
pub const __DBL_HAS_INFINITY__ = 1;
pub const _m_to_int64 = _mm_cvtm64_si64;
pub const __FINITE_MATH_ONLY__ = 0;
pub const _m_psadbw = _mm_sad_pu8;
pub const _m_psubd = _mm_sub_pi32;
pub const _IO_BUFSIZ = _G_BUFSIZ;
pub const __GCC_ATOMIC_TEST_AND_SET_TRUEVAL = 1;
pub const _STDC_PREDEF_H = 1;
pub const __FLT16_MAX_EXP__ = 15;
pub const SDL_VIDEO_DRIVER_X11_XINPUT2_SUPPORTS_MULTITOUCH = 1;
pub const __GNUC_VA_LIST = 1;
pub const EXIT_SUCCESS = 0;
pub const SDL_BIG_ENDIAN = 4321;
pub const SCNuLEAST16 = c"hu";
pub const __SIZEOF_FLOAT__ = 4;
pub const INT_FAST64_MAX = if (@typeId(@typeOf(9223372036854775807)) == @import("builtin").TypeId.Pointer) @ptrCast(__INT64_C, 9223372036854775807) else if (@typeId(@typeOf(9223372036854775807)) == @import("builtin").TypeId.Int) @intToPtr(__INT64_C, 9223372036854775807) else __INT64_C(9223372036854775807);
pub const __INT_LEAST32_FMTi__ = c"i";
pub const _m_psrlw = _mm_srl_pi16;
pub const __LDBL_EPSILON__ = 0.000000;
pub const __STDC_UTF_32__ = 1;
pub const __INT_LEAST32_FMTd__ = c"d";
pub const HAVE_STRDUP = 1;
pub const __SIG_ATOMIC_WIDTH__ = 32;
pub const __FD_ZERO_STOS = c"stosq";
pub const __UINT_FAST64_FMTX__ = c"lX";
pub const _IO_wint_t = wint_t;
pub const __SIZEOF_DOUBLE__ = 8;
pub const _m_to_int = _mm_cvtsi64_si32;
pub const LITTLE_ENDIAN = __LITTLE_ENDIAN;
pub const __GCC_ATOMIC_SHORT_LOCK_FREE = 2;
pub const SDL_AUDIO_DRIVER_ALSA = 1;
pub const _STDLIB_H = 1;
pub const SDL_AUDIO_DRIVER_SNDIO = 1;
pub const SIZEOF_VOIDP = 8;
pub const BYTE_ORDER = __BYTE_ORDER;
pub const SDL_HINT_ACCELEROMETER_AS_JOYSTICK = c"SDL_ACCELEROMETER_AS_JOYSTICK";
pub const __SIZE_FMTX__ = c"lX";
pub const SCNuFAST8 = c"hhu";
pub const SDL_RLEACCEL = 2;
pub const SDL_HINT_RENDER_DIRECT3D11_DEBUG = c"SDL_RENDER_DIRECT3D11_DEBUG";
pub const __ID_T_TYPE = __U32_TYPE;
pub const SDL_INOUT_Z_CAP = x;
pub const M_PI_2 = 1.570796;
pub const __USING_NAMESPACE_C99 = name;
pub const HAVE_MATH_H = 1;
pub const _BITS_TYPES_H = 1;
pub const _SYS_SYSMACROS_H = 1;
pub const SDL_ENABLE = 1;
pub const SDL_THREAD_PTHREAD = 1;
pub const _m_paddusb = _mm_adds_pu8;
pub const __STDC_IEC_559_COMPLEX__ = 1;
pub const __FSBLKCNT64_T_TYPE = __UQUAD_TYPE;
pub const SCNoLEAST32 = c"o";
pub const __DBL_MIN_EXP__ = -1021;
pub const __lldiv_t_defined = 1;
pub const __USECONDS_T_TYPE = __U32_TYPE;
pub const SDL_TEXTINPUTEVENT_TEXT_SIZE = 32;
pub const SDL_HINT_BMP_SAVE_LEGACY_FORMAT = c"SDL_BMP_SAVE_LEGACY_FORMAT";
pub const __PID_T_TYPE = __S32_TYPE;
pub const SDL_RWOPS_MEMORY_RO = c_uint(5);
pub const _Mdouble_BEGIN_NAMESPACE = __BEGIN_NAMESPACE_STD;
pub const _ALLOCA_H = 1;
pub const _m_punpcklwd = _mm_unpacklo_pi16;
pub const _IO_USER_BUF = 1;
pub const __DBL_HAS_DENORM__ = 1;
pub const __FLOAT128__ = 1;
pub const _MM_HINT_T2 = 1;
pub const SDL_MINOR_VERSION = 0;
pub const __FLT16_HAS_QUIET_NAN__ = 1;
pub const __ATOMIC_RELAXED = 0;
pub const __SIZEOF_SHORT__ = 2;
pub const ____FILE_defined = 1;
pub const __UINT16_FMTX__ = c"hX";
pub const __UINT_FAST16_MAX__ = 65535;
pub const SDL_HINT_VIDEO_WINDOW_SHARE_PIXEL_FORMAT = c"SDL_VIDEO_WINDOW_SHARE_PIXEL_FORMAT";
pub const __CLANG_ATOMIC_SHORT_LOCK_FREE = 2;
pub const PRIxLEAST8 = c"x";
pub const WEXITED = 4;
pub const __MODE_T_TYPE = __U32_TYPE;
pub const HAVE_SIGACTION = 1;
pub const PTRDIFF_MAX = c_long(9223372036854775807);
pub const __WINT_MAX__ = c_uint(4294967295);
pub const _STDIO_H = 1;
pub const __STDC_ISO_10646__ = c_long(201605);
pub const _m_psllqi = _mm_slli_si64;
pub const __BLKCNT64_T_TYPE = __SQUAD_TYPE;
pub const _MM_MASK_DIV_ZERO = 512;
pub const SDL_FILE = __FILE__;
pub const __STDC_HOSTED__ = 1;
pub const _MM_HINT_ET1 = 6;
pub const SDL_VIDEO_DRIVER_WAYLAND = 1;
pub const __INT_LEAST32_TYPE__ = int;
pub const __SCHAR_MAX__ = 127;
pub const __USE_POSIX2 = 1;
pub const _MM_EXCEPT_INEXACT = 32;
pub const HAVE_TAN = 1;
pub const __FLT16_MIN_EXP__ = -14;
pub const __USE_XOPEN2K = 1;
pub const __USE_FORTIFY_LEVEL = 0;
pub const __ELF__ = 1;
pub const SDL_ALPHA_TRANSPARENT = 0;
pub const SCNxLEAST16 = c"hx";
pub const _m_pslld = _mm_sll_pi32;
pub const HAVE_STRSTR = 1;
pub const SDL_VIDEO_DRIVER_X11_CONST_PARAM_XEXTADDDISPLAY = 1;
pub const __LDBL_MANT_DIG__ = 64;
pub const SDL_PRESSED = 1;
pub const SDL_INIT_VIDEO = c_uint(32);
pub const __USE_XOPEN2K8 = 1;
pub const __CLANG_ATOMIC_INT_LOCK_FREE = 2;
pub const SDL_AUDIO_ALLOW_FREQUENCY_CHANGE = 1;
pub const INT16_MIN = if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Pointer) @ptrCast(-32767, -1) else if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Int) @intToPtr(-32767, -1) else (-32767)(-1);
pub const PRIoFAST8 = c"o";
pub const __UINT64_FMTX__ = c"lX";
pub const HAVE_MEMCPY = 1;
pub const SDL_HINT_WINDOWS_DISABLE_THREAD_NAMING = c"SDL_WINDOWS_DISABLE_THREAD_NAMING";
pub const RW_SEEK_CUR = 1;
pub const __DBL_MANT_DIG__ = 53;
pub const HAVE_QSORT = 1;
pub const __INT_LEAST32_MAX__ = 2147483647;
pub const _IO_BAD_SEEN = 16384;
pub const _STRING_H = 1;
pub const SDL_AUDIO_ALLOW_FORMAT_CHANGE = 2;
pub const __OPENCL_MEMORY_SCOPE_WORK_GROUP = 1;
pub const __USE_ISOC95 = 1;
pub const PRIuFAST8 = c"u";
pub const _IOS_NOCREATE = 32;
pub const SDL_FUNCTION = __func__;
pub const __UID_T_TYPE = __U32_TYPE;
pub const HAVE_UNSETENV = 1;
pub const SDL_HAT_RIGHT = 2;
pub const __timespec_defined = 1;
pub const _m_pxor = _mm_xor_si64;
pub const __LITTLE_ENDIAN__ = 1;
pub const SCNiLEAST8 = c"hhi";
pub const HAVE_FLOOR = 1;
pub const _IO_LEFT = 2;
pub const PRIi16 = c"i";
pub const __SSE__ = 1;
pub const __FLT_HAS_QUIET_NAN__ = 1;
pub const __SIZEOF_SIZE_T__ = 8;
pub const HAVE_SYSCONF = 1;
pub const _MM_MASK_UNDERFLOW = 2048;
pub const __UINT_LEAST16_FMTo__ = c"ho";
pub const SCNxLEAST8 = c"hhx";
pub const SDL_HAT_DOWN = 4;
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
pub const SDL_RWOPS_MEMORY = c_uint(4);
pub const SDL_INPUT_LINUXKD = 1;
pub const _IO_CURRENTLY_PUTTING = 2048;
pub const HAVE_FSEEKO = 1;
pub const __SYSCALL_ULONG_TYPE = __ULONGWORD_TYPE;
pub const __warnattr = msg;
pub const _IO_SHOWPOS = 1024;
pub const _m_pminsw = _mm_min_pi16;
pub const __STD_TYPE = typedef;
pub const SDL_VIDEO_DRIVER_DUMMY = 1;
pub const _MM_ROUND_MASK = 24576;
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
pub const AUDIO_U16 = AUDIO_U16LSB;
pub const SDL_RWOPS_JNIFILE = c_uint(3);
pub const AUDIO_U16MSB = 4112;
pub const __FLT_DIG__ = 6;
pub const __INT16_MAX__ = 32767;
pub const __FLT_MAX_10_EXP__ = 38;
pub const _FEATURES_H = 1;
pub const SDL_MAX_LOG_MESSAGE = 4096;
pub const __CLANG_ATOMIC_POINTER_LOCK_FREE = 2;
pub const __UINTPTR_FMTX__ = c"lX";
pub const __UINT_LEAST16_FMTu__ = c"hu";
pub const __WINT_WIDTH__ = 32;
pub const SCNdLEAST16 = c"hd";
pub const SDL_HINT_RENDER_DIRECT3D_THREADSAFE = c"SDL_RENDER_DIRECT3D_THREADSAFE";
pub const HAVE_SIGNAL_H = 1;
pub const HAVE_BCOPY = 1;
pub const _m_pavgb = _mm_avg_pu8;
pub const __SHRT_MAX__ = 32767;
pub const __GCC_ATOMIC_BOOL_LOCK_FREE = 2;
pub const _MM_MASK_DENORM = 256;
pub const SCNd32 = c"d";
pub const __INT32_FMTd__ = c"d";
pub const SDL_HINT_MAC_CTRL_CLICK_EMULATE_RIGHT_CLICK = c"SDL_MAC_CTRL_CLICK_EMULATE_RIGHT_CLICK";
pub const HAVE_SIN = 1;
pub const __DBL_MIN__ = 0.000000;
pub const SDL_HINT_JOYSTICK_ALLOW_BACKGROUND_EVENTS = c"SDL_JOYSTICK_ALLOW_BACKGROUND_EVENTS";
pub const HAVE_FSEEKO64 = 1;
pub const __S32_TYPE = int;
pub const PRIiLEAST32 = c"i";
pub const __INTPTR_WIDTH__ = 64;
pub const __FLT16_MAX_10_EXP__ = 4;
pub const __INT_FAST32_TYPE__ = int;
pub const _IOS_BIN = 128;
pub const HAVE_DBUS_DBUS_H = 1;
pub const PRIiLEAST8 = c"i";
pub const _MM_EXCEPT_OVERFLOW = 8;
pub const SDL_VIDEO_OPENGL = 1;
pub const __UINT_FAST32_FMTX__ = c"X";
pub const _POSIX_SOURCE = 1;
pub const __LITTLE_ENDIAN = 1234;
pub const SDL_CACHELINE_SIZE = 128;
pub const HAVE_STRTOL = 1;
pub const __gnu_linux__ = 1;
pub const SDL_INIT_JOYSTICK = c_uint(512);
pub const __FILE_defined = 1;
pub const _G_HAVE_MMAP = 1;
pub const _m_psubb = _mm_sub_pi8;
pub const _IO_OCT = 32;
pub const SDL_HINT_WINDOW_FRAME_USABLE_WHILE_CURSOR_HIDDEN = c"SDL_WINDOW_FRAME_USABLE_WHILE_CURSOR_HIDDEN";
pub const __timer_t_defined = 1;
pub const __FLT16_HAS_INFINITY__ = 1;
pub const SDL_AUDIO_DRIVER_PULSEAUDIO = 1;
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 = 1;
pub const AUDIO_U16SYS = AUDIO_U16LSB;
pub const INT_FAST8_MIN = -128;
pub const __GCC_ATOMIC_INT_LOCK_FREE = 2;
pub const _m_pmulhw = _mm_mulhi_pi16;
pub const _IO_NO_READS = 4;
pub const _m_pcmpgtw = _mm_cmpgt_pi16;
pub const _INTTYPES_H = 1;
pub const AUDIO_S16LSB = 32784;
pub const __OPENCL_MEMORY_SCOPE_ALL_SVM_DEVICES = 3;
pub const __INT_FAST8_FMTd__ = c"hhd";
pub const __KEY_T_TYPE = __S32_TYPE;
pub const SEEK_SET = 0;
pub const __USE_POSIX199506 = 1;
pub const __INT32_TYPE__ = int;
pub const SCNiLEAST32 = c"i";
pub const SDL_HINT_VIDEO_MAC_FULLSCREEN_SPACES = c"SDL_VIDEO_MAC_FULLSCREEN_SPACES";
pub const __FLT_MIN__ = 0.000000;
pub const __INT8_FMTd__ = c"hhd";
pub const _IO_FIXED = 4096;
pub const _m_psrlwi = _mm_srli_pi16;
pub const INT64_MAX = if (@typeId(@typeOf(9223372036854775807)) == @import("builtin").TypeId.Pointer) @ptrCast(__INT64_C, 9223372036854775807) else if (@typeId(@typeOf(9223372036854775807)) == @import("builtin").TypeId.Int) @intToPtr(__INT64_C, 9223372036854775807) else __INT64_C(9223372036854775807);
pub const SDL_HINT_GRAB_KEYBOARD = c"SDL_GRAB_KEYBOARD";
pub const __FLT_MAX_EXP__ = 128;
pub const SDL_HINT_IDLE_TIMER_DISABLED = c"SDL_IOS_IDLE_TIMER_DISABLED";
pub const __INT_FAST64_FMTi__ = c"li";
pub const SDL_VIDEO_OPENGL_GLX = 1;
pub const __INT_LEAST8_FMTd__ = c"hhd";
pub const SDL_VIDEO_DRIVER_X11_XDBE = 1;
pub const __UINT_LEAST32_FMTX__ = c"X";
pub const __UINTMAX_MAX__ = c_ulong(18446744073709551615);
pub const _IO_ssize_t = __ssize_t;
pub const __UINT_FAST16_FMTo__ = c"ho";
pub const SDL_HAT_UP = 1;
pub const SDL_QUERY = -1;
pub const SDL_VIDEO_DRIVER_X11_XSHAPE = 1;
pub const PRIdLEAST8 = c"d";
pub const __LDBL_REDIR_DECL = name;
pub const __OFF64_T_TYPE = __SQUAD_TYPE;
pub const _m_packuswb = _mm_packs_pu16;
pub const _G_HAVE_MREMAP = 1;
pub const SDL_DONTFREE = 4;
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
pub const SDL_SWSURFACE = 0;
pub const __CHAR_BIT__ = 8;
pub const HAVE_STRINGS_H = 1;
pub const __INT16_FMTi__ = c"hi";
pub const SEEK_CUR = 1;
pub const __GNUC_MINOR__ = 2;
pub const INT_LEAST32_MIN = if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Pointer) @ptrCast(-2147483647, -1) else if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Int) @intToPtr(-2147483647, -1) else (-2147483647)(-1);
pub const __UINT_FAST32_MAX__ = c_uint(4294967295);
pub const _IO_DELETE_DONT_CLOSE = 64;
pub const _MM_HINT_T1 = 2;
pub const _m_from_int64 = _mm_cvtsi64_m64;
pub const NFDBITS = __NFDBITS;
pub const __FLT_EPSILON__ = 0.000000;
pub const INT_FAST32_MAX = c_long(9223372036854775807);
pub const __llvm__ = 1;
pub const HAVE_GCC_ATOMICS = 1;
pub const FPS_DEFAULT = 30;
pub const __UINT_FAST64_MAX__ = c_ulong(18446744073709551615);
pub const __INT_FAST32_FMTi__ = c"i";
pub const HAVE_MALLOC = 1;
pub const INT16_MAX = 32767;
pub const __FLT_HAS_INFINITY__ = 1;
pub const __FSWORD_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const NULL = if (@typeId(@typeOf(0)) == @import("builtin").TypeId.Pointer) @ptrCast([*]void, 0) else if (@typeId(@typeOf(0)) == @import("builtin").TypeId.Int) @intToPtr([*]void, 0) else ([*]void)(0);
pub const __OFF_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const SDL_HINT_WINRT_PRIVACY_POLICY_URL = c"SDL_WINRT_PRIVACY_POLICY_URL";
pub const _MM_EXCEPT_DENORM = 2;
pub const _IO_cleanup_region_end = _Doit;
pub const __GCC_ATOMIC_CHAR16_T_LOCK_FREE = 2;
pub const SDL2_FRAMERATE_SCOPE = @"extern";
pub const __UINT32_FMTX__ = c"X";
pub const FP_ILOGBNAN = if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Pointer) @ptrCast(-2147483647, -1) else if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Int) @intToPtr(-2147483647, -1) else (-2147483647)(-1);
pub const _Mdouble_ = double;
pub const UINT_LEAST8_MAX = 255;
pub const _IO_fpos64_t = _G_fpos64_t;
pub const __UINT32_C_SUFFIX__ = U;
pub const _m_punpckldq = _mm_unpacklo_pi32;
pub const __INT32_MAX__ = 2147483647;
pub const __GCC_ATOMIC_CHAR_LOCK_FREE = 2;
pub const _IO_FLAGS2_MMAP = 1;
pub const SDL_VIDEO_OPENGL_ES2 = 1;
pub const _m_pminub = _mm_min_pu8;
pub const _m_pavgw = _mm_avg_pu16;
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
pub const AUDIO_S8 = 32776;
pub const SDL_DISABLE = 0;
pub const HAVE_SQRT = 1;
pub const SDL_VIDEO_DRIVER_X11_XSCRNSAVER = 1;
pub const __INT16_TYPE__ = short;
pub const __SSE2_MATH__ = 1;
pub const UINT_LEAST16_MAX = 65535;
pub const UINT_LEAST32_MAX = c_uint(4294967295);
pub const SDL_HINT_ANDROID_APK_EXPANSION_MAIN_FILE_VERSION = c"SDL_ANDROID_APK_EXPANSION_MAIN_FILE_VERSION";
pub const __INT_FAST8_MAX__ = 127;
pub const _IO_va_list = _G_va_list;
pub const _MM_ROUND_NEAREST = 0;
pub const PRIXLEAST16 = c"X";
pub const __STDC_IEC_559__ = 1;
pub const __USE_ISOC99 = 1;
pub const SDL_BYTEORDER = __BYTE_ORDER;
pub const __INTPTR_MAX__ = c_long(9223372036854775807);
pub const HAVE_ATOI = 1;
pub const PRIi8 = c"i";
pub const SDL_INIT_TIMER = c_uint(1);
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
pub const AUDIO_S32MSB = 36896;
pub const __INT8_FMTi__ = c"hhi";
pub const L_tmpnam = 20;
pub const SDL_OUT_Z_CAP = x;
pub const SDL_IGNORE = 0;
pub const __FLT16_MIN_10_EXP__ = -13;
pub const SCNu16 = c"hu";
pub const SDL_OUT_CAP = x;
pub const _IOS_NOREPLACE = 64;
pub const WINT_MAX = c_uint(4294967295);
pub const ____gwchar_t_defined = 1;
pub const MATH_ERREXCEPT = 2;
pub const NAN = if (@typeId(@typeOf(c"")) == @import("builtin").TypeId.Pointer) @ptrCast(__builtin_nanf, c"") else if (@typeId(@typeOf(c"")) == @import("builtin").TypeId.Int) @intToPtr(__builtin_nanf, c"") else __builtin_nanf(c"");
pub const _MM_DENORMALS_ZERO_MASK = 64;
pub const SDL_USE_IME = 1;
pub const UINT_FAST16_MAX = c_ulong(18446744073709551615);
pub const _IOS_APPEND = 8;
pub const __INT_FAST64_MAX__ = c_long(9223372036854775807);
pub const HAVE_MEMORY_H = 1;
pub const __ATOMIC_SEQ_CST = 5;
pub const SDL_LOADSO_DLOPEN = 1;
pub const _m_pmaxsw = _mm_max_pi16;
pub const _m_por = _mm_or_si64;
pub const __SIZEOF_LONG_LONG__ = 8;
pub const HAVE_SINF = 1;
pub const SDL_stack_free = data;
pub const __GNUC_STDC_INLINE__ = 1;
pub const M_SQRT2 = 1.414214;
pub const __UINT8_MAX__ = 255;
pub const _STRINGS_H = 1;
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 = 1;
pub const SDL_RELEASED = 0;
pub const SDL_BUTTON_LEFT = 1;
pub const _m_ = _mm_;
pub const __UINT16_FMTo__ = c"ho";
pub const __OPENCL_MEMORY_SCOPE_DEVICE = 2;
pub const __SIZEOF_PTHREAD_CONDATTR_T = 4;
pub const INT_LEAST8_MAX = 127;
pub const SDL_HINT_MOUSE_RELATIVE_MODE_WARP = c"SDL_MOUSE_RELATIVE_MODE_WARP";
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
pub const _m_psubusw = _mm_subs_pu16;
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
pub const SDL_HINT_RENDER_OPENGL_SHADERS = c"SDL_RENDER_OPENGL_SHADERS";
pub const __unix__ = 1;
pub const __ATOMIC_CONSUME = 1;
pub const SDL_assert_state = SDL_AssertState;
pub const __LDBL_HAS_INFINITY__ = 1;
pub const _m_pcmpeqw = _mm_cmpeq_pi16;
pub const HAVE_POW = 1;
pub const __GNU_LIBRARY__ = 6;
pub const _MM_EXCEPT_MASK = 63;
pub const __FLT_MIN_10_EXP__ = -37;
pub const AUDIO_U8 = 8;
pub const SDL_HAPTIC_POLAR = 0;
pub const __UINTPTR_FMTo__ = c"lo";
pub const HAVE_FABS = 1;
pub const __INT_LEAST16_FMTd__ = c"hd";
pub const __UINTPTR_FMTx__ = c"lx";
pub const SDL_VIDEO_DRIVER_X11 = 1;
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 = 1;
pub const __INT_LEAST64_FMTd__ = c"ld";
pub const _m_pinsrw = _mm_insert_pi16;
pub const __attribute_alloc_size__ = params;
pub const PRIxFAST8 = c"x";
pub const __INT_LEAST8_MAX__ = 127;
pub const AUDIO_F32MSB = 37152;
pub const _IO_INTERNAL = 8;
pub const SCNo16 = c"ho";
pub const HAVE_MEMSET = 1;
pub const OVERFLOW = 3;
pub const PRIxLEAST16 = c"x";
pub const SDL_HINT_THREAD_STACK_SIZE = c"SDL_THREAD_STACK_SIZE";
pub const __GCC_ATOMIC_POINTER_LOCK_FREE = 2;
pub const SDL_HINT_MOUSE_FOCUS_CLICKTHROUGH = c"SDL_MOUSE_FOCUS_CLICKTHROUGH";
pub const INT8_MAX = 127;
pub const HAVE_FREE = 1;
pub const L_ctermid = 9;
pub const SDL_HINT_ANDROID_APK_EXPANSION_PATCH_FILE_VERSION = c"SDL_ANDROID_APK_EXPANSION_PATCH_FILE_VERSION";
pub const HAVE_STRCHR = 1;
pub const SCNx16 = c"hx";
pub const __UINT_FAST8_FMTx__ = c"hhx";
pub const HAVE_STRLEN = 1;
pub const SCNi32 = c"i";
pub const SDL_VIDEO_DRIVER_WAYLAND_QT_TOUCH = 1;
pub const UINT_FAST32_MAX = c_ulong(18446744073709551615);
pub const __SIZEOF_PTHREAD_RWLOCK_T = 56;
pub const SDL_PRIX64 = PRIX64;
pub const _MM_HINT_T0 = 3;
pub const __UINT16_FMTx__ = c"hx";
pub const SCNu32 = c"u";
pub const __UINTPTR_FMTu__ = c"lu";
pub const __UINT_LEAST16_FMTX__ = c"hX";
pub const SCNx32 = c"x";
pub const _m_pcmpgtb = _mm_cmpgt_pi8;
pub const __amd64__ = 1;
pub const __UINT_FAST32_FMTo__ = c"o";
pub const HAVE_REALLOC = 1;
pub const __linux__ = 1;
pub const SDL_WINDOWPOS_CENTERED_MASK = c_uint(805240832);
pub const HUGE = 340282346999999984391321947108527833088.000000;
pub const __LP64__ = 1;
pub const __SYSCALL_WORDSIZE = 64;
pub const __PTRDIFF_FMTi__ = c"li";
pub const SDL_INIT_NOPARACHUTE = c_uint(1048576);
pub const HAVE_STRTOULL = 1;
pub const _BITS_TYPESIZES_H = 1;
pub const HAVE_CEIL = 1;
pub const WCONTINUED = 8;
pub const PDP_ENDIAN = __PDP_ENDIAN;
pub const __SIZEOF_PTHREAD_BARRIERATTR_T = 4;
pub const _IO_HEX = 64;
pub const SDL_TEXTEDITINGEVENT_TEXT_SIZE = 32;
pub const __LONG_LONG_MAX__ = c_longlong(9223372036854775807);
pub const SDL_HINT_ALLOW_TOPMOST = c"SDL_ALLOW_TOPMOST";
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
pub const SDL_LINE = __LINE__;
pub const __CLANG_ATOMIC_CHAR32_T_LOCK_FREE = 2;
pub const WNOWAIT = 16777216;
pub const _m_punpckhbw = _mm_unpackhi_pi8;
pub const __UINTMAX_FMTX__ = c"lX";
pub const STDC_HEADERS = 1;
pub const _m_psubsw = _mm_subs_pi16;
pub const AUDIO_U16LSB = 16;
pub const HAVE_MEMMOVE = 1;
pub const _IO_FLAGS2_USER_WBUF = 8;
pub const __WCLONE = 2147483648;
pub const SDL_HINT_RENDER_VSYNC = c"SDL_RENDER_VSYNC";
pub const SDL_VIDEO_DRIVER_X11_SUPPORTS_GENERIC_EVENTS = 1;
pub const SDL_BUTTON_MIDDLE = 2;
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
pub const SDL_semaphore = struct_SDL_semaphore;
pub const SDL_BlitMap = struct_SDL_BlitMap;
pub const _SDL_Joystick = struct__SDL_Joystick;
pub const _SDL_GameController = struct__SDL_GameController;
pub const _SDL_Haptic = struct__SDL_Haptic;
