const std = @import("std");

pub fn greet(name:[]const u8, allo:std.mem.Allocator) std.fmt.AllocPrintError![]u8 {
    // Pass-down an allocator. All standard library functions which need
    //  heap space will take an allocator, instead of using their own
    const phrase = try std.fmt.allocPrint(
        allo,
        "Hello, {s}!\n",
        .{name}
    );

    return phrase;
}

