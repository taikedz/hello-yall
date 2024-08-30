Install zig from the website: <https://ziglang.org/learn/getting-started/#installing-zig>

Alternatievly, copy and run this script:

```sh
# The script
curl https://raw.githubusercontent.com/taikedz/handy-scripts/master/bin/install-zig.sh -o install-zig.sh

# Run it

# Install latest - usually a development build - as `zig`
./install-zig.sh

# Install a command `zig-0.13.0`
./install-zig.sh 0.13.0

# Install a command replacing current `zig` command
./install-zig.sh 0.13.0 zig
```

---

Build it

    zig build-exe hey.zig

Run it

    ./hey
    ./hey Joe Chris


Build and run at the same time:

    zig run hey.zig -- Joe Chris
