-- import
local gates = require("basic_gates.gates_2inputs")
local AND = gates.AND
local OR = gates.OR
local XOR = gates.XOR
local adder = require("adders.full_adder")
local full_adder = adder.full_adder
local multi_addr = require("arithmetic.multi-bit_adder")
local multi_bit_adder = multi_addr.multi_bit_adder



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

function test_multi_bit_mult()
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
end

return{
    multi_bit_multi = multi_bit_multi,
    test_multi_bit_mult = test_multi_bit_mult
}