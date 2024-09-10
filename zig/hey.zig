const std = @import("std");
const hello = @import("stuff/hello.zig");

const stdout = std.io.getStdOut().writer();


pub fn main() !void {

    // We need to manage the allocator in the very space we are going to call its free/destroy from
    // we can't confine it easily to another function, so it feels a little cluttered ...
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    const allo = gpa.allocator();
    defer _ = gpa.deinit();
    // ^--- We defer de-init operation to end of scope - the "}" of the current block
    // We do this next to where we create the allocator so that it's kept neatly all together

    const args = try std.process.argsAlloc(allo);
    defer std.process.argsFree(allo, args);

    if(args.len <= 1) {
        try stdout.print("Please specify arguments!\n", .{});
        std.process.exit(1);
    }

    var phrase:[]u8 = undefined;

    for(args[1..]) |name| {
        // Because hello.greet creates the data and chucks it back out, we pass in
        //   the allocator, so that we can retain responsibility for freeing
        phrase = try hello.greet(allo, name);
        defer allo.free(phrase);

        try stdout.print("{s}", .{phrase});
    }
}

