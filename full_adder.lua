local gates = require("gates_2inputs")
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

function full_adder (a, b, cin)
    local sum1 = XOR(a, b)
    local carry1 = AND(a, b)
    local sum = XOR(sum1, cin)
    local carry2 = AND(sum1, cin)
    local carryout = OR (carry1, carry2)

    return sum, carryout
end

for _, pair in ipairs(inputs) do
    local sum, carryout = full_adder(pair.a, pair.b, pair.cin)
    print(pair.a, pair.b, pair.cin, "=>", "Sum:", sum, "Carry:", carryout)
end

