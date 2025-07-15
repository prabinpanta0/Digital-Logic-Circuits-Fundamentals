--[[
	Practicing Gates with 3 inputs
]]--

-- Array of inputs (truth table)
inputs = {
    {a = false, b = false, c = false},
    {a = false, b = false, c = true},
    {a = false, b = true, c = false},
    {a = false, b = true, c = true},
    
    {a = true, b = true, c = false},
    {a = true, b = false, c = false},
    {a = true, b = false, c = true},
    {a = true, b = true, c = true},
}

-- AND Gates
function AND(a, b, c)
    if ((a == true and b == true) and c == true) then
        return true
    else
        return false
    end
end

-- OR Gates
function OR(a, b, c)
    if ((a == true or b == true) or c == true) then
        return true
    else
        return false
    end
end

-- XOR Gates
function XOR(a, b, c)
    if ((a ~= b) ~=c) then
        return true
    else
        return false
    end
end


for i, pair in ipairs(inputs)
do
	local a, b, c = pair.a, pair.b, pair.c
	
	print ("Input: ", a, b, c)
	print ("AND: ", AND(a,b,c))
    print ("OR: ", OR(a,b,c))
    print ("XOR: ", XOR(a,b,c))
end