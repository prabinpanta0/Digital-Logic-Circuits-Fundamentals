-- Display utilities for binary operations
local display_utils = {}

-- Convert binary array to string (MSB first)
function display_utils.binary_to_string(binary_array)
    local result = ""
    for i = #binary_array, 1, -1 do
        result = result .. tostring(binary_array[i])
    end
    return result
end

-- Convert binary array to decimal
function display_utils.binary_to_decimal(binary_array)
    local decimal = 0
    for i = 1, #binary_array do
        decimal = decimal + binary_array[i] * (2 ^ (i - 1))
    end
    return decimal
end

-- Convert decimal to binary array (LSB first)
function display_utils.decimal_to_binary(decimal, bits)
    local binary = {}
    bits = bits or 8  -- default 8 bits
    
    for i = 1, bits do
        binary[i] = decimal % 2
        decimal = math.floor(decimal / 2)
    end
    
    return binary
end

-- Pretty print binary operation
function display_utils.print_binary_operation(a, b, result, operation)
    print(string.format("%-10s: %s (%d)", "A", display_utils.binary_to_string(a), display_utils.binary_to_decimal(a)))
    print(string.format("%-10s: %s (%d)", "B", display_utils.binary_to_string(b), display_utils.binary_to_decimal(b)))
    print(string.format("%-10s: %s", "Operation", operation))
    print(string.format("%-10s: %s (%d)", "Result", display_utils.binary_to_string(result), display_utils.binary_to_decimal(result)))
    print(string.rep("-", 30))
end

-- Print truth table header
function display_utils.print_truth_table_header(inputs)
    local header = "| "
    for _, input in ipairs(inputs) do
        header = header .. input .. " | "
    end
    header = header .. "Output |"
    print(header)
    print(string.rep("-", #header))
end

-- Print truth table row
function display_utils.print_truth_table_row(values, output)
    local row = "| "
    for _, value in ipairs(values) do
        row = row .. (value and "T" or "F") .. " | "
    end
    row = row .. (output and "T" or "F") .. " |"
    print(row)
end

return display_utils
