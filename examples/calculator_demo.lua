-- Simple Calculator Demo
local dl = require("init")

print("=== SIMPLE BINARY CALCULATOR ===")
print()

-- Function to get user input for binary numbers
function get_binary_input(prompt)
    print(prompt)
    print("Enter binary digits separated by spaces (LSB first):")
    print("Example: 1 0 1 0 for binary 0101")
    
    -- For demo purposes, let's use predefined values
    -- In real implementation, you'd use io.read()
    return {1, 0, 1, 0}  -- Default to 0101 = 5
end

-- Calculator menu
function calculator_menu()
    print("Binary Calculator Operations:")
    print("1. Addition")
    print("2. Multiplication")
    print("3. Test All Operations")
    print("4. Exit")
    print()
end

-- Demo function
function demo_calculator()
    print("Demo Mode - Using predefined values")
    print()
    
    -- Demo values
    local num1 = {1, 0, 1, 0}  -- 0101 = 5
    local num2 = {1, 1, 0, 0}  -- 0011 = 3
    
    print("Number 1: " .. dl.utils.binary_to_string(num1) .. " (decimal: " .. dl.utils.binary_to_decimal(num1) .. ")")
    print("Number 2: " .. dl.utils.binary_to_string(num2) .. " (decimal: " .. dl.utils.binary_to_decimal(num2) .. ")")
    print()
    
    -- Addition
    print("ADDITION:")
    local add_result = dl.multi_bit_adder.multi_bit_adder(num1, num2)
    dl.utils.print_binary_operation(num1, num2, add_result, "ADD")
    
    -- Multiplication
    print("MULTIPLICATION:")
    local mult_result = dl.multi_bit_multiplier.multi_bit_multi(num1, num2)
    dl.utils.print_binary_operation(num1, num2, mult_result, "MULTIPLY")
end

-- Run the demo
calculator_menu()
demo_calculator()

print("\nTo make this interactive, you can modify the get_binary_input function")
print("to read from user input using io.read()")
