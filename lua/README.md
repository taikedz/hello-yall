On Ubuntu and WSL/Ubuntu, a number of Lua versions are available. Lua is meant for embedding, so installing a Lua package typically also installs headers for C programs to embed them, and each version comes with runtime and standard lib extras and features, some of which deprectae some desirable behaviours - hence all the versions.

The latest available in Ubuntu 24.04 is Lua 5.4:

    sudo apt update && sudo apt install lua5.4

This also installs a CLI interpreter to use Lua as a straight-up scripting language.

---


Run it

    lua hey.lua Alex Sam
