--[[
	Practicing Gates with 2 inputs
]]--
-- AND Gate
function AND(a,b)
	if a == true and b == true then
		return true
	else
		return false
	end
end

-- OR Gate
function OR(a,b)
	if a == true or b == true then
		return true
	else
		return false
	end
end

-- NOT Gate
function NOT(a)
	if a == true then
		return false
	else
		return true
	end
end

-- XOR Gate
function XOR(a, b)
	if a ~=b then
		return true
	else
		return false
	end
end

-- Testing
function test_gates_2inputs()
	inputs = {
		{a = false, b = false},
		{a = false, b = true},
		{a = true, b = false},
		{a = true, b = true},
	}

	for i, pair in ipairs(inputs)
	do
		local a, b = pair.a, pair.b
		
		print ("Input: ", a, b)
		print ("AND: ", AND(a,b))
		print ("OR: ", OR(a, b))
		print ("XOR: ", XOR(a,b))
		print ("NOT A: ", NOT(a))
		print ("NOT B: ", NOT(b))
	end
end

return {
    AND = AND,
    OR = OR,
    NOT = NOT,
    XOR = XOR
}