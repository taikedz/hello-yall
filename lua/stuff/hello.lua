-- This is a global variable that will go into the global space
stuff_hello = {}

-- This implements a method onto the stuff_hello object/table
--   for namespacing
function stuff_hello.greet(name)
    return "Hello, "..name.."!"
end

