local GATES = require("basic_gates.gates_2inputs")
local AND = GATES.AND
local OR = GATES.OR
local XOR = GATES.XOR
local adder = require("adders.full_adder")
local full_adder = adder.full_adder

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
        local sum
        sum, carry = full_adder(a_bit, b_bit, carry)
        table.insert(result, sum)
    end
        if carry == 1 then
            table.insert(result, 1)
        end
    return result
end


function test_multi_bit_addt()
    local a = {1, 1, 0, 1}
    local b = {1, 1, 1, 0}

    local result = multi_bit_adder(a, b)

    for i = #result, 1, -1 do
        io.write(result[i])
    end

    print()

end

return {
    multi_bit_adder = multi_bit_adder,
    test_full_adder = test_multi_bit_addt
}