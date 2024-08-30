-- Executes a file , any non-local symbols enter the global space
dofile("stuff/hello.lua")

if #arg == 0 then
    print("Please supply arguments")
    os.exit(1)
end

for _,name in ipairs(arg) do
    phrase = stuff_hello.greet(name)
    print(phrase)
end

