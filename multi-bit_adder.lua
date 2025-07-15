local GATES = require("gates_2inputs")
local AND = GATES.AND
local OR = GATES.OR
local XOR = GATES.XOR

--[[
    - Logic for full adder
]] --

function full_adder(a, b, cin)
    -- convert numeric bits to boolean
    local abit = (a == 1)
    local bbit = (b == 1)
    local cbit = (cin == 1)

    local sum1 = XOR(abit, bbit)
    local carry1 = AND(abit, bbit)
    local sum_bool = XOR(sum1, cbit)
    local carry2 = AND(sum1, cbit)
    local carry_bool = OR(carry1, carry2)

    -- convert boolean results back to 0/1
    local sum = sum_bool and 1 or 0
    local carryout = carry_bool and 1 or 0

    return sum, carryout
end

--[[
    - Logic of multi-bit adder
]] --

function multi_bit_adder(a, b)
    local result = {}
    local carry = 0
    local n = math.max(#a, #b)

    for i = 1, n do
        local a_bit = a[i] or 0
        local b_bit = b[i] or 0

        local sum, new_carry = full_adder(a_bit, b_bit, carry)
        result[i] = sum
        carry = new_carry
    end

    -- add final carry if it's 1
    if carry == 1 then
        table.insert(result, 1)
    end

    return (result)
end

local a = {1, 1, 0, 1}
local b = {1, 1, 1, 0}

local result = multi_bit_adder(a, b)

for i = #result, 1, -1 do
    io.write(result[i])
end

print()
