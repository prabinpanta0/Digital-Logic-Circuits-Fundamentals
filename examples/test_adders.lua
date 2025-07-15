-- Example: Testing adders
local dl = require("init")  -- Import everything through init.lua

print("=== ADDERS DEMO ===")
print()

-- Test full adder
print("Full Adder Truth Table:")
dl.full_adder.test_full_adder()

print("\n" .. string.rep("=", 40) .. "\n")

-- Test multi-bit adder
print("Multi-bit Adder:")
local a = {1, 1, 0, 1}  -- 1101 = 13
local b = {1, 0, 1, 0}  -- 0101 = 5
local result = dl.multi_bit_adder.multi_bit_adder(a, b)

dl.utils.print_binary_operation(a, b, result, "ADD")

print("\n" .. string.rep("=", 40) .. "\n")

-- Test with different numbers
print("Another Multi-bit Addition:")
local a2 = {1, 1, 1, 1}  -- 1111 = 15
local b2 = {1, 0, 0, 0}  -- 0001 = 1
local result2 = dl.multi_bit_adder.multi_bit_adder(a2, b2)

dl.utils.print_binary_operation(a2, b2, result2, "ADD")
