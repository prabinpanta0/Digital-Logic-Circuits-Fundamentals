local gates = require("gates_2inputs")
local AND = gates.AND
local OR = gates.OR
local NOT = gates.NOT
local XOR = gates.XOR

local a = {0, 1, 0, 1} -- 1010 = 10
local b = {1, 1, 0, 0} -- 0011 = 3

-- Full adder
function full_adder(a, b, cin)
    -- convert to true and false
    local abit = (a == 1)
    local bbit = (b == 1)
    local cbit = (cin == 1)

    -- logic of full adder
    local sum1 = XOR(abit, bbit)
    local carry1 = AND(abit, bbit)
    local sum_bool = XOR(sum1, cbit)
    local carry2 = AND(sum1, cbit)
    local carry_bool = OR(carry1, carry2)

    -- convert back to 0 and 1
    local sum = sum_bool and 1 or 0
    local carryout = carry_bool and 1 or 0

    return sum, carryout
end

function multi_bit_sub(a, b)
    local result = {}
    local carry = 1
    local n = math.max(#a, #b)

    for i = 1, n do
        local a_bit = a[i] or 0
        local b_bit_bef = b[i] or 0
        local b_bool = NOT(b_bit_bef == 1)
        local b_bit = b_bool and 1 or 0

        local sum, carryout = full_adder(a_bit, b_bit, carry)

        result[i] = sum
        carry = carryout
    end

    -- The final carryout is discarded in subtraction

    return result
end



local result = multi_bit_sub(a, b)

print("a: ")
for i = #a, 1, -1 do
    io.write(a[i])
end

print("\n")
print("b: ")
for i = #b, 1, -1 do
    io.write(b[i])
end

print("\n")
print("result: ")
for i = #result, 1, -1 do
    io.write(result[i])
end

print()