local gates = require("gates_2inputs")
local AND = gates.AND
local OR = gates.OR
local NOT = gates.NOT
local XOR = gates.XOR
local adder = require("full_adder")
local full_adder = adder.full_adder



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


function test_multi_bit_sub()
    

    local a = {0, 1, 0, 1} -- 1010 = 10
    local b = {1, 1, 0, 0} -- 0011 = 3


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
end

return {
    test_multi_bit_sub = test_multi_bit_sub,
    multi_bit_sub = multi_bit_sub
}