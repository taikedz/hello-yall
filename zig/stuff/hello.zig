const std = @import("std");

// If a method is going to allocate memory to return data,
//  it must accept an allocator - this way the calling code is
//  in control of memory cleanup.
// By convention, it is the _first_ argument of the function
pub fn greet(allo:std.mem.Allocator, name:[]const u8) std.fmt.AllocPrintError![]u8 {
    // Pass-down the allocator. All standard library functions which need
    //  heap space will take an allocator, instead of using their own
    const phrase = try std.fmt.allocPrint(
        allo,
        "Hello, {s}!\n",
        .{name}
    );

    return phrase;
}

