-- Example: Testing basic gates
local dl = require("init")  -- Import everything through init.lua

print("=== BASIC GATES DEMO ===")
print()

-- Test 2-input gates
print("2-Input Gates:")
dl.gates_2inputs.test_gates_2inputs()

print("\n" .. string.rep("=", 40) .. "\n")

-- Test 3-input gates
print("3-Input Gates:")
dl.gates_3inputs.test_gates_3inputs()

print("\n" .. string.rep("=", 40) .. "\n")

-- Manual gate testing with display utils
print("Manual Gate Testing:")
local a, b = true, false
print(string.format("A=%s, B=%s", tostring(a), tostring(b)))
print(string.format("AND: %s", tostring(dl.AND(a, b))))
print(string.format("OR:  %s", tostring(dl.OR(a, b))))
print(string.format("XOR: %s", tostring(dl.XOR(a, b))))
print(string.format("NOT A: %s", tostring(dl.NOT(a))))
