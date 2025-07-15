-- import
local gates = require("gates_2inputs")
local AND = gates.AND
local OR = gates.OR
local XOR = gates.XOR

-- full adder
function full_adder(a, b, cin)
    -- convert 1/0 to true and false
    local abool = (a == 1)
    local bbool = (b == 1)
    local cbool = (cin == 1)

    local sum1 = XOR(abool, bbool)
    local carry1 = AND(abool, bbool)
    local sum_bool = XOR(sum1, cbool)
    local carry2 = AND(sum1, cbool)
    local carry_bool = OR(carry1, carry2)
    
    -- convert bool to 1/0
    local sum = sum_bool and 1 or 0
    local carry = carry_bool and 1 or 0

    return sum, carry
end

function multi_bit_adder(a, b)
    local result = {}
    local carry = 0
    local n = math.max(#a, #b)
    
    for i = 1, n do
        local a_bit = a[i] or 0
        local b_bit = b[i] or 0
        local sum
        sum, carry = full_adder(a_bit, b_bit, carry)
        table.insert(result, sum)
    end
        if carry == 1 then
            table.insert(result, 1)
        end
    return result
end

function multi_bit_multi(a, b)
    local final_result = {0}

    local shifted_a = {}
    for i = 1, #a do
        shifted_a[i] = a[i]
    end

    for i = 1, #b do
        if b[i] == 1 then
            final_result = multi_bit_adder(final_result, shifted_a)
        end
        
        table.insert(shifted_a, 1, 0)
    end
    return final_result
end

-- LSB is at index 1
local a = {0, 1, 0, 1} -- 1010 -> 10
local b = {1, 0, 1, 0} -- 0101 -> 5

local result = multi_bit_multi(a, b)

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