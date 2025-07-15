-- Example: Testing multiplication
local dl = require("init")  -- Import everything through init.lua

print("=== MULTIPLICATION DEMO ===")
print()

-- Test multi-bit multiplication
print("Multi-bit Multiplication:")
local a = {0, 1, 0, 1}  -- 1010 = 10
local b = {1, 0, 1, 0}  -- 0101 = 5
local result = dl.multi_bit_multiplier.multi_bit_multi(a, b)

dl.utils.print_binary_operation(a, b, result, "MULTIPLY")

print("\n" .. string.rep("=", 40) .. "\n")

-- Test with different numbers
print("Another Multiplication:")
local a2 = {1, 1, 0, 0}  -- 0011 = 3
local b2 = {0, 1, 0, 0}  -- 0010 = 2
local result2 = dl.multi_bit_multiplier.multi_bit_multi(a2, b2)

dl.utils.print_binary_operation(a2, b2, result2, "MULTIPLY")

print("\n" .. string.rep("=", 40) .. "\n")

-- Test larger numbers
print("Larger Numbers:")
local a3 = {1, 1, 1, 1}  -- 1111 = 15
local b3 = {1, 0, 0, 0}  -- 0001 = 1
local result3 = dl.multi_bit_multiplier.multi_bit_multi(a3, b3)

dl.utils.print_binary_operation(a3, b3, result3, "MULTIPLY")
