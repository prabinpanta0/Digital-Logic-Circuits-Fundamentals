local gates = require("gates_2inputs")
local XOR = gates.XOR
local AND = gates.AND

-- Defining half adder
function half_adder(a, b)
    local sum = XOR(a, b)
    local carry = AND(a, b)
    return sum, carry
end

inputs ={
    {a = false, b = false},
	{a = false, b = true},
	{a = true, b = false},
	{a = true, b = true},
}

for _, pair in ipairs(inputs) do
    local sum, carry = half_adder(pair.a, pair.b)
    print(pair.a, pair.b, "=>", "Sum:", sum, "Carry:", carry)
end
