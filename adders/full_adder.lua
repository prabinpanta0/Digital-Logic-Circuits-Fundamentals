local gates = require("basic_gates.gates_2inputs")
local AND = gates.AND
local OR = gates.OR
local XOR = gates.XOR

local inputs = {
    {a=false, b=false, cin=false},
    {a=false, b=false, cin=true},
    {a=false, b=true,  cin=false},
    {a=false, b=true,  cin=true},
    {a=true,  b=false, cin=false},
    {a=true,  b=false, cin=true},
    {a=true,  b=true,  cin=false},
    {a=true,  b=true,  cin=true},
}

function full_adder_bool (a, b, cin)
    local sum1 = XOR(a, b)
    local carry1 = AND(a, b)
    local sum = XOR(sum1, cin)
    local carry2 = AND(sum1, cin)
    local carryout = OR (carry1, carry2)

    return sum, carryout
end

-- Test function for full adder (call this if you want to see the truth table)
function test_full_adder()
    for _, pair in ipairs(inputs) do
        local sum, carryout = full_adder_bool(pair.a, pair.b, pair.cin)
        print(pair.a, pair.b, pair.cin, "=>", "Sum:", sum, "Carry:", carryout)
    end
end

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

return {
    full_adder = full_adder,
    full_adder_bool = full_adder_bool,
    test_full_adder = test_full_adder
}

